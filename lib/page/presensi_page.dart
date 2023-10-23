import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:presensi_app/models/save_presensi_response.dart';
import 'package:presensi_app/page/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncfusion_flutter_maps/maps.dart';
import 'package:http/http.dart' as http;

class PresensiPage extends StatefulWidget {
   const PresensiPage({Key? key}) : super(key: key);
 
   @override
   State<PresensiPage> createState() => _PresensiPageState();
 }
 
 class _PresensiPageState extends State<PresensiPage> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<String> _token;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _token = _prefs.then((SharedPreferences prefs) {
      return (prefs.getString('token') ?? '');
    });
  }

  Future<LocationData?> _getCurrentLocation() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    Location location = new Location();

    serviceEnabled = await location.serviceEnabled();
    if(!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if(!serviceEnabled) {
        return null;
      }
    }

    permissionGranted = await location.hasPermission();
    if(permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if(permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }


    return await location.getLocation();
  }

  Future savePresensi(latitude, longitude) async {
    SavePresensiResponse? savePresensiResponse;
    Map<String, String> body = {
      'latitude': latitude.toString(),
      'longitude': longitude.toString(),
    };

    Map<String, String> headers = {
      'Authorization': 'Bearer ${await _token}',
    };
    var response = await http.post(Uri.parse('https://yukbimbel.000webhostapp.com/api/save-presensi'), headers: headers, body: body);
    savePresensiResponse = SavePresensiResponse.fromJson(jsonDecode(response.body));

    if(savePresensiResponse.success) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Presensi berhasil disimpan'),
        ));
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Presensi gagal disimpan'),
        ));
    }
  }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 30,)),
          backgroundColor: const Color(0xFF007bff),
          toolbarHeight: 80,
          elevation: 0,
          leadingWidth: 80,
          title: const Text('Absensi Online', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),

       body: FutureBuilder<LocationData?>(
         future: _getCurrentLocation(),
         builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
           if(snapshot.hasData) {
             final LocationData currentLocation = snapshot.data;
             return SafeArea(child: Column(
             children: [
               Container(
                 height: 450,
                 child: SfMaps(layers: [MapTileLayer(
                   initialFocalLatLng: MapLatLng(currentLocation.latitude!, currentLocation.longitude!),
                   initialZoomLevel: 15,
                   initialMarkersCount: 1,
                   urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png", markerBuilder: (BuildContext context, int index,) {
                     return MapMarker(latitude: currentLocation.latitude!, longitude: currentLocation.longitude!, child: const Icon(Icons.location_on, color: Colors.red,),);
                 })]),
               ),
               Container(
                  height: 115,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 260,
                          height: 60, child: ElevatedButton(
                        style: ElevatedButton.styleFrom(

                          primary: const Color(0xFF17a2b8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                          onPressed: () {
                          savePresensi(currentLocation.latitude!, currentLocation.longitude!);
                          }, child: const Text('Simpan Presensi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),))),
                    ]
                  )
                ),
             ],
           ));
           }
           else {
             return const Center(child: CircularProgressIndicator());
           }
         }
       ),
     );
   }
 }
 