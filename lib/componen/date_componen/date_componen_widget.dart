import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'date_componen_model.dart';
export 'date_componen_model.dart';

class DateComponenWidget extends StatefulWidget {
  const DateComponenWidget({super.key});

  @override
  State<DateComponenWidget> createState() => _DateComponenWidgetState();
}

class _DateComponenWidgetState extends State<DateComponenWidget> {
  late DateComponenModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DateComponenModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final daftarPekan =
            functions.getCurrentWeek(getCurrentTimestamp)?.toList() ?? [];

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(daftarPekan.length, (daftarPekanIndex) {
              final daftarPekanItem = daftarPekan[daftarPekanIndex];
              return Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: Container(
                  width: 40.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      functions.checkIfDateIsToday(
                          daftarPekanItem,
                          FlutterFlowTheme.of(context).primaryText,
                          FlutterFlowTheme.of(context).secondaryBackground,
                          getCurrentTimestamp),
                      FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          2.0,
                        ),
                      )
                    ],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    border: Border.all(
                      color: valueOrDefault<Color>(
                        functions.checkIfDateIsToday(
                            daftarPekanItem,
                            FlutterFlowTheme.of(context).secondaryBackground,
                            FlutterFlowTheme.of(context).primaryText,
                            getCurrentTimestamp),
                        FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      width: 1.0,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          dateTimeFormat("E", daftarPekanItem),
                          '-',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: valueOrDefault<Color>(
                                functions.checkIfDateIsToday(
                                    daftarPekanItem,
                                    FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    FlutterFlowTheme.of(context).primaryText,
                                    getCurrentTimestamp),
                                FlutterFlowTheme.of(context).primaryText,
                              ),
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Stack(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          children: [
                            Container(
                              width: 25.0,
                              height: 25.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                dateTimeFormat("d", daftarPekanItem),
                                '-',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).divide(const SizedBox(width: 8.0)),
          ),
        );
      },
    );
  }
}
