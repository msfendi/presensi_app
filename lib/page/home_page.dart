// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:presensi_app/models/home_response.dart';
// import 'package:presensi_app/page/presensi_page.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:http/http.dart' as http;

// import '../core/constans/variable.dart';

// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
//   late Future<String> _name, _token;
//   HomeResponse? homeResponse;
//   Data? thisDay;
//   List<Data>? riwayat = [];

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _token = _prefs.then((SharedPreferences prefs) {
//       return (prefs.getString('token') ?? '');
//     });
//     _name = _prefs.then((SharedPreferences prefs) {
//       return (prefs.getString('name') ?? '');
//     });
//   }

//   Future getData() async {
//     final Map<String, String> headers = {
//       'Content-Type': 'application/json',
//       'Authorization': 'Bearer ${await _token}',
//     };
//     var response = await http.get(
//         Uri.parse('${Variable.baseUrl}/api/get-presensi'),
//         headers: headers);
//     homeResponse = HomeResponse.fromJson(jsonDecode(response.body));
//     riwayat?.clear();
//     homeResponse!.data?.forEach((element) {
//       if (element.isHariIni!) {
//         thisDay = element;
//       } else {
//         riwayat?.add(element);
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             centerTitle: true,
//             leading: IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: const Icon(Icons.arrow_back_ios, size: 30),
//             ),
//             backgroundColor: const Color(0xFF007bff),
//             toolbarHeight: 80,
//             elevation: 0,
//             leadingWidth: 80,
//             title: const Text(
//               'Absensi Online',
//               style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//             )),
//         body: FutureBuilder(
//             future: getData(),
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return const Center(
//                   child: CircularProgressIndicator(),
//                 );
//               } else {
//                 return SafeArea(
//                   child: Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         FutureBuilder(
//                             future: _name,
//                             builder: (BuildContext context,
//                                 AsyncSnapshot<String> snapshot) {
//                               if (snapshot.connectionState ==
//                                   ConnectionState.waiting) {
//                                 return const CircularProgressIndicator();
//                               } else {
//                                 if (snapshot.hasData) {
//                                   return Text(
//                                     'Halo, ${snapshot.data}',
//                                     style: const TextStyle(
//                                         fontSize: 25,
//                                         fontWeight: FontWeight.bold),
//                                   );
//                                 } else {
//                                   return const Text(
//                                     'Halo, Pengguna Baru',
//                                     style: TextStyle(
//                                         fontSize: 25,
//                                         fontWeight: FontWeight.bold),
//                                   );
//                                 }
//                               }
//                             }),
//                         const SizedBox(
//                           height: 16,
//                         ),
//                         Container(
//                           width: 400,
//                           // height: 300,
//                           decoration: BoxDecoration(
//                             color: const Color(0xFF007bff),
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(top: 20),
//                                 child: Center(
//                                     child: Text(
//                                   thisDay?.tanggal ?? "Loading...",
//                                   style: const TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.bold),
//                                 )),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(top: 20),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Column(
//                                       children: [
//                                         Text(
//                                           thisDay?.masuk ?? "00.00",
//                                           style: const TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 25,
//                                               fontWeight: FontWeight.bold),
//                                         ),
//                                         const SizedBox(
//                                           height: 5,
//                                         ),
//                                         const Text(
//                                           "Jam Masuk",
//                                           style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 16,
//                                               fontWeight: FontWeight.w400),
//                                         ),
//                                       ],
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.only(
//                                           left: 30, right: 30),
//                                       child: Container(
//                                         width: 2,
//                                         height: 50,
//                                         color: Colors.white,
//                                       ),
//                                     ),
//                                     Column(
//                                       children: [
//                                         Text(
//                                           thisDay?.pulang ?? "null",
//                                           style: const TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 25,
//                                               fontWeight: FontWeight.bold),
//                                         ),
//                                         const SizedBox(
//                                           height: 5,
//                                         ),
//                                         const Text(
//                                           "Jam Pulang",
//                                           style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 16,
//                                               fontWeight: FontWeight.w400),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               const SizedBox(
//                                 height: 20,
//                               )
//                             ],
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         const Text(
//                           "Riwayat Presensi",
//                           style: TextStyle(
//                               fontSize: 20, fontWeight: FontWeight.bold),
//                         ),
//                         const SizedBox(
//                           height: 8,
//                         ),
//                         Expanded(
//                           child: ListView.builder(
//                             itemCount: riwayat?.length ?? 0,
//                             shrinkWrap: true,
//                             itemBuilder: (context, index) {
//                               return Card(
//                                 child: ListTile(
//                                   leading: const Icon(
//                                     Icons.check_circle,
//                                     color: Color(0xFF17a2b8),
//                                   ),
//                                   title: Text(
//                                       riwayat?[index].tanggal ?? "Loading..."),
//                                   subtitle: Text(
//                                       "${riwayat?[index].masuk} - ${riwayat?[index].pulang}"),
//                                 ),
//                               );
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               }
//             }),
//         floatingActionButton: FloatingActionButton(
//           backgroundColor: const Color(0xFF17a2b8),
//           onPressed: () {
//             // if(thisDay?.pulang == null) {
//             Navigator.pushReplacement(context,
//                 MaterialPageRoute(builder: (context) => const PresensiPage()));
//             // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PresensiPage()));
//             //   } else {
//             //     ScaffoldMessenger.of(context).showSnackBar(
//             // const SnackBar(
//             //   content: Text('Anda sudah melakukan presensi hari ini'),
//             // ));
//             //   }
//           },
//           child: const Icon(Icons.add),
//         ));
//   }
// }
