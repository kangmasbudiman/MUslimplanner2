// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:geocoding/geocoding.dart';

Future<String> locationToCityName(LatLng currentLocation) async {
  // Add your function code here!
  try {
    List<Placemark> placemarks = await placemarkFromCoordinates(
        currentLocation.latitude, currentLocation.longitude);

    var address = '';

    if (placemarks.isNotEmpty) {
      // Concatenate non-null components of the address
      var streets = placemarks.reversed
          .map((placemark) => placemark.street)
          .where((street) => street != null);

      // Filter out unwanted parts
      streets = streets.where((street) =>
          street!.toLowerCase() !=
          placemarks.reversed.last.locality!
              .toLowerCase()); // Remove city names
      streets = streets
          .where((street) => !street!.contains('+')); // Remove street codes

      // address += streets.join(', ');

      // address += ', ${placemarks.reversed.last.subLocality ?? ''}';
      // address += ', ${placemarks.reversed.last.locality ?? ''}';
      address += '${placemarks.reversed.last.subAdministrativeArea ?? ''}';
      // address += ', ${placemarks.reversed.last.administrativeArea ?? ''}';
      // address += ', ${placemarks.reversed.last.postalCode ?? ''}';
      // address += ', ${placemarks.reversed.last.country ?? ''}';
    }

    print(
        "Your Address for ($currentLocation.latitute, $currentLocation.longitude) is: $address");

    return address;
  } catch (e) {
    print("Error getting placemarks: $e");
    return "No Address";
  }
}
