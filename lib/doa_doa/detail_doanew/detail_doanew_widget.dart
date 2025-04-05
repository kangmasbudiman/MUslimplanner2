import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/cruddoa/editdetaildoa/editdetaildoa_widget.dart';
import '/cruddoa/tambah_detaildoa/tambah_detaildoa_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'detail_doanew_model.dart';
export 'detail_doanew_model.dart';

class DetailDoanewWidget extends StatefulWidget {
  const DetailDoanewWidget({
    super.key,
    this.judul,
    this.arab,
    this.latin,
    this.terjemahan,
    this.hadis,
    this.penjelasan,
    this.iddoa,
  });

  final String? judul;
  final String? arab;
  final String? latin;
  final String? terjemahan;
  final String? hadis;
  final String? penjelasan;
  final int? iddoa;

  static String routeName = 'DetailDoanew';
  static String routePath = '/detailDoanew';

  @override
  State<DetailDoanewWidget> createState() => _DetailDoanewWidgetState();
}

class _DetailDoanewWidgetState extends State<DetailDoanewWidget> {
  late DetailDoanewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailDoanewModel());

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
        floatingActionButton: Visibility(
          visible: valueOrDefault(currentUserDocument?.rules, 0) == 1,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
            child: AuthUserStreamWidget(
              builder: (context) => FloatingActionButton(
                onPressed: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return WebViewAware(
                        child: GestureDetector(
                          onTap: () {
                            FocusScope.of(context).unfocus();
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                          child: Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: TambahDetaildoaWidget(
                              iddoa: widget.iddoa,
                              namadoa: widget.judul,
                            ),
                          ),
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                },
                backgroundColor: FlutterFlowTheme.of(context).primary,
                elevation: 8.0,
                child: Icon(
                  Icons.add_rounded,
                  color: FlutterFlowTheme.of(context).info,
                  size: 24.0,
                ),
              ),
            ),
          ),
        ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 20.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.safePop();
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: FFAppState().colorThemes,
                        size: 25.0,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.judul,
                          'judul',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 0.755,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 30.0),
                    child: FutureBuilder<ApiCallResponse>(
                      future: DoadoaGroup.getDetaildoaCall.call(
                        iddoa: widget.iddoa,
                      ),
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
                        final listViewGetDetaildoaResponse = snapshot.data!;

                        return Builder(
                          builder: (context) {
                            final respon = getJsonField(
                              listViewGetDetaildoaResponse.jsonBody,
                              r'''$.data''',
                            ).toList();

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              itemCount: respon.length,
                              itemBuilder: (context, responIndex) {
                                final responItem = respon[responIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: currentUserDocument?.colorThemes,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 2.0,
                                            color: Color(0x33000000),
                                            offset: Offset(
                                              1.0,
                                              4.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 15.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 15.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    getJsonField(
                                                      responItem,
                                                      r'''$.pengulanganDoa''',
                                                    )?.toString(),
                                                    'Penjelasan',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: FFAppState()
                                                            .colorFontThemes,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  getJsonField(
                                                    responItem,
                                                    r'''$.arab''',
                                                  )?.toString(),
                                                  'arap',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FFAppState()
                                                              .colorFontThemes,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  getJsonField(
                                                    responItem,
                                                    r'''$.latin''',
                                                  )?.toString(),
                                                  'latin',
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FFAppState()
                                                              .colorFontThemes,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  getJsonField(
                                                    responItem,
                                                    r'''$.terjemahan''',
                                                  )?.toString(),
                                                  'terjemahan',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      color:
                                                          valueOrDefault<Color>(
                                                        FFAppState()
                                                            .colorFontThemes,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                      ),
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  getJsonField(
                                                    responItem,
                                                    r'''$.penjelasan''',
                                                  )?.toString(),
                                                  'penjelasan',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      color:
                                                          valueOrDefault<Color>(
                                                        FFAppState()
                                                            .colorFontThemes,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                      ),
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 15.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      getJsonField(
                                                        responItem,
                                                        r'''$.hadis''',
                                                      )?.toString(),
                                                      'hadis',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            FFAppState()
                                                                .colorFontThemes,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                          ),
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Text(
                                                    '....',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color:
                                                              Color(0xFFA4A4A4),
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            if (valueOrDefault(
                                                    currentUserDocument?.rules,
                                                    0) ==
                                                1)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return WebViewAware(
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              FocusScope.of(
                                                                      context)
                                                                  .unfocus();
                                                              FocusManager
                                                                  .instance
                                                                  .primaryFocus
                                                                  ?.unfocus();
                                                            },
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  EditdetaildoaWidget(
                                                                penjelasan:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  getJsonField(
                                                                    responItem,
                                                                    r'''$.penjelasan''',
                                                                  )?.toString(),
                                                                  'penjelasan',
                                                                ),
                                                                id: valueOrDefault<
                                                                    int>(
                                                                  getJsonField(
                                                                    responItem,
                                                                    r'''$.id''',
                                                                  ),
                                                                  0,
                                                                ),
                                                                doabahasaarab:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  getJsonField(
                                                                    responItem,
                                                                    r'''$.arab''',
                                                                  )?.toString(),
                                                                  'arap',
                                                                ),
                                                                doabahasaindonesia:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  getJsonField(
                                                                    responItem,
                                                                    r'''$.latin''',
                                                                  )?.toString(),
                                                                  'latin',
                                                                ),
                                                                terjemahan:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  getJsonField(
                                                                    responItem,
                                                                    r'''$.terjemahan''',
                                                                  )?.toString(),
                                                                  'terjemahan',
                                                                ),
                                                                hadis:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  getJsonField(
                                                                    responItem,
                                                                    r'''$.hadis''',
                                                                  )?.toString(),
                                                                  'hadis',
                                                                ),
                                                                pengulangandoa:
                                                                    getJsonField(
                                                                  responItem,
                                                                  r'''$.pengulanganDoa''',
                                                                ).toString(),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));
                                                  },
                                                  child: Icon(
                                                    Icons.edit_square,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    size: 24.0,
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
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
