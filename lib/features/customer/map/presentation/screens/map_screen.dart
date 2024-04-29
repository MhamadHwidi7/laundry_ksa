// import 'dart:async';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:go_router/go_router.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:laundry_app/core/constants/color_constants.dart';
// import 'package:laundry_app/core/constants/image_constant.dart';
// import 'package:laundry_app/core/constants/router_constants.dart';
// import 'package:laundry_app/core/constants/text_constants.dart';
// import 'package:laundry_app/core/extensions/screen_size_extension.dart';
// import 'package:laundry_app/features/customer/map/presentation/controller/radio_button_controller.dart';
// import 'package:laundry_app/features/customer/map/presentation/widgets/set_location_sheet_widget.dart';

// class MapSample extends StatefulWidget {
//   const MapSample({super.key});

//   @override
//   State<MapSample> createState() => MapSampleState();
// }

// class MapSampleState extends State<MapSample> {
//   late BitmapDescriptor icon;
//   final Completer<GoogleMapController> _controller =
//       Completer<GoogleMapController>();
//   Set<Marker> markers = Set();
//   LatLng startLocation = const LatLng(37.42796133580664, -122.085749655962);

//   addMarkers() async {
//     BitmapDescriptor markerbitmap = await BitmapDescriptor.fromAssetImage(
//         ImageConfiguration.empty, ImageConstants.mapMarkerIcon);

//     markers.add(Marker(
//       markerId: MarkerId(startLocation.toString()),
//       position: startLocation,
//       infoWindow: const InfoWindow(
//         title: TextConstants.infoWindowSetLocationText,
//       ),
//       icon: markerbitmap,
//     ));
//     print(markers);
//     setState(() {});
//   }

//   @override
//   void initState() {
//     addMarkers();
//     // TODO: implement initState
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       child: GoogleMap(
//         myLocationEnabled: true,
//         padding: const EdgeInsets.only(top: 0, right: 0, left: 0),
//         myLocationButtonEnabled: true,
//         compassEnabled: true,
//         mapToolbarEnabled: true,
//         mapType: MapType.normal,
//         initialCameraPosition: CameraPosition(
//           target: startLocation,
//           zoom: 14.0,
//         ),
//         onMapCreated: (GoogleMapController controller) {
//           _controller.complete(controller);
//         },
//         markers: markers,
//       ),
//     );
//   }
// }

// class SetLocationScreen extends StatelessWidget {
//   const SetLocationScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       child: Stack(
//         children: [
//           Positioned(
//             height: context.screenHeight * 0.61,
//             width: context.screenWidth,
//             child: const MapSample(),
//           ),
//           SetLocationSheetWidget()
//         ],
//       ),
//     );
//   }
// }
