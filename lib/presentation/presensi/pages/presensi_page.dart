// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:presensi_app/core/components/custom_text_field.dart';
// import 'package:presensi_app/presentation/check_out/pages/checkout_page.dart';
// import 'package:presensi_app/presentation/home/bloc/get_position/get_position_bloc.dart';
// import 'package:presensi_app/presentation/home/bloc/presensi/presensi_bloc.dart';
// import 'package:presensi_app/presentation/home/widgets/custom_dropdown.dart';
// import 'package:presensi_app/presentation/home/widgets/file_picker_upload.dart';

// import '../bloc/add_presensi/add_presensi_bloc.dart';

// class PresensiPage extends StatefulWidget {
//   const PresensiPage({super.key});

//   @override
//   State<PresensiPage> createState() => _PresensiPageState();
// }

// class _PresensiPageState extends State<PresensiPage> {
//   String? latitude = '';
//   String? longitude = '';
//   String? status = 'hadir';
//   String filePath = '';

//   @override
//   void initState() {
//     context
//         .read<GetPositionBloc>()
//         .add(const GetPositionEvent.getCurrentLocation());
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: _buildAppbarHeader(context),
//       body: SafeArea(
//         child: Column(
//           children: [
//             // dropdown menu untuk memilih status presensi
//             _buildStatusAttendanceOption(context),
//             status == 'hadir'
//                 ? _buildPresentAttendForm(context)
//                 : _buildPermitAttendForm(context),
// Expanded(
//   child: BlocBuilder<AddPresensiBloc, AddPresensiState>(
//     builder: (context, state) {
//       return state.maybeWhen(
//           orElse: () {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           },
//           loadedLocation: (locationData) {
//             latitude = locationData.latitude.toString();
//             longitude = locationData.longitude.toString();
// return GoogleMap(
//   zoomGesturesEnabled: true,
//   tiltGesturesEnabled: true,
//   rotateGesturesEnabled: true,
//   scrollGesturesEnabled: true,
//   initialCameraPosition: CameraPosition(
//     target: LatLng(locationData.latitude!,
//         locationData.longitude!),
//     zoom: 100,
//   ),
// );
//           },
//           error: (message) => Center(
//                 child: Text(message),
//               ));
//     },
//   ),
// ),
//             Container(
//                 height: 115,
//                 width: MediaQuery.of(context).size.width,
//                 color: Colors.white,
//                 child: _buildSubmitAttendanceButton(context)),
//           ],
//         ),
//       ),
//     );
//   }

// PreferredSizeWidget _buildAppbarHeader(BuildContext context) {
//   return AppBar(
//       centerTitle: true,
//       leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: const Icon(
//             Icons.arrow_back_ios,
//             color: Colors.white,
//             size: 30,
//           )),
//       backgroundColor: const Color(0xFF007bff),
//       toolbarHeight: 80,
//       elevation: 0,
//       leadingWidth: 80,
//       title: const Text(
//         'Absensi Online',
//         style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//       ));
// }

//   Widget _buildStatusAttendanceOption(BuildContext context) {
//     List<String> statusPresensi = ['hadir', 'izin', 'sakit', 'cuti'];
//     return Padding(
//       padding: const EdgeInsets.all(14.0),
//       child: CustomDropdown(
//           value: statusPresensi[0],
//           items: statusPresensi,
//           onChanged: (value) {
//             setState(() {
//               status = value;
//             });
//           },
//           label: 'Status Presensi'),
//     );
//   }

//   Widget _buildPresentAttendForm(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 12),
//       child: BlocBuilder<GetPositionBloc, GetPositionState>(
//         builder: (context, state) {
//           return state.maybeWhen(
//               orElse: () {
//                 return const Center(
//                   child: CircularProgressIndicator(),
//                 );
//               },
//               loadedPosition: (locationData) {
//                 latitude = locationData.latitude.toString();
//                 longitude = locationData.longitude.toString();
//                 return Column(
//                   children: [
//                     CustomTextField(
//                         readOnly: false,
//                         controller: TextEditingController()..text = latitude!,
//                         label: 'Latitude'),
//                     SizedBox(height: 10),
//                     CustomTextField(
//                         readOnly: false,
//                         controller: TextEditingController()..text = longitude!,
//                         label: 'Longitude'),
//                   ],
//                 );
//               },
//               error: (message) => Center(
//                     child: Text(message),
//                   ));
//         },
//       ),
//     );
//   }

//   Widget _buildPermitAttendForm(BuildContext context) {
//     return BlocListener<PresensiBloc, PresensiState>(
//       listener: (context, state) {
//         state.maybeWhen(
//           orElse: () => {},
//           uploadedFile: (filePath) {
//             setState(() {
//               this.filePath = filePath;
//             });
//           },
//         );
//       },
//       child: FilePickerUpload(
//           nameFile: filePath,
//           selectFile: () async {
//             context.read<PresensiBloc>().add(const PresensiEvent.uploadFile());
//           }),
//     );
//   }

