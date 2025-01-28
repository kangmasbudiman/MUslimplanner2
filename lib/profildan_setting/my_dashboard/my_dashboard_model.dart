import '/componen/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_dashboard_widget.dart' show MyDashboardWidget;
import 'package:flutter/material.dart';

class MyDashboardModel extends FlutterFlowModel<MyDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}
