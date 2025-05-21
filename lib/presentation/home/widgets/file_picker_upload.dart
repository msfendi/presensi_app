import 'package:flutter/material.dart';

class FilePickerUpload extends StatelessWidget {
  final String nameFile;
  final Function selectFile;
  const FilePickerUpload(
      {super.key, required this.selectFile, required this.nameFile});

  @override
  Widget build(BuildContext context) {
    final TextEditingController txtFilePicker = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
                readOnly: true,
                controller: txtFilePicker,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  hintText: nameFile == '' ? 'Pilih file' : nameFile,
                  contentPadding: EdgeInsets.all(10.0),
                ),
                style: const TextStyle(fontSize: 16.0)),
          ),
          const SizedBox(width: 5),
          ElevatedButton.icon(
            icon: const Icon(
              Icons.upload_file,
              color: Colors.white,
              size: 18.0,
            ),
            label: const Text('Pilih File', style: TextStyle(fontSize: 14.0)),
            onPressed: () {
              selectFile();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlue,
              minimumSize: const Size(122, 48),
              maximumSize: const Size(122, 48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
