class HomeResponse {
  HomeResponse({
      this.success, 
      this.data, 
      this.message,});

  HomeResponse.fromJson(dynamic json) {
    success = json['success'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    message = json['message'];
  }
  bool? success;
  List<Data>? data;
  String? message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    map['message'] = message;
    return map;
  }

}

class Data {
  Data({
      this.id, 
      this.userId, 
      this.latitude, 
      this.longitude, 
      this.tanggal, 
      this.masuk, 
      this.pulang, 
      this.createdAt, 
      this.updatedAt, 
      this.isHariIni,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    userId = json['user_id'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    tanggal = json['tanggal'];
    masuk = json['masuk'];
    pulang = json['pulang'] ?? "";
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    isHariIni = json['is_hari_ini'];
  }
  int? id;
  int? userId;
  String? latitude;
  String? longitude;
  String? tanggal;
  String? masuk;
  String? pulang;
  String? createdAt;
  String? updatedAt;
  bool? isHariIni;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['user_id'] = userId;
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    map['tanggal'] = tanggal;
    map['masuk'] = masuk;
    map['pulang'] = pulang ?? "";
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['is_hari_ini'] = isHariIni;
    return map;
  }

}