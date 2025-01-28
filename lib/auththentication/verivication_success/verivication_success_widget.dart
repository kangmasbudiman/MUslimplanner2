import '/componen/footer_logo/footer_logo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'verivication_success_model.dart';
export 'verivication_success_model.dart';

class VerivicationSuccessWidget extends StatefulWidget {
  const VerivicationSuccessWidget({super.key});

  @override
  State<VerivicationSuccessWidget> createState() =>
      _VerivicationSuccessWidgetState();
}

class _VerivicationSuccessWidgetState extends State<VerivicationSuccessWidget> {
  late VerivicationSuccessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerivicationSuccessModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 20.0, 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 170.0,
                height: 170.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Color(0x33000000),
                      offset: Offset(
                        1.0,
                        4.0,
                      ),
                    )
                  ],
                  shape: BoxShape.circle,
                ),
                child: Container(
                  width: 90.0,
                  height: 90.0,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/pngtree-vector-tick-icon-png-image_1028356_1.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                    child: Text(
                      'Success!',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            fontSize: 28.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: Text(
                      'Congratulation, your account has been creates',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('login');
                      },
                      child: Container(
                        width: 319.0,
                        height: 48.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 2.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                1.0,
                                4.0,
                              ),
                            )
                          ],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Back',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              wrapWithModel(
                model: _model.footerLogoModel,
                updateCallback: () => safeSetState(() {}),
                child: const FooterLogoWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
