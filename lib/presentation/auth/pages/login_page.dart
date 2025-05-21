import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presensi_app/data/datasource/auth_local_datasource.dart';
import 'package:presensi_app/main.dart';
import 'package:presensi_app/presentation/auth/widgets/button.dart';
import 'package:presensi_app/presentation/auth/widgets/textfield_form.dart';
import 'package:presensi_app/presentation/home/pages/checkin_page.dart';

import '../bloc/login/login_bloc.dart';
import 'register_page.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override

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
                      "My Attendance",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(16),
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
                              "Login",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Login untuk melanjutkan presensi pada aplikasi MyPresentation ",
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
                              // validator: (value) {
                              //   if (value == null || value.isEmpty) {
                              //     return 'Please enter a valid Email';
                              //   }
                              //   return null;
                              // },
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
                              // validator: (value) {
                              //   if (value == null || value.isEmpty) {
                              //     return 'Please enter a valid Email';
                              //   }
                              //   return null;
                              // },
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            BlocConsumer<LoginBloc, LoginState>(
                              listener: (context, state) {
                                // TODO: implement listener
                                state.maybeWhen(
                                    orElse: () {},
                                    error: (message) => Center(
                                          child: Text(message),
                                        ),
                                    loaded: (account) {
                                      AuthLocalDatasource()
                                          .saveAuthData(account);
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const MyApp()),
                                      );
                                    });
                              },
                              builder: (context, state) {
                                return state.maybeWhen(
                                  orElse: () => _buildNewLoginButton(
                                    context,
                                    'Login',
                                    null,
                                    Colors.white,
                                    () {
                                      context
                                          .read<LoginBloc>()
                                          .add(LoginEvent.login(
                                            email: emailController.text,
                                            password: passwordController.text,
                                          ));
                                    },
                                    textColor: Colors.white,
                                    borderColor: Colors.blueAccent,
                                    backgroundColor: Colors.blueAccent,
                                  ),
                                  loading: () => const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                );
                              },
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
                              'Login with Google',
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don’t have an account?",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black.withOpacity(0.5)),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (builder) =>
                                                  RegisterPage()));
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 4),
                                      child: Text(
                                        "Sign Up",
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
