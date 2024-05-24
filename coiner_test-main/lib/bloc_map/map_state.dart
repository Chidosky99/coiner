import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class MapState {}

class MapInitial extends MapState {}

class MapLoading extends MapState {}

class MapLoaded extends MapState {
  final LatLng currentPosition;
  final List<LatLng> points;
  final Set<Polyline> polylines;

  MapLoaded({
    required this.currentPosition,
    required this.points,
    required this.polylines,
  });
}

class MapError extends MapState {
  final String message;

  MapError(this.message);
}
