import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PresensiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbarHeader(context),
      body: const PresensiPageView(),
    );
  }

  PreferredSizeWidget _buildAppbarHeader(BuildContext context) {
    return AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 30,
            )),
        backgroundColor: const Color(0xFF007bff),
        toolbarHeight: 80,
        elevation: 0,
        leadingWidth: 80,
        title: const Text(
          'Absensi Online',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ));
  }
}

class PresensiPageView extends StatelessWidget {
  const PresensiPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildPageIndicator(context),
        Expanded(
          child: PageView(
            onPageChanged: (index) {
              // context.read<PresensiBloc>().add(const PresensiEvent.nextPage());
            },
            children: [
              _buildUserInfoForm(context),
              _buildAttendanceStatusForm(context),
              _buildAdditionalUserInfoForm(context),
            ],
          ),
        ),
      ],
    );
  }

  // Indikator garis navigasi
  Widget _buildPageIndicator(BuildContext context) {
    // final currentPage = state.maybeMap(
    //   page: (pageState) => pageState.page,
    //   orElse: () => 0,
    // );
    final currentPage = 0;
    return Column(
      children: [
        Container(
          height: 4,
          width: double.infinity, // Garis sepanjang layar
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(3, (index) {
              return AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: currentPage == index
                    ? MediaQuery.of(context).size.width * 0.5
                    : MediaQuery.of(context).size.width * 0.2,
                height: 4,
                margin: EdgeInsets.symmetric(horizontal: 0),
                decoration: BoxDecoration(
                  color: currentPage == index ? Colors.blueAccent : Colors.grey,
                  borderRadius: BorderRadius.circular(2),
                ),
              );
            }),
          ),
        ),
        SizedBox(height: 8),
        Text('Step ${currentPage + 1} of 3', style: TextStyle(fontSize: 16)),
      ],
    );
  }

  // Form Identitas User
  Widget _buildUserInfoForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Nama Lengkap',
              prefixIcon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
              prefixIcon: Icon(Icons.email),
            ),
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Nomor Telepon',
              prefixIcon: Icon(Icons.phone),
            ),
          ),
          SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              // context.read<PresensiBloc>().add(const PresensiEvent.nextPage());
            },
            child: Text('Lanjutkan'),
          ),
        ],
      ),
    );
  }

  // Form Pilihan Status Kehadiran
  Widget _buildAttendanceStatusForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text('Pilih Status Kehadiran'),
          RadioListTile<String>(
            title: Text('Hadir'),
            value: 'Hadir',
            groupValue: null, // Handle selection state
            onChanged: (value) {
              // context.read<PresensiBloc>().add(PresensiEvent.setAttendanceStatus(value!));
            },
          ),
          RadioListTile<String>(
            title: Text('Tidak Hadir'),
            value: 'Tidak Hadir',
            groupValue: null, // Handle selection state
            onChanged: (value) {
              // context.read<PresensiBloc>().add(PresensiEvent.setAttendanceStatus(value!));
            },
          ),
          SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              // context.read<PresensiBloc>().add(const PresensiEvent.nextPage());
            },
            child: Text('Lanjutkan'),
          ),
        ],
      ),
    );
  }

  // Form Identitas User (Lanjutan)
  Widget _buildAdditionalUserInfoForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Alamat',
              prefixIcon: Icon(Icons.location_on),
            ),
          ),
          SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              // Final step: handle form submission
            },
            child: Text('Kirim Presensi'),
          ),
        ],
      ),
    );
  }
}
