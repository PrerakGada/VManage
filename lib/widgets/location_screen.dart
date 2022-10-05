import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_places_hoc081098/flutter_google_places_hoc081098.dart';
import 'package:google_api_headers/google_api_headers.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';

import '../../Theme/app_colors.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  LocationScreenState createState() => LocationScreenState();
}

class LocationScreenState extends State<LocationScreen> {
  String googleApikey = "AIzaSyCtBgE5sMgynBuXH2AHXCBI9T32_A91VZI";
  GoogleMapController? mapController; //controller for Google map
  CameraPosition? cameraPosition;
  LatLng startLocation = const LatLng(27.6602292, 85.308027);
  String location = "Select Location";

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () async {
        var place = await PlacesAutocomplete.show(
            logo: Text(''),
            context: context,
            apiKey: googleApikey,
            mode: Mode.overlay,
            types: [],
            strictbounds: false,
            components: [Component(Component.country, 'in')],
            //google_map_webservice package
            onError: (err) {
              if (kDebugMode) {
                print(err);
              }
            });

        if (place != null) {
          //form google_maps_webservice package
          final plist = GoogleMapsPlaces(
            apiKey: googleApikey,
            apiHeaders: await const GoogleApiHeaders().getHeaders(),
            //from google_api_headers package
          );
          String placeId = place.placeId ?? "0";
          final detail = await plist.getDetailsByPlaceId(placeId);
          final geometry = detail.result.geometry!;
          final lat = geometry.location.lat;
          final lang = geometry.location.lng;
          setState(() {
            location = place.description!;
            // Provider.of<UserStore>(context, listen: false)
            //     .localPost['location'] = '$lat,$lang';
          });
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Text(location,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: AppColors.greyLight)),
          ),
          Icon(Icons.location_on_outlined),
          // const ImageIcon(
          //   AssetImage('assets/images/arrow_forward.png'),
          //   size: 20,
          // ),
        ],
      ),
    );
  }
}
