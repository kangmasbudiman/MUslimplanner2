import '/componen/footer_logo/footer_logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'verivication_success_widget.dart' show VerivicationSuccessWidget;
import 'package:flutter/material.dart';

class VerivicationSuccessModel
    extends FlutterFlowModel<VerivicationSuccessWidget> {
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
