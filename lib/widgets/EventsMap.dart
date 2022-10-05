import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class EventsMap extends StatefulWidget {
  const EventsMap({
    Key? key,
  }) : super(key: key);

  @override
  State<EventsMap> createState() => _EventsMapState();
}

class _EventsMapState extends State<EventsMap> {
  // DataService? d1;
  GoogleMapController? mapController;

  void initstate() {
    super.initState();

    // ignore: prefer_collection_literals
    markers = Set.from([]);
  }

  void _onmapcreated(GoogleMapController controller) {
    setState(() {
      markers.add(
        Marker(
            infoWindow: InfoWindow(
              title: 'Hello world',
              snippet: 'Basic',
            ),
            markerId: MarkerId('id-1'),
            position: LatLng(19.0760, 72.8777)),
      );
    });
  }

  //final Completer<GoogleMapController> _controller = Completer();
  Set<Marker> markers = {};

  BitmapDescriptor? customIcon1;

  static final CameraPosition _kGooglePlex = CameraPosition(
    // ignore: prefer_const_constructors
    target: LatLng(19.0760, 72.8777),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: MediaQuery.of(context).size.width * 0.9,
      height: 400,
      child: Column(
        children: [
          SizedBox(
            height: 0,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                markers.add(
                  Marker(
                    icon: BitmapDescriptor.defaultMarkerWithHue(
                        BitmapDescriptor.hueGreen),
                    infoWindow: InfoWindow(
                      title: 'contractor',
                      snippet: 'name',
                    ),
                    markerId: MarkerId('$index'),
                    position: LatLng(
                      double.parse('19.0760'),
                      double.parse('72.8777'),
                    ),
                  ),
                );
                return Container();
              },
            ),
          ),
          Expanded(
            child: Container(
              child: GoogleMap(
                onMapCreated: _onmapcreated,
                initialCameraPosition: _kGooglePlex,
                markers: markers,
              ),
              height: 600,
              width: 400,
            ),
          ),
        ],
      ),
    );
  }
}
