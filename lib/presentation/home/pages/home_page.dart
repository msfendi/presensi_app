import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../data/datasource/auth_local_datasource.dart';
import '../../../data/datasource/face_remote_datasource.dart';
import '../../../data/datasource/presensi_remote_datasource.dart';
import '../../../data/models/responses/presensi_response_model.dart';
import '../../auth/pages/login_page.dart';
import '../../check_out/pages/recognition_checkout_page.dart';
import '../../check_out/widgets/activity_card.dart';
import '../../check_out/widgets/checkout_button.dart';
import '../../check_out/widgets/time_card.dart';
import '../../presensi/bloc/presensi/presensi_bloc.dart';
import '../bloc/get_position/get_position_bloc.dart';
import '../widgets/alert_dialog.dart';
import '../widgets/checkin_button.dart';
import 'recognition_screen.dart';
import 'register_face.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final tickerProvider = createTicker((elapsed) => setState(() {}));
  bool isCheckIn = false;
  late bool isFaceData;

  void cekLogin() async {
    final isAuth = await AuthLocalDatasource().isAuth();
    if (isAuth == false) {
      // print('belum login');
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    } else {
      cekFaceData();
      context.read<PresensiBloc>().add(const PresensiEvent.getPresensi());
      context
          .read<GetPositionBloc>()
          .add(const GetPositionEvent.getStatusLocation());
      context
          .read<GetPositionBloc>()
          .add(const GetPositionEvent.getCurrentLocation());
    }
  }

  // cek face data
  void cekFaceData() async {
    isFaceData = await FaceRemoteDatasource().isFaceData();
    if (!isFaceData) {
      showRegisterFaceDialogue('Wajah anda belum terdaftar');
    } else {
      checkAttendanceToday();
    }
  }

  void checkAttendanceToday() async {
    isCheckIn = await PresensiRemoteDatasource().isCheckIn();
    if (!isCheckIn) {
      showCheckAttendanceDialogue(
          'Anda Belum Presensi Hari ini, Silahkan lakukan Presensi Terlebih Dahulu');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    cekLogin();
    tickerProvider.start();
    super.initState();
  }

  @override
  void dispose() {
    tickerProvider.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          children: [
            // Bagian atas: Judul Time Clock
            Text(
              "Time Clock",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),

            // Bagian Current Location dan waktu
            _buildCurrentLocationAndTime(context),
            SizedBox(height: 20),

            // Bagian My Day Activity
            _buildMyDayActivity(context),
            SizedBox(height: 20),

            // Tombol Check-Out dengan shadow

            isCheckIn
                ? _buildCheckOutButton(context)
                : _buildCheckInButton(context),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  Widget _buildCurrentLocationAndTime(BuildContext context) {
    return BlocBuilder<GetPositionBloc, GetPositionState>(
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () {
              return TimeCard(
                location: "Capital Icon",
                time: DateFormat('HH:mm a').format(DateTime.now()),
              );
            },
            loading: () {
              return TimeCard(
                location: "Capital Icon",
                time: "Loading...",
              );
            },
            loadedPosition: (position) => TimeCard(
                  location: "${position.latitude}, ${position.longitude}",
                  time: DateFormat('HH:mm:ss').format(DateTime.now()),
                ),
            error: (message) {
              return TimeCard(
                location: "Capital Icon",
                time: DateFormat('HH:mm:ss').format(DateTime.now()),
              );
            });
      },
    );
  }

  Widget _buildMyDayActivity(BuildContext context) {
    return BlocBuilder<PresensiBloc, PresensiState>(
      builder: (context, state) {
        return state.maybeWhen(orElse: () {
          return ActivityCard(
            waktuMasuk: "00:00 AM",
            waktuPulang: "00:00 PM",
          );
        }, loading: () {
          return ActivityCard(
            waktuMasuk: "Loading...",
            waktuPulang: "Loading...",
          );
        }, loaded: (presensi) {
          final riwayat = presensi.presensi;
          final waktu = riwayat.firstWhere(
            (element) => element.isHariIni! == true,
            orElse: () => Presensi(),
          );
          return ActivityCard(
            waktuMasuk: waktu.masuk ?? "Belum Masuk",
            waktuPulang:
                waktu.pulang?.isEmpty ?? true ? "Belum Pulang" : waktu.pulang!,
          );
        }, error: (message) {
          return ActivityCard(
            waktuMasuk: "Error: $message",
            waktuPulang: "Error: $message",
          );
        });
      },
    );
  }

  Widget _buildCheckInButton(BuildContext context) {
    return CheckInButton(
      onTap: () => isFaceData ?  Navigator.push(context,
          MaterialPageRoute(builder: (context) => RecognitionScreen())) : cekFaceData(),
    );
  }

  Widget _buildCheckOutButton(BuildContext context) {
    return CheckoutButton(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecognitionCheckoutPage(),
          ),
        );
      },
    );
  }

  showRegisterFaceDialogue(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Perhatian", textAlign: TextAlign.center),
        alignment: Alignment.center,
        content: SizedBox(
          height: 130,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                message,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterFace()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(200, 40)),
                  child: const Text("Daftarkan Wajah"))
            ],
          ),
        ),
        contentPadding: EdgeInsets.zero,
      ),
    );
  }

  showCheckAttendanceDialogue(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertBoxDialog(
        message: message,
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => RecognitionScreen())),
      ),
    );
  }
}
