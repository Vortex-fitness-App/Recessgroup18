import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as LatLng;
import 'package:geocoder/geocoder.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  late final MapController mapController = MapController();

  double lat = 0.3095695;
  double long = 32.6092321;

  double lat1 = 0.328015;
  double long1 = 32.570235;

  double lat2 = 0.3310725;
  double long2 = 32.5725778;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.5),
            child: const BackButton(
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor.withOpacity(0.5),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.near_me,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: FlutterMap(
        mapController: mapController,
        options: MapOptions(
          center: LatLng.LatLng(lat, long),
          zoom: 17.0,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate:
                "https://api.mapbox.com/styles/v1/okellomarvin/ckwrra30v1wtw15r2qimca1km/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoib2tlbGxvbWFydmluIiwiYSI6ImNrd3JxZDZuYzB6MmkydWxjbDhhZ2UzM2EifQ.Wh7_NqLOx3vIdjY8D7BwHw",
            additionalOptions: {
              'accessToken':
                  'pk.eyJ1Ijoib2tlbGxvbWFydmluIiwiYSI6ImNrd3JxZDZuYzB6MmkydWxjbDhhZ2UzM2EifQ.Wh7_NqLOx3vIdjY8D7BwHw',
              'id': 'mapbox.mapbox-streets-v8'
            },
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng.LatLng(lat, long),
                builder: (ctx) => Container(
                  child: const Icon(Icons.gps_fixed_rounded),
                ),
              ),
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng.LatLng(lat1, long1),
                builder: (ctx) => Container(
                  child: const Icon(Icons.gps_fixed_rounded),
                ),
              ),
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng.LatLng(lat2, long2),
                builder: (ctx) => Container(
                  child: const Icon(Icons.gps_fixed_rounded),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 200,
        // width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Container(
                  width: 20,
                  height: 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "GYM LOCATIONS",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        child: Icon(
                          Icons.pin_drop,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: Locationtext(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        child: Icon(
                          Icons.pin_drop,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: LocationText01(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        child: Icon(
                          Icons.pin_drop,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: LocationText02(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Locationtext extends StatefulWidget {
  const Locationtext({Key? key, Color? color}) : super(key: key);

  @override
  _LocationtextState createState() => _LocationtextState();
}

class _LocationtextState extends State<Locationtext> {
  String location = '';
  double lat1 = 0.328015;
  double long1 = 32.570235;
  @override
  void initState() {
    super.initState();
    _getLocation(lat1, long1);
  }

  // From coordinates
  _getLocation(double lat1, double long1) async {
    final coordinates = Coordinates(lat1, long1);
    var addresses =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);
    var first = addresses.first;

    setState(() {
      location = first.addressLine;
    });
    print(first.featureName);
    print("${first.featureName} : ${first.addressLine}");
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      location,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.w400,
        fontSize: 20,
      ),
    );
  }
}

class LocationText01 extends StatefulWidget {
  const LocationText01({Key? key}) : super(key: key);

  @override
  _LocationText01State createState() => _LocationText01State();
}

class _LocationText01State extends State<LocationText01> {
  String location = '';
  double lat = 0.3095695;
  double long = 32.6092321;
  @override
  void initState() {
    super.initState();
    _getLocation(lat, long);
  }

  // From coordinates
  _getLocation(double lat, double long) async {
    final coordinates = Coordinates(lat, long);
    var addresses =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);
    var first = addresses.first;

    setState(() {
      location = first.addressLine;
    });
    print(first.featureName);
    print("${first.featureName} : ${first.addressLine}");
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      location,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.w400,
        fontSize: 20,
      ),
    );
  }
}

class LocationText02 extends StatefulWidget {
  const LocationText02({Key? key}) : super(key: key);

  @override
  _LocationText02State createState() => _LocationText02State();
}

class _LocationText02State extends State<LocationText02> {
  String location = '';
  double lat2 = 0.3310725;
  double long2 = 32.5725778;
  @override
  void initState() {
    super.initState();
    _getLocation(lat2, long2);
  }

  // From coordinates
  _getLocation(double lat2, double long2) async {
    final coordinates = Coordinates(lat2, long2);
    var addresses =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);
    var first = addresses.first;

    setState(() {
      location = first.addressLine;
    });
    print(first.featureName);
    print("${first.featureName} : ${first.addressLine}");
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      location,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.w400,
        fontSize: 20,
      ),
    );
  }
}
