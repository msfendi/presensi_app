import 'package:flutter/material.dart';
import 'package:presensi_app/page/home_page.dart';
import 'package:presensi_app/page/login_page.dart';
import 'package:presensi_app/page/mapel_video_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<String> _name, _token;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _token = _prefs.then((SharedPreferences prefs) {
      return (prefs.getString('token') ?? '');
    });
    _name = _prefs.then((SharedPreferences prefs) {
      return (prefs.getString('name') ?? '');
    });
  }

  void logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('token');
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                  color: Color(0xFF007bff),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(200, 50),
                    bottomRight: Radius.elliptical(200, 50),
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Absensi Online', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
                  ],
                )
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 180),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 290, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Menu', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w300, color: Colors.black87, fontStyle: FontStyle.italic ),),
                    const SizedBox(height: 20,),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                      },
                      child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                  ],
                        ),
                        child: Row(
                          children: const [
                            SizedBox(width: 20,),
                            Icon(Icons.search, size: 35, color: Color(0xFF17a2b8),),
                            SizedBox(width: 20,),
                            Text('Absensi Kehadiran', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MapelPage()));
                      },
                      child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                  ],
                        ),
                        child: Row(
                          children: const [
                            SizedBox(width: 20,),
                            Icon(Icons.play_circle_fill, size: 35, color: Color(0xFF17a2b8),),
                            SizedBox(width: 20,),
                            Text('Video Materi', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    GestureDetector(
                      onTap: () {
                        logout();
                      },
                      child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                  ],
                        ),
                        child: Row(
                          children: const [
                            SizedBox(width: 20,),
                            Icon(Icons.logout_sharp, size: 30, color: Color(0xFF17a2b8),),
                            SizedBox(width: 20,),
                            Text('Logout', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]))
    );
  }
}
