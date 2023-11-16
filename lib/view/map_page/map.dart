import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:quinart/component/appbar/home_appbar.dart';
import 'package:quinart/component/footer/footer.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(26.526505783682545, 128.0300361181478),
          initialZoom: 13.0,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: const ['a', 'b', 'c'],
          ),
        ],
      ),
      bottomNavigationBar: const HomePageFooter(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF63a697),
        child: const Icon(Icons.home),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
