import '/componen/footer_logo/footer_logo_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'kalender_masehi_widget.dart' show KalenderMasehiWidget;
import 'package:flutter/material.dart';

class KalenderMasehiModel extends FlutterFlowModel<KalenderMasehiWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Model for footerLogo component.
  late FooterLogoModel footerLogoModel;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    footerLogoModel = createModel(context, () => FooterLogoModel());
  }

  @override
  void dispose() {
    footerLogoModel.dispose();
  }
}
