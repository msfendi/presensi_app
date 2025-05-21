import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:presensi_app/data/datasource/face_remote_datasource.dart';
import 'package:presensi_app/data/datasource/presensi_remote_datasource.dart';
import 'package:presensi_app/presentation/home/bloc/get_position/get_position_bloc.dart';
import 'package:presensi_app/presentation/home/pages/register_face.dart';
import 'package:presensi_app/presentation/home/widgets/alert_dialog.dart';
// import 'package:presensi_app/presentation/home/pages/camera_page.dart';

import '../../../data/datasource/auth_local_datasource.dart';
import '../../auth/pages/login_page.dart';
// import '../bloc/face_scanner/face_scanner_bloc.dart';
import '../widgets/temp_animated_button.dart';
import '../widgets/checkin_button.dart';
import 'recognition_screen.dart';

class CheckinPage extends StatefulWidget {
  const CheckinPage({super.key});

  @override
  State<CheckinPage> createState() => _CheckinPageState();
}

class _CheckinPageState extends State<CheckinPage>
    with SingleTickerProviderStateMixin {
  late final tickerProvider = createTicker((elapsed) => setState(() {}));

  void cekLogin() async {
    final isAuth = await AuthLocalDatasource().isAuth();
    if (!isAuth) {
      print('belum login');
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    } else {
      cekFaceData();
      checkAttendanceToday();
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
    final isFaceData = await FaceRemoteDatasource().isFaceData();
    if (!isFaceData) {
      showRegisterFaceDialogue('Wajah anda belum terdaftar');
    }
  }

  void checkAttendanceToday() async {
    final isCheckIn = await PresensiRemoteDatasource().isCheckIn();
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Bagian atas: Welcome, waktu, dan tombol check-in
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildHeaderSection(context),
                  _buildCheckInSection(context),
                ],
              ),
            ),
          ),
        ),
        // Bagian bawah: Peta lokasi
        _buildMapsLocation(context),
      ],
    );
  }

  Widget _buildHeaderSection(BuildContext context) {
    return Column(
      children: [
        Text(
          "Welcome To Attendify!",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          DateFormat('HH:mm a').format(DateTime.now()),
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          DateFormat('EEEE, d MMM, yyyy', "id_ID").format(DateTime.now()),
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }

  Widget _buildCheckInSection(BuildContext context) {
    return Column(
      children: [
        CheckInButton(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => RecognitionScreen())),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on,
              color: Colors.grey,
            ),
            SizedBox(width: 5),
            BlocBuilder<GetPositionBloc, GetPositionState>(
                builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const Text(
                    "Mencari lokasi...",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  );
                },
                error: (message) => Text(
                  message,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                loadedPosition: (position) {
                  return Text(
                    "Lokasi: ${position.latitude}, ${position.longitude}",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  );
                },
              );
            }),
          ],
        ),
      ],
    );
  }

  Widget _buildMapsLocation(BuildContext context) {
    return Expanded(
      flex: 3,
      child: BlocBuilder<GetPositionBloc, GetPositionState>(
        builder: (context, state) {
          return state.maybeWhen(orElse: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }, loadedPosition: (position) {
            return GoogleMap(
              zoomGesturesEnabled: false,
              tiltGesturesEnabled: false,
              rotateGesturesEnabled: true,
              scrollGesturesEnabled: false,
              myLocationEnabled: true,
              initialCameraPosition: CameraPosition(
                target: LatLng(position.latitude, position.longitude),
                zoom: 15,
              ),
              markers: {
                Marker(
                  markerId: MarkerId("Lokasi Anda"),
                  position: LatLng(position.latitude, position.longitude),
                ),
              },
            );
          }, error: (message) {
            return Center(
              child: Text(message),
            );
          });
        },
      ),
    );
  }
}
