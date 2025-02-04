import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/componen/date_componen/date_componen_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'statistik_model.dart';
export 'statistik_model.dart';

class StatistikWidget extends StatefulWidget {
  const StatistikWidget({super.key});

  @override
  State<StatistikWidget> createState() => _StatistikWidgetState();
}

class _StatistikWidgetState extends State<StatistikWidget> {
  late StatistikModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatistikModel());

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
            title: Stack(
              alignment: const AlignmentDirectional(0.0, 0.0),
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 40.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('HomeScreen');
                            },
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: valueOrDefault<Color>(
                                FFAppState().colorThemes,
                                FlutterFlowTheme.of(context).primary,
                              ),
                              size: 35.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
                  child: Text(
                    'Statistik',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ],
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 20.0, 20.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          wrapWithModel(
                            model: _model.dateComponenModel,
                            updateCallback: () => safeSetState(() {}),
                            child: const DateComponenWidget(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'Summary',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: FutureBuilder<ApiCallResponse>(
                          future: (_model.apiRequestCompleter ??=
                                  Completer<ApiCallResponse>()
                                    ..complete(SunahGroup.getmysummaryCall.call(
                                      iduser: currentUserUid,
                                      tanggal: valueOrDefault<String>(
                                        dateTimeFormat(
                                            "yyyy-MM-dd ", getCurrentTimestamp),
                                        '0',
                                      ),
                                    )))
                              .future,
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 20.0,
                                  height: 20.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).secondary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            final conditionalBuilderGetmysummaryResponse =
                                snapshot.data!;

                            return Builder(
                              builder: (context) {
                                if (SunahGroup.getmysummaryCall.data(
                                      conditionalBuilderGetmysummaryResponse
                                          .jsonBody,
                                    ) !=
                                    null) {
                                  return Visibility(
                                    visible: SunahGroup.getmysummaryCall.data(
                                          conditionalBuilderGetmysummaryResponse
                                              .jsonBody,
                                        ) !=
                                        null,
                                    child: Builder(
                                      builder: (context) {
                                        final resSummary = getJsonField(
                                          conditionalBuilderGetmysummaryResponse
                                              .jsonBody,
                                          r'''$.data[:]''',
                                        ).toList();

                                        return Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children:
                                              List.generate(resSummary.length,
                                                  (resSummaryIndex) {
                                            final resSummaryItem =
                                                resSummary[resSummaryIndex];
                                            return Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: AuthUserStreamWidget(
                                                builder: (context) => Container(
                                                  decoration: BoxDecoration(
                                                    color: currentUserDocument
                                                        ?.colorThemes,
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        blurRadius: 2.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(
                                                          1.0,
                                                          5.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(20.0),
                                                      bottomRight:
                                                          Radius.circular(20.0),
                                                      topLeft:
                                                          Radius.circular(20.0),
                                                      topRight:
                                                          Radius.circular(20.0),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10.0,
                                                                10.0,
                                                                10.0,
                                                                10.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  SunahGroup
                                                                      .getmysummaryCall
                                                                      .namaSunah(
                                                                        conditionalBuilderGetmysummaryResponse
                                                                            .jsonBody,
                                                                      )
                                                                      ?.elementAtOrNull(
                                                                          resSummaryIndex),
                                                                  '-',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        FFAppState()
                                                                            .colorFontThemes,
                                                                        FlutterFlowTheme.of(context)
                                                                            .info,
                                                                      ),
                                                                      fontSize:
                                                                          20.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              ),
                                                            ),
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                SunahGroup
                                                                    .getmysummaryCall
                                                                    .tanggal(
                                                                      conditionalBuilderGetmysummaryResponse
                                                                          .jsonBody,
                                                                    )
                                                                    ?.elementAtOrNull(
                                                                        resSummaryIndex),
                                                                '-',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: FFAppState()
                                                                        .colorFontThemes,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            const Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                              color:
                                                                  Colors.white,
                                                              size: 24.0,
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          15.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  SunahGroup
                                                                      .getmysummaryCall
                                                                      .namaSunah(
                                                                        conditionalBuilderGetmysummaryResponse
                                                                            .jsonBody,
                                                                      )
                                                                      ?.elementAtOrNull(
                                                                          resSummaryIndex),
                                                                  '-',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      color: FFAppState()
                                                                          .colorFontThemes,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            var shouldSetState =
                                                                false;
                                                            var confirmDialogResponse =
                                                                await showDialog<
                                                                        bool>(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              AlertDialog(
                                                                            title:
                                                                                Text(valueOrDefault<String>(
                                                                              (SunahGroup.getmysummaryCall
                                                                                      .id(
                                                                                        conditionalBuilderGetmysummaryResponse.jsonBody,
                                                                                      )
                                                                                      ?.elementAtOrNull(resSummaryIndex))
                                                                                  ?.toString(),
                                                                              '-',
                                                                            )),
                                                                            content:
                                                                                const Text('Are You Sure delete this sunnah'),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                child: const Text('Cancel'),
                                                                              ),
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                child: const Text('Confirm'),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      },
                                                                    ) ??
                                                                    false;
                                                            if (confirmDialogResponse) {
                                                              _model.apiResultbq1 =
                                                                  await SunahGroup
                                                                      .deleteMysunnahCall
                                                                      .call(
                                                                id: valueOrDefault<
                                                                    String>(
                                                                  (SunahGroup
                                                                          .getmysummaryCall
                                                                          .id(
                                                                            conditionalBuilderGetmysummaryResponse.jsonBody,
                                                                          )
                                                                          ?.elementAtOrNull(
                                                                              resSummaryIndex))
                                                                      ?.toString(),
                                                                  '-',
                                                                ),
                                                              );

                                                              shouldSetState =
                                                                  true;
                                                              if ((_model
                                                                      .apiResultbq1
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return WebViewAware(
                                                                      child:
                                                                          AlertDialog(
                                                                        title: const Text(
                                                                            'Information'),
                                                                        content:
                                                                            const Text('Delete Sunnah Success'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                const Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                                safeSetState(() =>
                                                                    _model.apiRequestCompleter =
                                                                        null);
                                                                await _model
                                                                    .waitForApiRequestCompleted();
                                                              } else {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return WebViewAware(
                                                                      child:
                                                                          AlertDialog(
                                                                        title: const Text(
                                                                            'Information'),
                                                                        content:
                                                                            const Text('Deleted Faild'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                const Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              }

                                                              if (shouldSetState) {
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                              return;
                                                            } else {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Delete Failed',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                  ),
                                                                  duration: const Duration(
                                                                      milliseconds:
                                                                          4000),
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                ),
                                                              );
                                                              if (shouldSetState) {
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                              return;
                                                            }

                                                            if (shouldSetState) {
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .delete_forever,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          }),
                                        );
                                      },
                                    ),
                                  );
                                } else {
                                  return Text(
                                    'No Summary',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                  );
                                }
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
