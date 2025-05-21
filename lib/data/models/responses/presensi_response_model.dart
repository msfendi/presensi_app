import 'dart:convert';

class PresensiResponse {
  final bool success;
  final List<Presensi> presensi;
  final String message;

  PresensiResponse({
    required this.success,
    required this.presensi,
    required this.message,
  });

  factory PresensiResponse.fromJson(String str) =>
      PresensiResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PresensiResponse.fromMap(Map<String, dynamic> json) =>
      PresensiResponse(
        success: json["success"],
        presensi:
            List<Presensi>.from(json["data"].map((x) => Presensi.fromMap(x))),
        message: json["message"],
      );

  Map<String, dynamic> toMap() => {
        "success": success,
        "data": List<dynamic>.from(presensi.map((x) => x.toMap())),
        "message": message,
      };
}

class Presensi {
  final int? id;
  final int? userId;
  final String? latitude;
  final String? longitude;
  final String? tanggal;
  final String? masuk;
  final String? pulang;
  final String? status;
  final dynamic originPath;
  final dynamic previewPath;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final bool? isHariIni;

  Presensi({
    this.id,
    this.userId,
    this.latitude,
    this.longitude,
    this.tanggal,
    this.masuk,
    this.pulang,
    this.status,
    this.originPath,
    this.previewPath,
    this.createdAt,
    this.updatedAt,
    this.isHariIni,
  });

  factory Presensi.fromJson(String str) => Presensi.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Presensi.fromMap(Map<String, dynamic> json) => Presensi(
        id: json["id"],
        userId: json["user_id"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        tanggal: json["tanggal"],
        masuk: json["masuk"],
        pulang: json["pulang"],
        status: json["status"],
        originPath: json["origin_path"],
        previewPath: json["preview_path"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        isHariIni: json["is_hari_ini"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "user_id": userId,
        "latitude": latitude,
        "longitude": longitude,
        "tanggal": tanggal,
        "masuk": masuk,
        "pulang": pulang,
        "status": status,
        "origin_path": originPath,
        "preview_path": previewPath,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "is_hari_ini": isHariIni,
      };
}
