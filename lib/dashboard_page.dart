import 'package:flutter/material.dart';
import 'package:presensi_app/presentation/check_out/pages/checkout_page.dart';
import 'package:presensi_app/presentation/home/pages/home_page.dart';
// import 'package:presensi_app/presentation/home/pages/checkin_page.dart';

import 'core/theme/theme.dart';
import 'data/datasource/auth_local_datasource.dart';
import 'presentation/account/pages/account_page.dart';
import 'presentation/auth/pages/login_page.dart';
import 'presentation/history_attendance/pages/history_attendance_page.dart';
import 'presentation/presensi/pages/presensi_page.dart';
// import 'presentation/home/pages/presensi_screen_coba.dart';

class DashboardPage extends StatefulWidget {
  final int currentTab;
  const DashboardPage({super.key, required this.currentTab});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late int _selectedIndex;
  final List<Widget> _pages = [
    HomePage(),
    HistoryAttendancePage(),
    // PresensiPage(),
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  @override
  void initState() {
    // cekLogin();
    _selectedIndex = widget.currentTab;
    super.initState();
  }

  // void cekLogin() async {
  //   final isAuth = await AuthLocalDatasource().isAuth();
  //   if (isAuth == false) {
  //     // Navigator.pushReplacement(
  //     //     context, MaterialPageRoute(builder: (context) => LoginPage()));
  //   } else {
  //     // await AuthLocalDatasource().isAuth();
  //     // final token = await AuthLocalDatasource().getAuthData();
  //     // print(token?.data?.token);
  //     print('sudah login');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F8FC),
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: ColorStyle.ink09,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            activeIcon: Container(
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorStyle.ink09,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(
                  Icons.home,
                ),
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            activeIcon: Icon(
              Icons.request_page_outlined,
            ),
            label: 'History Attendance',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.free_breakfast),
          //   activeIcon: Icon(Icons.free_breakfast),
          //   label: 'Take a Break',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
