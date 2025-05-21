import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/datasource/auth_local_datasource.dart';
import '../bloc/history_bloc.dart';

class HistoryAttendancePage extends StatefulWidget {
  const HistoryAttendancePage({super.key});

  @override
  State<HistoryAttendancePage> createState() => _HistoryAttendancePageState();
}

class _HistoryAttendancePageState extends State<HistoryAttendancePage> {
  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    final isAuth = await AuthLocalDatasource().isAuth();
    if (isAuth) {
      context
          .read<HistoryBloc>()
          .add(const HistoryEvent.getHistoryAttendance());
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: _buildHistoryTable(context),
          )
        ],
      ),
    );
  }

  Widget _buildHistoryTable(BuildContext context) {
    return BlocBuilder<HistoryBloc, HistoryState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (attendances) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: DataTable2(
                  columnSpacing: 12,
                  horizontalMargin: 12,
                  minWidth: 600,
                  smRatio: 1.5,
                  lmRatio: 1.5,
                  border: const TableBorder(
                      top: BorderSide(color: Colors.grey, width: 2),
                      bottom: BorderSide(color: Colors.grey, width: 2),
                      left: BorderSide(color: Colors.grey, width: 2),
                      right: BorderSide(color: Colors.grey, width: 2),
                      verticalInside: BorderSide(color: Colors.grey, width: 2),
                      horizontalInside:
                          BorderSide(color: Colors.grey, width: 2)),
                  headingRowDecoration: const BoxDecoration(
                    color: Color(0xFF0B8FAC),
                  ),
                  columns: const [
                    DataColumn2(
                      fixedWidth: 140,
                      label: Text(
                        'Tanggal',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    DataColumn2(
                      fixedWidth: 70,
                      label: Text(
                        'Waktu\n Masuk',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    DataColumn2(
                      fixedWidth: 70,
                      label: Text(
                        'Waktu\n Pulang',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    DataColumn2(
                      fixedWidth: 50,
                      label: Text(
                        'Status',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                  rows: List.generate(
                    attendances.presensi.length,
                    (index) => DataRow(
                      cells: [
                        DataCell(Text(attendances.presensi[index].tanggal!)),
                        DataCell(Text(attendances.presensi[index].masuk!)),
                        DataCell(
                            Text(attendances.presensi[index].pulang ?? '-')),
                        DataCell(Text(attendances.presensi[index].status!)),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
