import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pesan_premium_version_model.dart';
export 'pesan_premium_version_model.dart';

class PesanPremiumVersionWidget extends StatefulWidget {
  const PesanPremiumVersionWidget({super.key});

  @override
  State<PesanPremiumVersionWidget> createState() =>
      _PesanPremiumVersionWidgetState();
}

class _PesanPremiumVersionWidgetState extends State<PesanPremiumVersionWidget> {
  late PesanPremiumVersionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PesanPremiumVersionModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FFAppState().colorThemes,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Premium Version',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    color: FFAppState().colorFontThemes,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 10.0),
              child: Text(
                'Upgrade to the premium version to save your color settings.',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FFAppState().colorFontThemes,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            const Divider(
              thickness: 1.0,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Premium',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FFAppState().colorFontThemes,
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    '|',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    'Preview',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FFAppState().colorFontThemes,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
