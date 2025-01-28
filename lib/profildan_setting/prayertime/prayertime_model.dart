import '/componen/footer_logo/footer_logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'prayertime_widget.dart' show PrayertimeWidget;
import 'package:flutter/material.dart';

class PrayertimeModel extends FlutterFlowModel<PrayertimeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // Model for footerLogo component.
  late FooterLogoModel footerLogoModel;

  @override
  void initState(BuildContext context) {
    footerLogoModel = createModel(context, () => FooterLogoModel());
  }

  @override
  void dispose() {
    footerLogoModel.dispose();
  }
}
