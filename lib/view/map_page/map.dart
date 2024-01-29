import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart';
import 'package:quinart/component/appbar/home_appbar.dart';
// import 'package:quinart/component/footer/footer.dart';
import 'package:quinart/component/footer/admin_footer.dart';
import 'package:quinart/component/footer/home_button.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Marker> markers = [
      Marker(
          width: 45.0,
          height: 45.0,
          point: const LatLng(26.737943, 128.290088),
          child: Builder(
            builder: ((context) => IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.pets),
                )),
          )),
      Marker(
          width: 45.0,
          height: 45.0,
          point: const LatLng(26.732415, 128.287431),
          child: Builder(
            builder: ((context) => IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.navigation),
                )),
          )),
    ];

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
          MarkerClusterLayerWidget(
            options: MarkerClusterLayerOptions(
              markers: markers,
              builder: (context, markers) {
                return FloatingActionButton(
                  onPressed: null,
                  child: Text(markers.length.toString()),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const HomePageAdminFooter(),
      floatingActionButton: const FooterHomeButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
