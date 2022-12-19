import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

  openMapsSheet(context) async {
    try {
      final coords = Coords(37.759392, -122.5107336);
      const title = "Ocean Beach";
      final availableMaps = await MapLauncher.installedMaps;
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Wrap(
                children: <Widget>[
                  for (var map in availableMaps)
                    ListTile(
                      onTap: () => map.showMarker(
                        coords: coords,
                        title: title,
                      ),
                      title: Text(map.mapName),
                      leading: SvgPicture.asset(
                        map.icon,
                        height: 30.0,
                        width: 30.0,
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      );
    } catch (e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return   Directionality(
      textDirection: TextDirection.rtl,
      // child: TextButton(
      //     onPressed: () async {
      //       final availableMaps =
      //       await MapLauncher.installedMaps;
      //       print(
      //           availableMaps); // [AvailableMap { mapName: Google Maps, mapType: google }, ...]
      //       await availableMaps.first.showMarker(
      //         coords: Coords(
      //             37.759392, -122.5107336
      //         ),
      //         title: "Ocean Beach",
      //       );
      //     },
      //   child: Text('Show Maps'),
      // ),
      child:Text("sdfsd") ,






    );
  }
}
