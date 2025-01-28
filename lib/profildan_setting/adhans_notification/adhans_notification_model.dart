import '/componen/footer_logo/footer_logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'adhans_notification_widget.dart' show AdhansNotificationWidget;
import 'package:flutter/material.dart';

class AdhansNotificationModel
    extends FlutterFlowModel<AdhansNotificationWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue;
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
