// // ignore_for_file: unused_import, unnecessary_null_comparison

// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:vortexapp1/example.dart';
// import 'package:vortexapp1/models/place.dart';
// import 'package:vortexapp1/screens/search.dart';
// import 'package:vortexapp1/services/applicationbloc.dart';
// import 'package:vortexapp1/services/geolocator_service.dart';
// import 'package:vortexapp1/services/places_service.dart';
// import 'package:provider/provider.dart';


// class FindScreen extends StatelessWidget {
//   final locatorService = GeoLocatorService();
//   final placesService = PlacesService();

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         // ignore: missing_required_param
//         FutureProvider(create: (context) => locatorService.getLocation(), initialData: null,),
//         ProxyProvider<Position, Future<List<Place>>>(
//           update: (context, position, places) {
            
//             if ((position != null)) {
//               return placesService.getPlaces(position.latitude, position.longitude);
//             } else {
//               var currentPosition;
//               return placesService.getPlaces(currentPosition.latitude,
//               currentPosition.longitude);
//             }
//           },
//         )
//       ],
//       child: ChangeNotifierProvider(
//         create: (context) => ApplicationBloc(),
//         child: MaterialApp(
//           title: ' GymLocatorApp',
//           theme: ThemeData(
//             primarySwatch: Colors.blue,
//           ),
//           debugShowCheckedModeBanner: false,
//           home: Search(),
//         ),
//       ),
//     );
//   }
// }
