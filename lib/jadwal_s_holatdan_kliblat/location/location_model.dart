import '/flutter_flow/flutter_flow_util.dart';
import 'location_widget.dart' show LocationWidget;
import 'package:flutter/material.dart';

class LocationModel extends FlutterFlowModel<LocationWidget> {
  ///  Local state fields for this page.

  String? city;

  String? country;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  // Stores action output result for [Custom Action - locationToCountry] action in Container widget.
  String? nameCountry;
  // Stores action output result for [Custom Action - locationToCityName] action in Container widget.
  String? nameCity;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
