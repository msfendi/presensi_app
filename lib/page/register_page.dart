// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:presensi_app/models/register_response.dart';
// import 'package:presensi_app/page/login_page.dart';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({Key? key}) : super(key: key);

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   @override
//   Widget build(BuildContext context) {
//     final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
//     TextEditingController usernamedController = TextEditingController();
//     TextEditingController emailController = TextEditingController();
//     TextEditingController passwordController = TextEditingController();
//     late Future<String> _name, _token;

//     Future saveUser(name, token) async {
//       final SharedPreferences prefs = await _prefs;
//       prefs.setString('name', name);
//       prefs.setString('token', token);
//     }

//     Future register(String username, String email, String password) async {
//       RegisterResponse? registerResponse;
//       Map<String, String> body = {
//         'name': username,
//         'email': email,
//         'password': password,
//       };
//       var response = await http.post(
//           Uri.parse('https://yukbimbel.000webhostapp.com/api/register'),
//           body: body);
//       if (response.statusCode == 401) {
//         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//           content: Text('Email atau password salah'),
//         ));
//       } else {
//         print(response.body);
//         registerResponse = RegisterResponse.fromJson(jsonDecode(response.body));
//         saveUser(registerResponse.data?.name, registerResponse.accessToken);
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => LoginPage()),
//         );
//       }
//     }

//     return Scaffold(
//         body: SafeArea(
//       child: Stack(
//         children: [
//           Container(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height / 3,
//               color: const Color(0xFF007bff),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   Text(
//                     'Bimbel Paham App',
//                     style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   ),
//                 ],
//               )),
//           ListView(
//             children: [
//               const SizedBox(
//                 height: 180,
//               ),
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(50),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(26.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       const Text(
//                         'Register',
//                         style: TextStyle(
//                             fontSize: 35, fontWeight: FontWeight.w300),
//                       ),
//                       const SizedBox(
//                         height: 30,
//                       ),
//                       TextField(
//                         controller: usernamedController,
//                         decoration: const InputDecoration(
//                           border: OutlineInputBorder(),
//                           prefixIcon: Icon(Icons.person),
//                           labelText: 'Username',
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       TextField(
//                         controller: emailController,
//                         decoration: const InputDecoration(
//                           border: OutlineInputBorder(),
//                           prefixIcon: Icon(Icons.email),
//                           labelText: 'Email',
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       TextField(
//                         controller: passwordController,
//                         decoration: const InputDecoration(
//                           border: OutlineInputBorder(),
//                           prefixIcon: Icon(Icons.lock),
//                           labelText: 'Password',
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Container(
//                           height: 115,
//                           width: MediaQuery.of(context).size.width,
//                           color: Colors.white,
//                           child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 SizedBox(
//                                     width: 260,
//                                     height: 60,
//                                     child: ElevatedButton(
//                                         style: ElevatedButton.styleFrom(
//                                           backgroundColor:
//                                               const Color(0xFF17a2b8),
//                                           shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(20),
//                                           ),
//                                         ),
//                                         onPressed: () {
//                                           register(
//                                               usernamedController.text,
//                                               emailController.text,
//                                               passwordController.text);
//                                         },
//                                         child: const Text(
//                                           'Register',
//                                           style: TextStyle(
//                                               fontSize: 20,
//                                               fontWeight: FontWeight.bold),
//                                         ))),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     const Text('Sudah punya akun?'),
//                                     InkWell(
//                                       onTap: () {
//                                         Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: (context) =>
//                                                   LoginPage()),
//                                         );
//                                       },
//                                       child: const Text(
//                                         'Login',
//                                         style:
//                                             TextStyle(color: Color(0xFF17a2b8)),
//                                       ),
//                                     )
//                                   ],
//                                 )
//                               ])),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//     ));
//   }
// }
