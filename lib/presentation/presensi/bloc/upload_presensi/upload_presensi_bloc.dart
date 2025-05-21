import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_presensi_event.dart';
part 'upload_presensi_state.dart';
part 'upload_presensi_bloc.freezed.dart';

class UploadPresensiBloc
    extends Bloc<UploadPresensiEvent, UploadPresensiState> {
  UploadPresensiBloc() : super(_Initial()) {
    on<_UploadFile>((event, emit) async {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'], // Hanya memperbolehkan file PDF
      );

      if (result != null) {
        final filePath = result.files.single.path; // Path file yang dipilih
        print('Path File: $filePath');
        // Anda dapat memproses file di sini
        emit(_UploadedFile(filePath!));
      } else {
        print('Tidak ada file yang dipilih');
      }
    });
  }
}
