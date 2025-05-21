import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presensi_app/core/constans/variable.dart';
import 'package:presensi_app/presentation/profile/bloc/profile/account_bloc.dart';

import '../../../data/datasource/auth_local_datasource.dart';
import '../../auth/pages/login_page.dart';
import '../../profile/pages/profile_page.dart';
import '../bloc/logout/logout_bloc.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    final isAuth = await AuthLocalDatasource().isAuth();
    if (isAuth) {
      context.read<AccountBloc>().add(const AccountEvent.getAccount());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            _buildProfileHeader(),
            const SizedBox(height: 20),
            _buildStatsRow(),
            const SizedBox(height: 30),
            _buildMenuList(context),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        return state.maybeMap(
            orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
            loaded: (accountData) {
              final face = accountData.face;
              final user = accountData.user;

              return Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade300,
                      image: DecorationImage(
                        image: NetworkImage(Variable.baseUrl +
                            face.imagePath!), // Ganti dengan path gambar
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    user.name ?? 'Name',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    user.email ?? 'Email',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              );
            });
      },
    );
  }

  Widget _buildStatsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildStatItem('Reward Points', '360'),
        _buildStatItem('Travel Trips', '238'),
        _buildStatItem('Bucket List', '473'),
      ],
    );
  }

  Widget _buildStatItem(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildMenuList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          _buildMenuItem(Icons.person_outline, 'Profile', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfilePage()));
          }),
          _buildMenuItem(Icons.bookmark_outline, 'Bookmarked', () {}),
          _buildMenuItem(Icons.flight_outlined, 'Previous Trips', () {}),
          _buildMenuItem(Icons.settings_outlined, 'Settings', () {}),
          _buildMenuItem(Icons.info_outline, 'Version', () {}),
          BlocListener<LogoutBloc, LogoutState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {
                  print('Logout state: $state');
                },
                error: (message) => print('Logout error: $message'),
                loaded: (message) {
                  AuthLocalDatasource().logout();
                  Navigator.of(context).pushReplacement(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        LoginPage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      var begin = const Offset(1.0, 0.0);
                      var end = Offset.zero;
                      var curve = Curves.easeOutCubic;

                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      var offsetAnimation = animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ));
                },
              );
            },
            child: _buildMenuItem(Icons.logout_outlined, 'Logout', () {
              context.read<LogoutBloc>().add(LogoutEvent.logout());
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, Function()? onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey[400]),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: onTap,
    );
  }
}
