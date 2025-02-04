import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'c_omand_model.dart';
export 'c_omand_model.dart';

class COmandWidget extends StatefulWidget {
  const COmandWidget({super.key});

  @override
  State<COmandWidget> createState() => _COmandWidgetState();
}

class _COmandWidgetState extends State<COmandWidget> {
  late COmandModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => COmandModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Stack(
                alignment: const AlignmentDirectional(0.0, 0.0),
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('MyProfile');
                              },
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                color: currentUserDocument?.colorThemes,
                                size: 30.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => Text(
                          'Rate And Command',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: currentUserDocument?.colorThemes,
                                    fontSize: 20.0,
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
            actions: const [],
            centerTitle: false,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 0.0, 30.0),
                  child: Text(
                    'Tells us what can be improved',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            FFAppState().yangDirate = 'Speed & Efficiency';
                            safeSetState(() {});

                            context.pushNamed(
                              'Rateandcomand',
                              queryParameters: {
                                'rateName': serializeParam(
                                  FFAppState().yangDirate,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          text: 'Speed & Efficiency',
                          options: FFButtonOptions(
                            width: 150.0,
                            height: 25.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Inter',
                                  color: () {
                                    if (FFAppState().yangDirate ==
                                        'Speed & Efficiency') {
                                      return FlutterFlowTheme.of(context)
                                          .tertiary;
                                    } else if (FFAppState().yangDirate == '') {
                                      return FlutterFlowTheme.of(context)
                                          .alternate;
                                    } else if (FFAppState().yangDirate !=
                                        'Speed & Efficiency') {
                                      return FlutterFlowTheme.of(context)
                                          .alternate;
                                    } else {
                                      return const Color(0x00000000);
                                    }
                                  }(),
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            FFAppState().yangDirate = 'Themes';
                            safeSetState(() {});

                            context.pushNamed(
                              'Rateandcomand',
                              queryParameters: {
                                'rateName': serializeParam(
                                  FFAppState().yangDirate,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          text: 'Themes',
                          options: FFButtonOptions(
                            width: 150.0,
                            height: 25.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Inter',
                                  color: () {
                                    if (FFAppState().yangDirate == 'Themes') {
                                      return FlutterFlowTheme.of(context)
                                          .tertiary;
                                    } else if (FFAppState().yangDirate == '') {
                                      return FlutterFlowTheme.of(context)
                                          .alternate;
                                    } else if (FFAppState().yangDirate !=
                                        'Themes') {
                                      return FlutterFlowTheme.of(context)
                                          .alternate;
                                    } else {
                                      return const Color(0x00000000);
                                    }
                                  }(),
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          FFAppState().yangDirate = 'Feature';
                          safeSetState(() {});

                          context.pushNamed(
                            'Rateandcomand',
                            queryParameters: {
                              'rateName': serializeParam(
                                FFAppState().yangDirate,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                        text: 'Feature',
                        options: FFButtonOptions(
                          width: 150.0,
                          height: 25.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Inter',
                                color: () {
                                  if (FFAppState().yangDirate == 'Feature') {
                                    return FlutterFlowTheme.of(context)
                                        .tertiary;
                                  } else if (FFAppState().yangDirate == '') {
                                    return FlutterFlowTheme.of(context)
                                        .alternate;
                                  } else if (FFAppState().yangDirate !=
                                      'Feature') {
                                    return FlutterFlowTheme.of(context)
                                        .alternate;
                                  } else {
                                    return const Color(0x00000000);
                                  }
                                }(),
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                              ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          FFAppState().yangDirate = 'Languages';
                          safeSetState(() {});

                          context.pushNamed(
                            'Rateandcomand',
                            queryParameters: {
                              'rateName': serializeParam(
                                FFAppState().yangDirate,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                        text: 'Languages',
                        options: FFButtonOptions(
                          width: 150.0,
                          height: 25.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Inter',
                                color: () {
                                  if (FFAppState().yangDirate == 'Languages') {
                                    return FlutterFlowTheme.of(context)
                                        .tertiary;
                                  } else if (FFAppState().yangDirate == '') {
                                    return FlutterFlowTheme.of(context)
                                        .alternate;
                                  } else if (FFAppState().yangDirate !=
                                      'Languages') {
                                    return FlutterFlowTheme.of(context)
                                        .alternate;
                                  } else {
                                    return const Color(0x00000000);
                                  }
                                }(),
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                              ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 2.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            5.0,
                            3.0,
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
                        color: const Color(0x24000000),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: TextFormField(
                        controller: _model.textController,
                        focusNode: _model.textFieldFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                        maxLines: 10,
                        validator:
                            _model.textControllerValidator.asValidator(context),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => FFButtonWidget(
                      onPressed: () async {
                        _model.apiResultbp9Copyy =
                            await PostRateCommandCall.call(
                          iduser: currentUserUid,
                          command: valueOrDefault<String>(
                            FFAppState().yangDirate,
                            '-',
                          ),
                          rate: FFAppState().totalRate,
                          ulasan: _model.textController.text,
                          nama: currentUserDisplayName,
                        );

                        if ((_model.apiResultbp9Copyy?.succeeded ?? true)) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Command & Rate Succes ',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: const Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                          safeSetState(() {
                            _model.textController?.clear();
                          });
                          FFAppState().totalRate = '';
                          FFAppState().yangDirate = '';
                          safeSetState(() {});
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Failed',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: const Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                        }

                        safeSetState(() {});
                      },
                      text: 'Save',
                      options: FFButtonOptions(
                        width: 380.0,
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: currentUserDocument?.colorThemes,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
