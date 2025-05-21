import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final String waktuMasuk;
  final String waktuPulang;
  const ActivityCard(
      {super.key, required this.waktuMasuk, required this.waktuPulang});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "My Day Activity",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Waktu Masuk",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            trailing: Text(
              waktuMasuk,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 0,
          ),
          ListTile(
            title: Text(
              "Waktu Pulang",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            trailing: Text(
              waktuPulang,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 0,
          ),
        ],
      ),
    );
  }
}