//   Widget _buildSubmitAttendanceButton(BuildContext context) {
//     return SizedBox(
//       width: 260,
//       height: 60,
//       child: BlocConsumer<AddPresensiBloc, AddPresensiState>(
//         listener: (context, state) {
//           state.maybeWhen(
//               orElse: () {},
//               error: (message) => ScaffoldMessenger.of(context)
//                   .showSnackBar(SnackBar(content: Text(message))),
//               loaded: (message) {
//                 ScaffoldMessenger.of(context)
//                     .showSnackBar(SnackBar(content: Text(message)));
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const CheckoutPage()));
//               });
//         },
//         builder: (context, state) {
//           return state.maybeWhen(
//             orElse: () {
//               return ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFF17a2b8),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   onPressed: () {
//                     context.read<AddPresensiBloc>().add(
//                         AddPresensiEvent.addPresensi(
//                             latitude: latitude!,
//                             longitude: longitude!,
//                             status: status!,
//                             filePath: filePath));
//                   },
//                   child: const Text(
//                     'Simpan Presensi',
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ));
//             },
//             loading: () {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presensi_app/core/components/custom_text_field.dart';
import 'package:presensi_app/presentation/presensi/bloc/add_presensi/add_presensi_bloc.dart';
import 'package:presensi_app/presentation/presensi/bloc/presensi/presensi_bloc.dart';
import 'package:presensi_app/presentation/presensi/bloc/upload_presensi/upload_presensi_bloc.dart';
import 'package:presensi_app/presentation/presensi_success/presensi_success_page.dart';
import '../../../data/datasource/auth_local_datasource.dart';
import '../../../data/models/responses/login_response_model.dart';
import '../../profile/bloc/profile/account_bloc.dart';
import '../../home/bloc/get_position/get_position_bloc.dart';
import '../../home/widgets/custom_dropdown.dart';
import '../../home/widgets/file_picker_upload.dart';

// ignore: must_be_immutable
class PresensiPage extends StatefulWidget {
  PresensiPage({super.key});

  @override
  State<PresensiPage> createState() => _PresensiPageState();
}

