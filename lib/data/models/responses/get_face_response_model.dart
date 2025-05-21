import 'dart:convert';

class GetFaceResponse {
  final String? status;
  final String? message;
  final Face? data;

  GetFaceResponse({
    this.status,
    this.message,
    this.data,
  });

  factory GetFaceResponse.fromJson(String str) =>
      GetFaceResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GetFaceResponse.fromMap(Map<String, dynamic> json) => GetFaceResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Face.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data": data?.toMap(),
      };
}

class Face {
  final int? id;
  final int? userId;
  final String? faceData;
  final String? imagePath;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Face({
    this.id,
    this.userId,
    this.faceData,
    this.imagePath,
    this.createdAt,
    this.updatedAt,
  });

  factory Face.fromJson(String str) => Face.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Face.fromMap(Map<String, dynamic> json) => Face(
        id: json["id"],
        userId: json["user_id"],
        faceData: json["face_data"],
        imagePath: json["image_path"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "user_id": userId,
        "face_data": faceData,
        "image_path": imagePath,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
