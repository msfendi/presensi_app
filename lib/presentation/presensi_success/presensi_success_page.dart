import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:presensi_app/dashboard_page.dart';

class PresensiSuccessPage extends StatelessWidget {
  const PresensiSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/lottie/in_office.json',
                width: 400,
                height: 400,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Anda sudah melakukan presensi hari ini, selamat memperkaya perusahaan anda!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: SizedBox(
        width: double.infinity,
        height: 48,
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll<Color>(Colors.lightBlue),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DashboardPage(
                            currentTab: 0,
                          )));
            },
            child: Text(
              'Kembali ke Beranda',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white),
            )),
      ),
    );
  }
}
