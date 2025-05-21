// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:presensi_app/core/constans/variable.dart';
// import 'package:presensi_app/models/Login_response.dart';
// import 'package:presensi_app/page/menu_page.dart';
// import 'package:presensi_app/page/register_page.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   late Future<String> _name, _token;

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

//     checkLogin(_token, _name);
//   }

//   Future login(email, password) async {
//     LoginResponse? loginResponse;
//     Map<String, String> body = {
//       'email': email,
//       'password': password,
//     };
//     var response =
//         await http.post(Uri.parse('${Variable.baseUrl}/api/login'), body: body);
//     if (response.statusCode == 401) {
//       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//         content: Text('Email atau password salah'),
//       ));
//     } else {
//       loginResponse = LoginResponse.fromJson(jsonDecode(response.body));
//       saveUser(loginResponse.data?.name, loginResponse.data?.token);
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => const MenuPage()),
//       );
//     }
//   }

//   checkLogin(token, name) async {
//     final String tokenStr = await token;
//     final String nameStr = await name;
//     if (tokenStr != '' && nameStr != '') {
//       Future.delayed(const Duration(seconds: 2), () {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => const MenuPage()),
//         );
//       });
//     }
//   }

//   Future saveUser(name, token) async {
//     final SharedPreferences prefs = await _prefs;
//     prefs.setString('name', name);
//     prefs.setString('token', token);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Stack(
//           children: [
//             Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height / 3,
//                 color: const Color(0xFF007bff),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: const [
//                     Text(
//                       'Bimbel Paham App',
//                       style: TextStyle(
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white),
//                     ),
//                   ],
//                 )),
//             ListView(
//               children: [
//                 const SizedBox(
//                   height: 180,
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(50),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(26.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         const Text(
//                           'Login',
//                           style: TextStyle(
//                               fontSize: 35, fontWeight: FontWeight.w400),
//                         ),
//                         const SizedBox(
//                           height: 40,
//                         ),
//                         TextField(
//                           controller: emailController,
//                           decoration: const InputDecoration(
//                             border: OutlineInputBorder(),
//                             prefixIcon: Icon(Icons.email),
//                             labelText: 'Email',
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 40,
//                         ),
//                         TextField(
//                           controller: passwordController,
//                           decoration: const InputDecoration(
//                             border: OutlineInputBorder(),
//                             prefixIcon: Icon(Icons.lock),
//                             labelText: 'Password',
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         Container(
//                             height: 115,
//                             width: MediaQuery.of(context).size.width,
//                             color: Colors.white,
//                             child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   SizedBox(
//                                       width: 260,
//                                       height: 60,
//                                       child: ElevatedButton(
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 const Color(0xFF17a2b8),
//                                             shape: RoundedRectangleBorder(
//                                               borderRadius:
//                                                   BorderRadius.circular(20),
//                                             ),
//                                           ),
//                                           onPressed: () {
//                                             login(emailController.text,
//                                                 passwordController.text);
//                                           },
//                                           child: const Text(
//                                             'Login',
//                                             style: TextStyle(
//                                                 fontSize: 20,
//                                                 fontWeight: FontWeight.bold),
//                                           ))),
//                                   const SizedBox(
//                                     height: 10,
//                                   ),
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       const Text('Belum punya akun? '),
//                                       InkWell(
//                                         onTap: () {
//                                           Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                                 builder: (context) =>
//                                                     const RegisterPage()),
//                                           );
//                                         },
//                                         child: const Text(
//                                           'Daftar',
//                                           style: TextStyle(
//                                               color: Color(0xFF17a2b8)),
//                                         ),
//                                       )
//                                     ],
//                                   )
//                                 ])),
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
