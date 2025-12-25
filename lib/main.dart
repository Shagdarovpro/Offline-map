import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Offline Map - Tashkent')),
        body: FlutterMap(
          options: MapOptions(
            initialCenter: LatLng(41.3111, 69.2797), // центр Ташкента
            initialZoom: 12.0,
          ),
          children: [
            TileLayer(
              urlTemplate: "assets/offline/{z}/{x}/{y}.png",
              tileProvider: AssetTileProvider(),
              maxZoom: 18,
            ),
          ],
        ),
      ),
    );
  }
}
