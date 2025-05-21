import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presensi_app/core/constans/variable.dart';
import 'package:presensi_app/presentation/profile/bloc/profile/account_bloc.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<AccountBloc>().add(const AccountEvent.getAccount());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Edit Profile',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              context.read<AccountBloc>().add(
                    AccountEvent.updateAccount(
                      name: _nameController.text,
                      email: _emailController.text,
                      phone: _phoneController.text,
                    ),
                  );
            },
            child: const Text(
              'Done',
              style: TextStyle(color: Colors.orange, fontSize: 16),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocBuilder<AccountBloc, AccountState>(
          builder: (context, state) {
            return state.maybeMap(
                orElse: () => Center(child: CircularProgressIndicator()),
                loaded: (accountData) {
                  final account = accountData.user;
                  final face = accountData.face;
                  return Column(
                    children: [
                      const SizedBox(height: 24),
                      Center(
                        child: Column(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
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
                            const SizedBox(height: 16),
                            Text(
                              account.name ?? 'Name',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Change Profile Picture',
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),
                      _buildTextField(
                          label: 'First Name',
                          controller: _nameController
                            ..text = account.name ?? ''),
                      const SizedBox(height: 16),
                      _buildTextField(
                          label: 'Email',
                          controller: _emailController
                            ..text = account.email ?? ''),
                      const SizedBox(height: 16),
                      _buildTextField(
                          label: 'Mobile Number',
                          controller: _phoneController
                            ..text = account.email ?? ''),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }

  Widget _buildTextField(
      {required String label, required TextEditingController controller}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 14, color: Colors.black54),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              suffixIcon: const Icon(Icons.check, color: Colors.orange),
            ),
          ),
        ),
      ],
    );
  }
}
