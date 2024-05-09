import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class  Principal extends StatefulWidget {
  const Principal ({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAPS DA JU'),
        centerTitle: true,
        backgroundColor: Colors.teal.shade300,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(48.8534100, - 2.3488000), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/outdoors/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(48.8534100, - 2.3488000),
                    builder: (ctx) => Container(
                      child: Icon(Icons.airplanemode_on_outlined, color: Colors.teal),
                    ),
                  ),
                ],
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(-23.5945, - 48.053923),
                    builder: (ctx) => Container(
                      child: Icon(Icons.airplanemode_on_outlined, color: Colors.teal),
                    ),
                  ),
                ],
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(23.1165, - 82.388223),
                    builder: (ctx) => Container(
                      child: Icon(Icons.airplanemode_on_outlined, color: Colors.teal),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
