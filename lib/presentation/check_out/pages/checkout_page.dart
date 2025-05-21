import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:presensi_app/data/datasource/presensi_remote_datasource.dart';
import 'package:presensi_app/data/models/responses/presensi_response_model.dart';
import 'package:presensi_app/presentation/check_out/widgets/activity_card.dart';
import 'package:presensi_app/presentation/check_out/widgets/checkout_button.dart';
import 'package:presensi_app/presentation/check_out/widgets/time_card.dart';
import 'package:presensi_app/presentation/home/bloc/get_position/get_position_bloc.dart';

import '../../presensi/bloc/presensi/presensi_bloc.dart';
import 'recognition_checkout_page.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage>
    with SingleTickerProviderStateMixin {
  late final tickerProvider = createTicker((elapsed) => setState(() {}));

  @override
  void initState() {
    // TODO: implement initState
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
            _buildCheckOutButton(context),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                ),
                SizedBox(width: 5),
                Text(
                  "Location: Capital Icon",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
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
                time: "08:00 AM",
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
                time: "Error: $message",
              );
            });
      },
    );
  }

  Widget _buildMyDayActivity(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PresensiBloc(presensiRemoteDatasource: PresensiRemoteDatasource())
            ..add(PresensiEvent.getPresensi()),
      child: BlocBuilder<PresensiBloc, PresensiState>(
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
              waktuPulang: waktu.pulang?.isEmpty ?? true
                  ? "Belum Pulang"
                  : waktu.pulang!,
            );
          }, error: (message) {
            return ActivityCard(
              waktuMasuk: "Error: $message",
              waktuPulang: "Error: $message",
            );
          });
        },
      ),
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
        // context
        //     .read<CheckoutBloc>()
        //     .add(CheckoutEvent.checkOutPresensi());
      },
    );
  }
}
