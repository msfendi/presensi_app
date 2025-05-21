import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../data/datasource/location_remote_datasource.dart';

part 'get_position_event.dart';
part 'get_position_state.dart';
part 'get_position_bloc.freezed.dart';

class GetPositionBloc extends Bloc<GetPositionEvent, GetPositionState> {
  final LocationRemoteDatasource locationRemoteDatasource;
  GetPositionBloc(this.locationRemoteDatasource) : super(_Initial()) {
    on<_GetStatusLocation>((event, emit) async {
      emit(_Loading());
      final locationData = await locationRemoteDatasource.determinePosition();

      double startLatitude = locationData.latitude;
      double startLongitude = locationData.longitude;
      double endLatitude = -7.5650513;
      double endLongitude = 110.7357291;

      // print('Start Latitude: $startLatitude');
      // print('Start Longitude: $startLongitude');

      double distanceInMeters = Geolocator.distanceBetween(
          startLatitude, startLongitude, endLatitude, endLongitude);
      // print('Distance in meters: $distanceInMeters');
      if (distanceInMeters < 10) {
        emit(_LoadedStatus(
            'Lokasi anda berada di kantor, Silahkan melakukan presensi'));
      } else {
        emit(_Error('Lokasi anda tidak berada di kantor'));
      }
    });

    on<_GetCurrentLocation>((event, emit) async {
      emit(_Loading());
      final locationData = await locationRemoteDatasource.determinePosition();
      emit(_LoadedPosition(locationData));
    });
  }
}
