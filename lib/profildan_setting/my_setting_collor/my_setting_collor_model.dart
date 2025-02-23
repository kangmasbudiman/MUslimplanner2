import '/componen/footer_logo/footer_logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'my_setting_collor_widget.dart' show MySettingCollorWidget;
import 'package:flutter/material.dart';

class MySettingCollorModel extends FlutterFlowModel<MySettingCollorWidget> {
  ///  State fields for stateful widgets in this page.

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
