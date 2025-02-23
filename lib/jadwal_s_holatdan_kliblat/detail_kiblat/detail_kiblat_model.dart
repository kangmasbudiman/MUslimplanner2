import '/componen/date_componen/date_componen_widget.dart';
import '/componen/footer_logo/footer_logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'detail_kiblat_widget.dart' show DetailKiblatWidget;
import 'package:flutter/material.dart';

class DetailKiblatModel extends FlutterFlowModel<DetailKiblatWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for dateComponen component.
  late DateComponenModel dateComponenModel;
  // Model for footerLogo component.
  late FooterLogoModel footerLogoModel;

  @override
  void initState(BuildContext context) {
    dateComponenModel = createModel(context, () => DateComponenModel());
    footerLogoModel = createModel(context, () => FooterLogoModel());
  }

  @override
  void dispose() {
    dateComponenModel.dispose();
    footerLogoModel.dispose();
  }
}
