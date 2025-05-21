import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presensi_app/presentation/auth/widgets/textfield_form.dart';

import '../bloc/register/register_bloc.dart';
import '../widgets/button.dart';
import 'login_page.dart';

// ignore: must_be_immutable
class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernamedController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       body: SafeArea(
  //     child: Stack(
  //       children: [
  //         _buildTitleAppbar(context),
  //         ListView(
  //           children: [
  //             const SizedBox(
  //               height: 180,
  //             ),
  //             Container(
  //               width: MediaQuery.of(context).size.width,
  //               height: MediaQuery.of(context).size.height,
  //               decoration: BoxDecoration(
  //                 color: Colors.white,
  //                 borderRadius: BorderRadius.circular(50),
  //               ),
  //               child: Padding(
  //                 padding: const EdgeInsets.all(26.0),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     const SizedBox(
  //                       height: 20,
  //                     ),
  //                     const Text(
  //                       'Register',
  //                       style: TextStyle(
  //                           fontSize: 35, fontWeight: FontWeight.w300),
  //                     ),
  //                     TextfieldForm(
  //                         controller: usernamedController,
  //                         label: 'Username',
  //                         icon: Icons.person),
  //                     TextfieldForm(
  //                         controller: emailController,
  //                         label: 'Email',
  //                         icon: Icons.email),
  //                     TextfieldForm(
  //                         controller: passwordController,
  //                         label: 'Password',
  //                         icon: Icons.lock),
  //                     _buildRegisterButton(context),
  //                   ],
  //                 ),
  //               ),
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //   ));
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.blueAccent,
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 48),
                    padding: EdgeInsets.only(top: 36),
                    child: Text(
                      "MyPresensi",
                      style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(24),
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 4))
                        ]),
                    child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Register",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Registrasi terlebih dahulu agar dapat melakukan presensi di aplikasi MyPresensi",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.5)),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Text(
                              "Email ",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.5)),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              controller: emailController,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.5)),
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black.withOpacity(0.5)),
                                  hintText: "developer@app.com",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(16),
                                      borderSide:
                                          BorderSide(color: Colors.blueAccent)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(16),
                                      borderSide:
                                          BorderSide(color: Colors.blueAccent)),
                                  prefixIcon: Icon(
                                    Icons.email,
                                    size: 18,
                                  ),
                                  prefixIconColor: Colors.grey),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a valid Email';
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Password ",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.5)),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              controller: passwordController,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.5)),
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black.withOpacity(0.5)),
                                  hintText: "password",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(16),
                                      borderSide:
                                          BorderSide(color: Colors.blueAccent)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(16),
                                      borderSide:
                                          BorderSide(color: Colors.blueAccent)),
                                  prefixIcon: Icon(
                                    Icons.email,
                                    size: 18,
                                  ),
                                  prefixIconColor: Colors.grey),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a valid Email';
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Username",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.5)),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              controller: usernamedController,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.5)),
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black.withOpacity(0.5)),
                                  hintText: "username",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(16),
                                      borderSide:
                                          BorderSide(color: Colors.blueAccent)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(16),
                                      borderSide:
                                          BorderSide(color: Colors.blueAccent)),
                                  prefixIcon: Icon(
                                    Icons.email,
                                    size: 18,
                                  ),
                                  prefixIconColor: Colors.grey),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Name';
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            BlocListener<RegisterBloc, RegisterState>(
                              listener: (context, state) {
                                state.maybeWhen(
                                  orElse: () {},
                                  loaded: (registerResponse) => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),
                                    ),
                                  ),
                                );
                              },
                              child: BlocBuilder<RegisterBloc, RegisterState>(
                                builder: (context, state) {
                                  return state.maybeWhen(
                                    orElse: () => _buildNewLoginButton(
                                      context,
                                      'Register',
                                      null,
                                      Colors.white,
                                      () {
                                        context
                                            .read<RegisterBloc>()
                                            .add(RegisterEvent.register(
                                              email: emailController.text,
                                              password: passwordController.text,
                                              username:
                                                  usernamedController.text,
                                            ));
                                      },
                                      textColor: Colors.white,
                                      borderColor: Colors.blueAccent,
                                      backgroundColor: Colors.blueAccent,
                                    ),
                                    loading: () => const Center(
                                        child: CircularProgressIndicator()),
                                    error: (message) => Center(
                                      child: Text(message),
                                    ),
                                    loaded: (registerResponse) => Container(),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            _buildOrDivider(context),
                            SizedBox(
                              height: 16,
                            ),
                            _buildNewLoginButton(
                              context,
                              'Register with Google',
                              Icons.email,
                              Colors.blueAccent,
                              () {},
                              textColor: Colors.white,
                              borderColor: Colors.blueAccent,
                              backgroundColor: Colors.white,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              width: double.maxFinite,
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Already have an account?",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black.withOpacity(0.5)),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 4),
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.blueAccent),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleAppbar(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3,
        color: const Color(0xFF007bff),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Bimbel Paham App',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ));
  }

  Widget _buildRegisterButton(BuildContext context) {
    return Container(
      height: 115,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<RegisterBloc, RegisterState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Button(
                    onPressed: () {
                      context.read<RegisterBloc>().add(RegisterEvent.register(
                            email: emailController.text,
                            password: passwordController.text,
                            username: usernamedController.text,
                          ));
                    },
                    text: 'Register'),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (message) => Center(
                  child: Text(message),
                ),
                loaded: (registerResponse) => Center(
                  child: Text(registerResponse.data!.email!),
                ),
              );
            },
          ),
          _buildLoginSection(context),
        ],
      ),
    );
  }

  Widget _buildLoginSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Sudah punya akun?'),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          child: const Text(
            'Login',
            style: TextStyle(color: Color(0xFF17a2b8)),
          ),
        )
      ],
    );
  }

  Widget _buildNewLoginButton(BuildContext context, String text, IconData? icon,
      Color iconColor, VoidCallback onPressed,
      {Color backgroundColor = Colors.blueAccent,
      Color? borderColor,
      Color textColor = Colors.white}) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll<Color>(backgroundColor)),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (icon != null)
                  ? Icon(
                      icon,
                      color: iconColor,
                    )
                  : SizedBox(
                      width: 8,
                    ),
              Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: iconColor),
              )
            ],
          )),
    );
  }

  /// Section Widget
  Widget _buildOrDivider(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4),
      padding: EdgeInsets.symmetric(horizontal: 4),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Divider(),
          ),
          SizedBox(width: 14),
          Text(
            "OR",
            style:
                TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.1)),
          ),
          SizedBox(width: 14),
          Expanded(
            child: Divider(),
          )
        ],
      ),
    );
  }
}