class _PresensiPageState extends State<PresensiPage> {
  String? status = 'hadir';
  String filePath = '';
  final PageController _pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    isAuth();
    super.initState();
  }

  void isAuth() async {
    final isAuth = await AuthLocalDatasource().isAuth();
    if (isAuth) {
      context.read<AccountBloc>().add(const AccountEvent.getAccount());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbarHeader(context),
      body: SafeArea(child: BlocBuilder<PresensiBloc, PresensiState>(
        builder: (context, state) {
          final currentPage = state.maybeMap(
            page: (pageState) => pageState.page,
            orElse: () => 0,
          );

          return Column(
            children: [
              _buildStatusAttendanceOption(context),
              SizedBox(
                height: 18,
              ),
              _buildPageIndicator(state, context),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  physics: NeverScrollableScrollPhysics(),
                  // physics: BouncingScrollPhysics(),
                  onPageChanged: (index) {},
                  children: [
                    _buildUserInfoForm(context),
                    status == 'hadir'
                        ? _buildPositionLocationUser(context)
                        : _buildAbsenceForm(context),
                  ],
                ),
              ),
              BlocBuilder<GetPositionBloc, GetPositionState>(
                builder: (context, state) {
                  final latitude = state.maybeMap(
                    orElse: () => null,
                    loadedPosition: (locationData) =>
                        locationData.position.latitude,
                  );
                  final longitude = state.maybeMap(
                    orElse: () => null,
                    loadedPosition: (locationData) =>
                        locationData.position.longitude,
                  );
                  return BlocListener<AddPresensiBloc, AddPresensiState>(
                      listener: (context, state) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const PresensiSuccessPage()));
                      },
                      child: _buildAttendanceButton(
                        context,
                        currentPage == 1 ? 'Selesai' : 'Lanjutkan',
                        null,
                        Colors.black,
                        currentPage == 0
                            ? () {
                                context
                                    .read<PresensiBloc>()
                                    .add(const PresensiEvent.nextPage());
                                _pageController.jumpToPage(currentPage + 1);
                              }
                            : () {
                                context.read<AddPresensiBloc>().add(
                                      AddPresensiEvent.addPresensi(
                                        latitude: latitude.toString(),
                                        longitude: longitude.toString(),
                                        status: status!,
                                        filePath: filePath,
                                      ),
                                    );
                              },
                      )

                      // ElevatedButton(
                      //   onPressed: currentPage == 0
                      //       ? () {
                      //           context
                      //               .read<PresensiBloc>()
                      //               .add(const PresensiEvent.nextPage());
                      //           _pageController.jumpToPage(currentPage + 1);
                      //         }
                      //       : () {
                      //           context.read<AddPresensiBloc>().add(
                      //                 AddPresensiEvent.addPresensi(
                      //                   latitude: latitude.toString(),
                      //                   longitude: longitude.toString(),
                      //                   status: status!,
                      //                   filePath: filePath,
                      //                 ),
                      //               );
                      //         },
                      //   child: Text(currentPage == 1 ? 'Selesai' : 'Lanjutkan'),
                      // ),
                      );
                },
              ),
            ],
          );
        },
      )),
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

  Widget _buildStatusAttendanceOption(BuildContext context) {
    List<String> statusPresensi = ['hadir', 'izin', 'sakit', 'cuti'];
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: CustomDropdown(
          value: statusPresensi[0],
          items: statusPresensi,
          onChanged: (value) {
            // context.read<PresensiBloc>().add(
            //       PresensiEvent.setAttendanceStatus(value!),
            //     );

            setState(() {
              status = value;
            });
          },
          label: 'Status Presensi'),
    );
  }

  // Indikator garis navigasi
  Widget _buildPageIndicator(PresensiState state, BuildContext context) {
    final currentPage = state.maybeMap(
      page: (pageState) => pageState.page,
      orElse: () => 0,
    );
    return Column(
      children: [
        Container(
          height: 4,
          width: double.infinity, // Garis sepanjang layar
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(2, (index) {
              return AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: currentPage == index
                    ? MediaQuery.of(context).size.width * 0.6
                    : MediaQuery.of(context).size.width * 0.3,
                height: 4,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: currentPage == index ? Colors.blueAccent : Colors.grey,
                  borderRadius: BorderRadius.circular(2),
                ),
              );
            }),
          ),
        ),
        SizedBox(height: 8),
        Text('Step ${currentPage + 1} of 2', style: TextStyle(fontSize: 16)),
      ],
    );
  }

  // Form Identitas User
  Widget _buildUserInfoForm(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _phoneController = TextEditingController();
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        final accountData = state.mapOrNull(
          loaded: (loadedState) => loadedState.user,
          error: (errorState) => null,
        );

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextField(
                    controller: _nameController..text = accountData?.name ?? '',
                    label: 'Nama Lengkap',
                    readOnly: true,
                    preffixIcon: Icons.person),
                SizedBox(height: 16),
                CustomTextField(
                    controller: _emailController
                      ..text = accountData?.email ?? '',
                    label: 'Email',
                    readOnly: false,
                    preffixIcon: Icons.email),
                SizedBox(height: 16),
                CustomTextField(
                  controller: _phoneController..text = accountData?.email ?? '',
                  label: 'Phone',
                  readOnly: true,
                  preffixIcon: Icons.phone,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Form Identitas User
  Widget _buildPositionLocationUser(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          BlocBuilder<GetPositionBloc, GetPositionState>(
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  loadedPosition: (locationData) {
                    final latitude = locationData.latitude;
                    final longitude = locationData.longitude;
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          CustomTextField(
                            controller: TextEditingController()
                              ..text = latitude.toString(),
                            label: 'Latitude',
                            readOnly: true,
                          ),
                          SizedBox(height: 10),
                          CustomTextField(
                            controller: TextEditingController()
                              ..text = longitude.toString(),
                            label: 'Longitude',
                            readOnly: true,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // BlocBuilder<GetPositionBloc, GetPositionState>(
                          //   builder: (context, state) {
                          //     return state.maybeWhen(
                          //         orElse: () {
                          //           return const Center(
                          //             child: CircularProgressIndicator(),
                          //           );
                          //         },
                          //         loadedPosition: (locationData) {
                          //           return GoogleMap(
                          //             zoomGesturesEnabled: false,
                          //             tiltGesturesEnabled: false,
                          //             rotateGesturesEnabled: true,
                          //             scrollGesturesEnabled: false,
                          //             myLocationEnabled: true,
                          //             initialCameraPosition: CameraPosition(
                          //               target: LatLng(latitude, longitude),
                          //               zoom: 15,
                          //             ),
                          //             markers: {
                          //               Marker(
                          //                 markerId: MarkerId("Lokasi Anda"),
                          //                 position:
                          //                     LatLng(latitude, longitude),
                          //               ),
                          //             },
                          //           );
                          //         },
                          //         error: (message) => Center(
                          //               child: Text(message),
                          //             ));
                          //   },
                          // ),
                        ],
                      ),
                    );
                  },
                  error: (message) => Center(
                        child: Column(
                          children: [
                            Text(message),
                            ElevatedButton(
                                onPressed: () {
                                  context.read<GetPositionBloc>().add(
                                      const GetPositionEvent
                                          .getCurrentLocation());
                                },
                                child: Text("Sesuaikan Koordinat GPS")),
                          ],
                        ),
                      ));
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAbsenceForm(BuildContext context) {
    return BlocListener<UploadPresensiBloc, UploadPresensiState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () => {},
            uploadedFile: (filePath) {
              setState(() {
                this.filePath = filePath;
              });
            },
          );
        },
        child: FilePickerUpload(
            nameFile: filePath,
            selectFile: () async {
              context
                  .read<UploadPresensiBloc>()
                  .add(const UploadPresensiEvent.uploadFile());
            }));
  }

  Widget _buildAttendanceButton(BuildContext context, String text,
      IconData? icon, Color iconColor, VoidCallback onPressed,
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
                    color: Colors.white),
              )
            ],
          )),
    );
  }
}
