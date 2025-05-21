import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:presensi_app/dashboard_page.dart';
import 'package:presensi_app/data/datasource/auth_local_datasource.dart';
import 'package:presensi_app/data/datasource/face_remote_datasource.dart';
import 'package:presensi_app/presentation/presensi/bloc/upload_presensi/upload_presensi_bloc.dart';
import 'package:presensi_app/presentation/profile/bloc/profile/account_bloc.dart';
import 'package:presensi_app/presentation/check_out/bloc/checkout/checkout_bloc.dart';
import 'package:presensi_app/presentation/history_attendance/bloc/history_bloc.dart';
import 'package:presensi_app/presentation/home/bloc/face_scanner/face_scanner_bloc.dart';
import 'package:presensi_app/presentation/home/bloc/get_position/get_position_bloc.dart';

import 'core/utils/size_utils.dart';
import 'data/datasource/auth_remote_datasource.dart';
import 'data/datasource/location_remote_datasource.dart';
import 'data/datasource/presensi_remote_datasource.dart';

import 'presentation/auth/bloc/login/login_bloc.dart';
import 'presentation/account/bloc/logout/logout_bloc.dart';
import 'presentation/auth/bloc/register/register_bloc.dart';
import 'presentation/presensi/bloc/add_presensi/add_presensi_bloc.dart';
import 'presentation/presensi/bloc/presensi/presensi_bloc.dart';
import 'presentation/presensi/bloc/update_presensi/update_presensi_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await initializeDateFormatting('id_ID', null).then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              LoginBloc(authRemoteDatasource: AuthRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) =>
              RegisterBloc(authRemoteDatasource: AuthRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) =>
              LogoutBloc(authRemoteDatasource: AuthRemoteDatasource()),
        ),
        BlocProvider(
            create: (context) => PresensiBloc(
                presensiRemoteDatasource: PresensiRemoteDatasource())),
        BlocProvider(
            create: (context) => GetPositionBloc(LocationRemoteDatasource())),
        BlocProvider(
            create: (context) => AddPresensiBloc(
                presensiRemoteDatasource: PresensiRemoteDatasource(),
                locationRemoteDatasource: LocationRemoteDatasource())),
        BlocProvider(create: (context) => UploadPresensiBloc()),
        BlocProvider(
            create: (context) => UpdatePresensiBloc(
                presensiRemoteDatasource: PresensiRemoteDatasource())),
        BlocProvider(
            create: (context) =>
                FaceScannerBloc(faceRemoteDatasource: FaceRemoteDatasource())),
        BlocProvider(
            create: (context) => CheckoutBloc(
                FaceRemoteDatasource(), PresensiRemoteDatasource())),
        BlocProvider(
            create: (context) => HistoryBloc(PresensiRemoteDatasource())),
        BlocProvider(
            create: (context) => AccountBloc(
                authLocalDatasource: AuthLocalDatasource(),
                faceRemoteDatasource: FaceRemoteDatasource(),
                authRemoteDatasource: AuthRemoteDatasource())),
      ],
      child: Sizer(builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Material App',
          debugShowCheckedModeBanner: false,
          home: DashboardPage(currentTab: 0,),
        );
      }),
    );
  }
}
