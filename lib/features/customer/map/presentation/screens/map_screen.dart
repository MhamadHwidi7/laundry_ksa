import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/image_constant.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  late BitmapDescriptor icon;
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  Set<Marker> markers = Set();
  LatLng startLocation = LatLng(37.42796133580664, -122.085749655962);

  addMarkers() async {
    BitmapDescriptor markerbitmap = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration.empty, ImageConstants.mapMarkerIcon);

    markers.add(Marker(
      markerId: MarkerId(startLocation.toString()),
      position: startLocation,
      infoWindow: InfoWindow(
        title: TextConstants.infoWindowSetLocationText,
      ),
      icon: markerbitmap,
    ));
    print(markers);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: startLocation,
          zoom: 14.0,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: markers,
      ),
    );
  }
}

class SetLocationScreen extends StatelessWidget {
  const SetLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Stack(
        children: [
          Positioned.directional(
            textDirection: TextDirection.rtl,
            height: context.screenHeight * 0.6,
            width: context.screenWidth,
            child: MapSample(),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    TextConstants.deliveryLocationText,
                    style: TextStyle(
                        fontFamily: TextConstants.openSans,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "....",
                    style: TextStyle(
                        fontFamily: TextConstants.openSans,
                        fontSize: 10,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Divider(),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    TextConstants.addressDetailsText,
                    style: TextStyle(
                        fontFamily: TextConstants.openSans,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        TextConstants.homeTypeText,
                        style: TextStyle(
                            fontFamily: TextConstants.openSans,
                            fontSize: 12,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        width: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: CupertinoRadio(
                          value: true,
                          groupValue: true,
                          onChanged: (s) {},
                        ),
                      ),
                      Text(
                        TextConstants.apartmentText,
                        style: TextStyle(
                            fontFamily: TextConstants.openSans,
                            fontSize: 11,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: CupertinoRadio(
                          value: true,
                          groupValue: false,
                          onChanged: (s) {},
                        ),
                      ),
                      Text(
                        TextConstants.villaText,
                        style: TextStyle(
                            fontFamily: TextConstants.openSans,
                            fontSize: 11,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: CupertinoTextField(
                          placeholder: TextConstants.buildingNumberText,
                          placeholderStyle: TextStyle(
                              color: ColorConstants.greyTextColor,
                              fontSize: 11,
                              fontFamily: TextConstants.openSans,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: CupertinoTextField(
                          placeholder: TextConstants.apartmentNumberText,
                          placeholderStyle: TextStyle(
                              color: ColorConstants.greyTextColor,
                              fontSize: 11,
                              fontFamily: TextConstants.openSans,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    TextConstants.addressDetailsLocationText,
                    style: TextStyle(
                        fontSize: 11,
                        fontFamily: TextConstants.openSans,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: SizedBox(
                      width: context.screenWidth > 600 ? 350 : 300,
                      child: CupertinoButton(
                        color: ColorConstants.purpleAppColor,
                        borderRadius: BorderRadius.circular(25.0),
                        onPressed: () {},
                        child: Text(
                          TextConstants.saveText,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
