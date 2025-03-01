import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/componen/date_componen/date_componen_widget.dart';
import '/componen/navbar/navbar_widget.dart';
import '/crudsunah/tambah_sunah/tambah_sunah_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/revenue_cat_util.dart' as revenue_cat;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'home_screen_model.dart';
export 'home_screen_model.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  static String routeName = 'HomeScreen';
  static String routePath = '/homeScreen';

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  late HomeScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await currentUserReference!.update(createUsersRecordData(
        lastTimeActive: getCurrentTimestamp,
      ));
      _model.apiResultf33 = await MyexpiredCall.call(
        iduser: currentUserUid,
      );

      if ((_model.apiResultf33?.succeeded ?? true)) {
        await currentUserReference!.update(createUsersRecordData(
          statusPremium: getJsonField(
            (_model.apiResultf33?.jsonBody ?? ''),
            r'''$.status_premium''',
          ),
        ));
      }
    });

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

    return FutureBuilder<ApiCallResponse>(
      future: MyexpiredCall.call(
        iduser: currentUserUid,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 20.0,
                height: 20.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).secondary,
                  ),
                ),
              ),
            ),
          );
        }
        final homeScreenMyexpiredResponse = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            floatingActionButton: Visibility(
              visible: valueOrDefault(currentUserDocument?.rules, 0) == 1,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 80.0),
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
                                child: TambahSunahWidget(),
                              ),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    },
                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                    elevation: 8.0,
                    child: Icon(
                      Icons.add,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                  ),
                ),
              ),
            ),
            body: Stack(
              alignment: AlignmentDirectional(0.0, 1.0),
              children: [
                StreamBuilder<List<UsersRecord>>(
                  stream: queryUsersRecord(
                    queryBuilder: (usersRecord) => usersRecord.where(
                      'uid',
                      isEqualTo: currentUserUid,
                    ),
                    singleRecord: true,
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
                    List<UsersRecord> columnUsersRecordList = snapshot.data!;
                    // Return an empty Container when the item does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final columnUsersRecord = columnUsersRecordList.isNotEmpty
                        ? columnUsersRecordList.first
                        : null;

                    return SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AuthUserStreamWidget(
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
                                      6.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 40.0, 20.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            'Assalamualaikum ',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Inter',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            currentUserDisplayName,
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 14.0,
                                                        ),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FFAppState()
                                                              .colorFontThemes,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Text(
                                                  'Ayo semangat kejar akhirat!',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: Colors.white,
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                ),
                                              ].divide(SizedBox(height: 6.0)),
                                            ),
                                          ),
                                        ),
                                        if (columnUsersRecord?.statusPremium ==
                                            0)
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              final isEntitled =
                                                  await revenue_cat.isEntitled(
                                                          'Pro Access') ??
                                                      false;
                                              if (!isEntitled) {
                                                await revenue_cat
                                                    .loadOfferings();
                                              }

                                              if (isEntitled) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Your A, Ready Pro Acccess',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                  ),
                                                );
                                              } else {
                                                context.pushNamed(
                                                    SubscribeWidget.routeName);
                                              }
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10.0),
                                                  bottomRight:
                                                      Radius.circular(10.0),
                                                  topLeft:
                                                      Radius.circular(10.0),
                                                  topRight:
                                                      Radius.circular(10.0),
                                                ),
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 3.0, 5.0, 3.0),
                                                child: Text(
                                                  'Subscribe',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                                MyProfileWidget.routeName);
                                          },
                                          child: Icon(
                                            Icons.person,
                                            color: Colors.white,
                                            size: 20.0,
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 10.0)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 25.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              dateTimeFormat(
                                                  "Hm", getCurrentTimestamp),
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily: 'Nunito',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  fontSize: 50.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w800,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 20.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: _model.newT(
                                          requestFn: () =>
                                              ConvertMasehiKeHijriCall.call(
                                            date:
                                                functions.convertDateToString(),
                                          ),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 20.0,
                                                height: 20.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final richTextConvertMasehiKeHijriResponse =
                                              snapshot.data!;

                                          return RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: ConvertMasehiKeHijriCall
                                                      .bulan(
                                                    richTextConvertMasehiKeHijriResponse
                                                        .jsonBody,
                                                  )!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: ' ',
                                                  style: TextStyle(
                                                    color: FFAppState()
                                                        .colorFontThemes,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    ConvertMasehiKeHijriCall
                                                        .tanggal(
                                                      richTextConvertMasehiKeHijriResponse
                                                          .jsonBody,
                                                    ),
                                                    '0',
                                                  ),
                                                  style: TextStyle(),
                                                ),
                                                TextSpan(
                                                  text: ', ',
                                                  style: TextStyle(),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    ConvertMasehiKeHijriCall
                                                        .tahun(
                                                      richTextConvertMasehiKeHijriResponse
                                                          .jsonBody,
                                                    ),
                                                    '0',
                                                  ),
                                                  style: TextStyle(),
                                                ),
                                                TextSpan(
                                                  text: ' H',
                                                  style: TextStyle(),
                                                )
                                              ],
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                    fontSize: 15.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.dateComponenModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: DateComponenWidget(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 50.0, 20.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(KiblatWidget.routeName);
                                  },
                                  child: Text(
                                    'Qiyamul Lail',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                                Padding(
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
                                              5.0,
                                            ),
                                          )
                                        ],
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20.0),
                                          bottomRight: Radius.circular(20.0),
                                          topLeft: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 10.0),
                                        child: FutureBuilder<ApiCallResponse>(
                                          future: FFAppState()
                                              .qiyamulLailChace(
                                            requestFn: () => SunahGroup
                                                .getsunahtigabaruCall
                                                .call(
                                              iduser: currentUserUid,
                                              tanggal: dateTimeFormat(
                                                  "yyyy-MM-dd",
                                                  getCurrentTimestamp),
                                            ),
                                          )
                                              .then((result) {
                                            _model.apiRequestCompleted6 = true;
                                            return result;
                                          }),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .info,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            final columnQiyamullailGetsunahtigabaruResponse =
                                                snapshot.data!;

                                            return Builder(
                                              builder: (context) {
                                                final res1 = getJsonField(
                                                  columnQiyamullailGetsunahtigabaruResponse
                                                      .jsonBody,
                                                  r'''$.data''',
                                                ).toList();

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                      res1.length, (res1Index) {
                                                    final res1Item =
                                                        res1[res1Index];
                                                    return Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  10.0),
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
                                                          context.pushNamed(
                                                            SubDetailTaskSunahWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'idsunah':
                                                                  serializeParam(
                                                                SunahGroup
                                                                    .getsunahtigabaruCall
                                                                    .id(
                                                                      columnQiyamullailGetsunahtigabaruResponse
                                                                          .jsonBody,
                                                                    )
                                                                    ?.elementAtOrNull(
                                                                        res1Index),
                                                                ParamType.int,
                                                              ),
                                                              'namasunah':
                                                                  serializeParam(
                                                                SunahGroup
                                                                    .getsunahtigabaruCall
                                                                    .namaSunah(
                                                                      columnQiyamullailGetsunahtigabaruResponse
                                                                          .jsonBody,
                                                                    )
                                                                    ?.elementAtOrNull(
                                                                        res1Index),
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        onLongPress: () async {
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  (SunahGroup
                                                                          .getsunahtigabaruCall
                                                                          .id(
                                                                            columnQiyamullailGetsunahtigabaruResponse.jsonBody,
                                                                          )
                                                                          ?.elementAtOrNull(
                                                                              res1Index))
                                                                      ?.toString(),
                                                                  '-',
                                                                ),
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                            ),
                                                          );
                                                        },
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Stack(
                                                              children: [
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          'Loading ...',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                          ),
                                                                        ),
                                                                        duration:
                                                                            Duration(milliseconds: 4900),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).secondary,
                                                                      ),
                                                                    );
                                                                    _model.apiResultkdj =
                                                                        await SunahGroup
                                                                            .tambahSummaryCall
                                                                            .call(
                                                                      iduser:
                                                                          currentUserUid,
                                                                      idsunah: (SunahGroup
                                                                              .getsunahtigabaruCall
                                                                              .id(
                                                                                columnQiyamullailGetsunahtigabaruResponse.jsonBody,
                                                                              )
                                                                              ?.elementAtOrNull(res1Index))
                                                                          ?.toString(),
                                                                    );

                                                                    if ((_model
                                                                            .apiResultkdj
                                                                            ?.succeeded ??
                                                                        true)) {
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Sunah Berhasil ditambah ',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      );
                                                                      FFAppState()
                                                                          .clearQiyamulLailChaceCache();
                                                                      safeSetState(
                                                                          () {
                                                                        FFAppState()
                                                                            .clearQiyamulLailChaceCache();
                                                                        _model.apiRequestCompleted6 =
                                                                            false;
                                                                      });
                                                                      await _model
                                                                          .waitForApiRequestCompleted6();
                                                                    }

                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .circle_outlined,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                                if (functions.intToString(
                                                                        valueOrDefault<
                                                                            int>(
                                                                      SunahGroup
                                                                          .getsunahtigabaruCall
                                                                          .isComplate(
                                                                            columnQiyamullailGetsunahtigabaruResponse.jsonBody,
                                                                          )
                                                                          ?.elementAtOrNull(
                                                                              res1Index),
                                                                      0,
                                                                    )) ==
                                                                    '1')
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Loading....',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4900),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      );
                                                                      _model.apiResultkdDeleteSunnah = await SunahGroup
                                                                          .deleteMysunnahCall
                                                                          .call(
                                                                        id: valueOrDefault<
                                                                            String>(
                                                                          functions
                                                                              .intToString(valueOrDefault<int>(
                                                                            SunahGroup.getsunahtigabaruCall
                                                                                .summaryId(
                                                                                  columnQiyamullailGetsunahtigabaruResponse.jsonBody,
                                                                                )
                                                                                ?.elementAtOrNull(res1Index),
                                                                            0,
                                                                          )),
                                                                          '0',
                                                                        ),
                                                                      );

                                                                      if ((_model
                                                                              .apiResultkdDeleteSunnah
                                                                              ?.succeeded ??
                                                                          true)) {
                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          SnackBar(
                                                                            content:
                                                                                Text(
                                                                              'Sunnah Deleted',
                                                                              style: TextStyle(
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                            ),
                                                                            duration:
                                                                                Duration(milliseconds: 4000),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                          ),
                                                                        );
                                                                        FFAppState()
                                                                            .clearQiyamulLailChaceCache();
                                                                        safeSetState(
                                                                            () {
                                                                          FFAppState()
                                                                              .clearQiyamulLailChaceCache();
                                                                          _model.apiRequestCompleted6 =
                                                                              false;
                                                                        });
                                                                        await _model
                                                                            .waitForApiRequestCompleted6();
                                                                      } else {
                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          SnackBar(
                                                                            content:
                                                                                Text(
                                                                              'Delete Failed',
                                                                              style: TextStyle(
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                            ),
                                                                            duration:
                                                                                Duration(milliseconds: 4000),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                          ),
                                                                        );
                                                                      }

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .check_circle_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  SunahGroup
                                                                      .getsunahtigabaruCall
                                                                      .namaSunah(
                                                                        columnQiyamullailGetsunahtigabaruResponse
                                                                            .jsonBody,
                                                                      )
                                                                      ?.elementAtOrNull(
                                                                          res1Index),
                                                                  '-',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              size: 20.0,
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 10.0)),
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Text(
                                    'Dhuha',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                                Padding(
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
                                              5.0,
                                            ),
                                          )
                                        ],
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20.0),
                                          bottomRight: Radius.circular(20.0),
                                          topLeft: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 10.0),
                                        child: FutureBuilder<ApiCallResponse>(
                                          future: FFAppState()
                                              .dhuha(
                                            requestFn: () => SunahGroup
                                                .getsunahsebelasCall
                                                .call(
                                              iduser: currentUserUid,
                                              tanggal: dateTimeFormat(
                                                  "yyyy-MM-dd",
                                                  getCurrentTimestamp),
                                            ),
                                          )
                                              .then((result) {
                                            _model.apiRequestCompleted8 = true;
                                            return result;
                                          }),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .info,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            final columnDhuhaGetsunahsebelasResponse =
                                                snapshot.data!;

                                            return Builder(
                                              builder: (context) {
                                                final res11 = getJsonField(
                                                  columnDhuhaGetsunahsebelasResponse
                                                      .jsonBody,
                                                  r'''$.data''',
                                                ).toList();

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                      res11.length,
                                                      (res11Index) {
                                                    final res11Item =
                                                        res11[res11Index];
                                                    return Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  10.0),
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
                                                          context.pushNamed(
                                                            SubDetailTaskSunahWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'idsunah':
                                                                  serializeParam(
                                                                SunahGroup
                                                                    .getsunahsebelasCall
                                                                    .id(
                                                                      columnDhuhaGetsunahsebelasResponse
                                                                          .jsonBody,
                                                                    )
                                                                    ?.elementAtOrNull(
                                                                        res11Index),
                                                                ParamType.int,
                                                              ),
                                                              'namasunah':
                                                                  serializeParam(
                                                                SunahGroup
                                                                    .getsunahsebelasCall
                                                                    .namasunah(
                                                                      columnDhuhaGetsunahsebelasResponse
                                                                          .jsonBody,
                                                                    )
                                                                    ?.elementAtOrNull(
                                                                        res11Index),
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        onLongPress: () async {
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  (SunahGroup
                                                                          .getsunahsebelasCall
                                                                          .id(
                                                                            columnDhuhaGetsunahsebelasResponse.jsonBody,
                                                                          )
                                                                          ?.elementAtOrNull(
                                                                              res11Index))
                                                                      ?.toString(),
                                                                  '-',
                                                                ),
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                            ),
                                                          );
                                                        },
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Stack(
                                                              children: [
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          'Loading ...',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                          ),
                                                                        ),
                                                                        duration:
                                                                            Duration(milliseconds: 4900),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).secondary,
                                                                      ),
                                                                    );
                                                                    _model.apiResultkdjj =
                                                                        await SunahGroup
                                                                            .tambahSummaryCall
                                                                            .call(
                                                                      iduser:
                                                                          currentUserUid,
                                                                      idsunah: (SunahGroup
                                                                              .getsunahsebelasCall
                                                                              .id(
                                                                                columnDhuhaGetsunahsebelasResponse.jsonBody,
                                                                              )
                                                                              ?.elementAtOrNull(res11Index))
                                                                          ?.toString(),
                                                                    );

                                                                    if ((_model
                                                                            .apiResultkdjj
                                                                            ?.succeeded ??
                                                                        true)) {
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Sunah Berhasil ditambah ',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      );
                                                                      FFAppState()
                                                                          .clearDhuhaCache();
                                                                      safeSetState(
                                                                          () {
                                                                        FFAppState()
                                                                            .clearDhuhaCache();
                                                                        _model.apiRequestCompleted8 =
                                                                            false;
                                                                      });
                                                                      await _model
                                                                          .waitForApiRequestCompleted8();
                                                                    }

                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .circle_outlined,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                                if (functions.intToString(
                                                                        valueOrDefault<
                                                                            int>(
                                                                      SunahGroup
                                                                          .getsunahsebelasCall
                                                                          .isComplate(
                                                                            columnDhuhaGetsunahsebelasResponse.jsonBody,
                                                                          )
                                                                          ?.elementAtOrNull(
                                                                              res11Index),
                                                                      0,
                                                                    )) ==
                                                                    '1')
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Loading....',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4900),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      );
                                                                      _model.apiResultkdDeleteSunnahh = await SunahGroup
                                                                          .deleteMysunnahCall
                                                                          .call(
                                                                        id: valueOrDefault<
                                                                            String>(
                                                                          functions
                                                                              .intToString(valueOrDefault<int>(
                                                                            SunahGroup.getsunahsebelasCall
                                                                                .id(
                                                                                  columnDhuhaGetsunahsebelasResponse.jsonBody,
                                                                                )
                                                                                ?.elementAtOrNull(res11Index),
                                                                            0,
                                                                          )),
                                                                          '0',
                                                                        ),
                                                                      );

                                                                      if ((_model
                                                                              .apiResultkdDeleteSunnahh
                                                                              ?.succeeded ??
                                                                          true)) {
                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          SnackBar(
                                                                            content:
                                                                                Text(
                                                                              'Sunnah Deleted',
                                                                              style: TextStyle(
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                            ),
                                                                            duration:
                                                                                Duration(milliseconds: 4000),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                          ),
                                                                        );
                                                                        FFAppState()
                                                                            .clearDhuhaCache();
                                                                        safeSetState(
                                                                            () {
                                                                          FFAppState()
                                                                              .clearDhuhaCache();
                                                                          _model.apiRequestCompleted8 =
                                                                              false;
                                                                        });
                                                                        await _model
                                                                            .waitForApiRequestCompleted8();
                                                                      } else {
                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          SnackBar(
                                                                            content:
                                                                                Text(
                                                                              'Delete Failed',
                                                                              style: TextStyle(
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                            ),
                                                                            duration:
                                                                                Duration(milliseconds: 4000),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                          ),
                                                                        );
                                                                      }

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .check_circle_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  SunahGroup
                                                                      .getsunahsebelasCall
                                                                      .namasunah(
                                                                        columnDhuhaGetsunahsebelasResponse
                                                                            .jsonBody,
                                                                      )
                                                                      ?.elementAtOrNull(
                                                                          res11Index),
                                                                  '-',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              size: 20.0,
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 10.0)),
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Text(
                                    'Fajr',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                                Padding(
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
                                              5.0,
                                            ),
                                          )
                                        ],
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20.0),
                                          bottomRight: Radius.circular(20.0),
                                          topLeft: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 10.0),
                                        child: FutureBuilder<ApiCallResponse>(
                                          future: FFAppState()
                                              .fajrChace(
                                            requestFn: () => SunahGroup
                                                .getsunahempatCall
                                                .call(
                                              iduser: currentUserUid,
                                              tanggal: dateTimeFormat(
                                                  "yyyy-MM-dd",
                                                  getCurrentTimestamp),
                                            ),
                                          )
                                              .then((result) {
                                            _model.apiRequestCompleted7 = true;
                                            return result;
                                          }),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .info,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            final columnFajarGetsunahempatResponse =
                                                snapshot.data!;

                                            return Builder(
                                              builder: (context) {
                                                final res4 = getJsonField(
                                                  columnFajarGetsunahempatResponse
                                                      .jsonBody,
                                                  r'''$.data''',
                                                ).toList();

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                      res4.length, (res4Index) {
                                                    final res4Item =
                                                        res4[res4Index];
                                                    return Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  10.0),
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
                                                          context.pushNamed(
                                                            SubDetailTaskSunahWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'idsunah':
                                                                  serializeParam(
                                                                SunahGroup
                                                                    .getsunahempatCall
                                                                    .id(
                                                                      columnFajarGetsunahempatResponse
                                                                          .jsonBody,
                                                                    )
                                                                    ?.elementAtOrNull(
                                                                        res4Index),
                                                                ParamType.int,
                                                              ),
                                                              'namasunah':
                                                                  serializeParam(
                                                                SunahGroup
                                                                    .getsunahempatCall
                                                                    .namasunah(
                                                                      columnFajarGetsunahempatResponse
                                                                          .jsonBody,
                                                                    )
                                                                    ?.elementAtOrNull(
                                                                        res4Index),
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Stack(
                                                              children: [
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.apiResultk4 =
                                                                        await SunahGroup
                                                                            .tambahSummaryCall
                                                                            .call(
                                                                      iduser:
                                                                          currentUserUid,
                                                                      idsunah: (SunahGroup
                                                                              .getsunahempatCall
                                                                              .id(
                                                                                columnFajarGetsunahempatResponse.jsonBody,
                                                                              )
                                                                              ?.elementAtOrNull(res4Index))
                                                                          ?.toString(),
                                                                    );

                                                                    if ((_model
                                                                            .apiResultk4
                                                                            ?.succeeded ??
                                                                        true)) {
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Sunah Berhasil ditambah ',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      );
                                                                      FFAppState()
                                                                          .clearFajrChaceCache();
                                                                      safeSetState(
                                                                          () {
                                                                        FFAppState()
                                                                            .clearFajrChaceCache();
                                                                        _model.apiRequestCompleted7 =
                                                                            false;
                                                                      });
                                                                      await _model
                                                                          .waitForApiRequestCompleted7();
                                                                    }

                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .circle_outlined,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                                if (functions.intToString(
                                                                        valueOrDefault<
                                                                            int>(
                                                                      SunahGroup
                                                                          .getsunahempatCall
                                                                          .isComplate(
                                                                            columnFajarGetsunahempatResponse.jsonBody,
                                                                          )
                                                                          ?.elementAtOrNull(
                                                                              res4Index),
                                                                      0,
                                                                    )) ==
                                                                    '1')
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Loading....',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4900),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      );
                                                                      _model.apiResultkdDeleteSunna4 = await SunahGroup
                                                                          .deleteMysunnahCall
                                                                          .call(
                                                                        id: valueOrDefault<
                                                                            String>(
                                                                          functions
                                                                              .intToString(valueOrDefault<int>(
                                                                            SunahGroup.getsunahempatCall.summaryId(
                                                                              columnFajarGetsunahempatResponse.jsonBody,
                                                                            ),
                                                                            0,
                                                                          )),
                                                                          '0',
                                                                        ),
                                                                      );

                                                                      if ((_model
                                                                              .apiResultkdDeleteSunna4
                                                                              ?.succeeded ??
                                                                          true)) {
                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          SnackBar(
                                                                            content:
                                                                                Text(
                                                                              'Sunnah Deleted',
                                                                              style: TextStyle(
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                            ),
                                                                            duration:
                                                                                Duration(milliseconds: 4000),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                          ),
                                                                        );
                                                                        FFAppState()
                                                                            .clearFajrChaceCache();
                                                                        safeSetState(
                                                                            () {
                                                                          FFAppState()
                                                                              .clearQiyamulLailChaceCache();
                                                                          _model.apiRequestCompleted6 =
                                                                              false;
                                                                        });
                                                                        await _model
                                                                            .waitForApiRequestCompleted6();
                                                                      } else {
                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          SnackBar(
                                                                            content:
                                                                                Text(
                                                                              'Delete Failed',
                                                                              style: TextStyle(
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                            ),
                                                                            duration:
                                                                                Duration(milliseconds: 4000),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                          ),
                                                                        );
                                                                      }

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .check_circle_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  SunahGroup
                                                                      .getsunahempatCall
                                                                      .namasunah(
                                                                        columnFajarGetsunahempatResponse
                                                                            .jsonBody,
                                                                      )
                                                                      ?.elementAtOrNull(
                                                                          res4Index),
                                                                  '-',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              size: 20.0,
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 10.0)),
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Text(
                                    'Dhuhr',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                                Padding(
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
                                              5.0,
                                            ),
                                          )
                                        ],
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20.0),
                                          bottomRight: Radius.circular(20.0),
                                          topLeft: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 10.0),
                                        child: FutureBuilder<ApiCallResponse>(
                                          future: FFAppState()
                                              .zhuhrCache(
                                            requestFn: () => SunahGroup
                                                .getsunahlimaCall
                                                .call(
                                              iduser: currentUserUid,
                                              tanggal: dateTimeFormat(
                                                  "yyyy-MM-dd",
                                                  getCurrentTimestamp),
                                            ),
                                          )
                                              .then((result) {
                                            _model.apiRequestCompleted4 = true;
                                            return result;
                                          }),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .info,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            final columnDhurGetsunahlimaResponse =
                                                snapshot.data!;

                                            return Builder(
                                              builder: (context) {
                                                final res5 = getJsonField(
                                                  columnDhurGetsunahlimaResponse
                                                      .jsonBody,
                                                  r'''$.data''',
                                                ).toList();

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                      res5.length, (res5Index) {
                                                    final res5Item =
                                                        res5[res5Index];
                                                    return Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  10.0),
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
                                                          context.pushNamed(
                                                            SubDetailTaskSunahWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'idsunah':
                                                                  serializeParam(
                                                                SunahGroup
                                                                    .getsunahlimaCall
                                                                    .id(
                                                                      columnDhurGetsunahlimaResponse
                                                                          .jsonBody,
                                                                    )
                                                                    ?.elementAtOrNull(
                                                                        res5Index),
                                                                ParamType.int,
                                                              ),
                                                              'namasunah':
                                                                  serializeParam(
                                                                SunahGroup
                                                                    .getsunahlimaCall
                                                                    .namasunah(
                                                                      columnDhurGetsunahlimaResponse
                                                                          .jsonBody,
                                                                    )
                                                                    ?.elementAtOrNull(
                                                                        res5Index),
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Stack(
                                                              children: [
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.apiResultfni =
                                                                        await SunahGroup
                                                                            .tambahSummaryCall
                                                                            .call(
                                                                      iduser:
                                                                          currentUserUid,
                                                                      idsunah: (SunahGroup
                                                                              .getsunahlimaCall
                                                                              .id(
                                                                                columnDhurGetsunahlimaResponse.jsonBody,
                                                                              )
                                                                              ?.elementAtOrNull(res5Index))
                                                                          ?.toString(),
                                                                    );

                                                                    if ((_model
                                                                            .apiResultfni
                                                                            ?.succeeded ??
                                                                        true)) {
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Sunah berhasil ditambah',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      );
                                                                      FFAppState()
                                                                          .clearZhuhrCacheCache();
                                                                      safeSetState(
                                                                          () {
                                                                        FFAppState()
                                                                            .clearZhuhrCacheCache();
                                                                        _model.apiRequestCompleted4 =
                                                                            false;
                                                                      });
                                                                      await _model
                                                                          .waitForApiRequestCompleted4();
                                                                    }

                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .circle_outlined,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                                if (functions.intToString(
                                                                        valueOrDefault<
                                                                            int>(
                                                                      SunahGroup
                                                                          .getsunahlimaCall
                                                                          .isComplate(
                                                                            columnDhurGetsunahlimaResponse.jsonBody,
                                                                          )
                                                                          ?.elementAtOrNull(
                                                                              res5Index),
                                                                      0,
                                                                    )) ==
                                                                    '1')
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Loading....',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4900),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      );
                                                                      _model.apiResultkdDeleteSunnah5 = await SunahGroup
                                                                          .deleteMysunnahCall
                                                                          .call(
                                                                        id: valueOrDefault<
                                                                            String>(
                                                                          functions
                                                                              .intToString(valueOrDefault<int>(
                                                                            SunahGroup.getsunahlimaCall.summaryId(
                                                                              columnDhurGetsunahlimaResponse.jsonBody,
                                                                            ),
                                                                            0,
                                                                          )),
                                                                          '0',
                                                                        ),
                                                                      );

                                                                      if ((_model
                                                                              .apiResultkdDeleteSunnah5
                                                                              ?.succeeded ??
                                                                          true)) {
                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          SnackBar(
                                                                            content:
                                                                                Text(
                                                                              'Sunnah Deleted',
                                                                              style: TextStyle(
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                            ),
                                                                            duration:
                                                                                Duration(milliseconds: 4000),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                          ),
                                                                        );
                                                                        FFAppState()
                                                                            .clearZhuhrCacheCache();
                                                                        safeSetState(
                                                                            () {
                                                                          FFAppState()
                                                                              .clearQiyamulLailChaceCache();
                                                                          _model.apiRequestCompleted6 =
                                                                              false;
                                                                        });
                                                                        await _model
                                                                            .waitForApiRequestCompleted6();
                                                                      } else {
                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          SnackBar(
                                                                            content:
                                                                                Text(
                                                                              'Delete Failed',
                                                                              style: TextStyle(
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                            ),
                                                                            duration:
                                                                                Duration(milliseconds: 4000),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                          ),
                                                                        );
                                                                      }

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .check_circle_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  SunahGroup
                                                                      .getsunahlimaCall
                                                                      .namasunah(
                                                                        columnDhurGetsunahlimaResponse
                                                                            .jsonBody,
                                                                      )
                                                                      ?.elementAtOrNull(
                                                                          res5Index),
                                                                  '-',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              size: 20.0,
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 10.0)),
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: Text(
                                              'Ashr',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: AuthUserStreamWidget(
                                              builder: (context) => Container(
                                                decoration: BoxDecoration(
                                                  color: currentUserDocument
                                                      ?.colorThemes,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 2.0,
                                                      color: Color(0x33000000),
                                                      offset: Offset(
                                                        1.0,
                                                        5.0,
                                                      ),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.only(
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 10.0),
                                                  child: FutureBuilder<
                                                      ApiCallResponse>(
                                                    future: FFAppState()
                                                        .ashrcache(
                                                      requestFn: () =>
                                                          SunahGroup
                                                              .getsunahenamCall
                                                              .call(
                                                        iduser: currentUserUid,
                                                        tanggal: dateTimeFormat(
                                                            "yyyy-MM-dd",
                                                            getCurrentTimestamp),
                                                      ),
                                                    )
                                                        .then((result) {
                                                      _model.apiRequestCompleted3 =
                                                          true;
                                                      return result;
                                                    }),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 40.0,
                                                            height: 40.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      final columnasarGetsunahenamResponse =
                                                          snapshot.data!;

                                                      return Builder(
                                                        builder: (context) {
                                                          final res6 =
                                                              getJsonField(
                                                            columnasarGetsunahenamResponse
                                                                .jsonBody,
                                                            r'''$.data''',
                                                          ).toList();

                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children:
                                                                List.generate(
                                                                    res6.length,
                                                                    (res6Index) {
                                                              final res6Item =
                                                                  res6[
                                                                      res6Index];
                                                              return Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            10.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    context
                                                                        .pushNamed(
                                                                      SubDetailTaskSunahWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
                                                                        'idsunah':
                                                                            serializeParam(
                                                                          SunahGroup
                                                                              .getsunahenamCall
                                                                              .id(
                                                                                columnasarGetsunahenamResponse.jsonBody,
                                                                              )
                                                                              ?.elementAtOrNull(res6Index),
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                        'namasunah':
                                                                            serializeParam(
                                                                          SunahGroup
                                                                              .getsunahenamCall
                                                                              .namasunah(
                                                                                columnasarGetsunahenamResponse.jsonBody,
                                                                              )
                                                                              ?.elementAtOrNull(res6Index),
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Stack(
                                                                        children: [
                                                                          InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              _model.apiResultxrp = await SunahGroup.tambahSummaryCall.call(
                                                                                iduser: currentUserUid,
                                                                                idsunah: (SunahGroup.getsunahenamCall
                                                                                        .id(
                                                                                          columnasarGetsunahenamResponse.jsonBody,
                                                                                        )
                                                                                        ?.elementAtOrNull(res6Index))
                                                                                    ?.toString(),
                                                                              );

                                                                              if ((_model.apiResultxrp?.succeeded ?? true)) {
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  SnackBar(
                                                                                    content: Text(
                                                                                      'Sunah berhasil ditambah',
                                                                                      style: TextStyle(
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    ),
                                                                                    duration: Duration(milliseconds: 4000),
                                                                                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                  ),
                                                                                );
                                                                                FFAppState().clearAshrcacheCache();
                                                                                safeSetState(() {
                                                                                  FFAppState().clearAshrcacheCache();
                                                                                  _model.apiRequestCompleted3 = false;
                                                                                });
                                                                                await _model.waitForApiRequestCompleted3();
                                                                              }

                                                                              safeSetState(() {});
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.circle_outlined,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                          if (functions.intToString(valueOrDefault<int>(
                                                                                SunahGroup.getsunahenamCall
                                                                                    .isComplate(
                                                                                      columnasarGetsunahenamResponse.jsonBody,
                                                                                    )
                                                                                    ?.elementAtOrNull(res6Index),
                                                                                0,
                                                                              )) ==
                                                                              '1')
                                                                            InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  SnackBar(
                                                                                    content: Text(
                                                                                      'Loading....',
                                                                                      style: TextStyle(
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    ),
                                                                                    duration: Duration(milliseconds: 4900),
                                                                                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                  ),
                                                                                );
                                                                                _model.apiResultkdDeleteSunnah6 = await SunahGroup.deleteMysunnahCall.call(
                                                                                  id: valueOrDefault<String>(
                                                                                    functions.intToString(valueOrDefault<int>(
                                                                                      SunahGroup.getsunahenamCall.summaryId(
                                                                                        columnasarGetsunahenamResponse.jsonBody,
                                                                                      ),
                                                                                      0,
                                                                                    )),
                                                                                    '0',
                                                                                  ),
                                                                                );

                                                                                if ((_model.apiResultkdDeleteSunnah6?.succeeded ?? true)) {
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        'Sunnah Deleted',
                                                                                        style: TextStyle(
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                      ),
                                                                                      duration: Duration(milliseconds: 4000),
                                                                                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                    ),
                                                                                  );
                                                                                  FFAppState().clearAshrcacheCache();
                                                                                  safeSetState(() {
                                                                                    FFAppState().clearQiyamulLailChaceCache();
                                                                                    _model.apiRequestCompleted6 = false;
                                                                                  });
                                                                                  await _model.waitForApiRequestCompleted6();
                                                                                } else {
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        'Delete Failed',
                                                                                        style: TextStyle(
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                      ),
                                                                                      duration: Duration(milliseconds: 4000),
                                                                                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                    ),
                                                                                  );
                                                                                }

                                                                                safeSetState(() {});
                                                                              },
                                                                              child: Icon(
                                                                                Icons.check_circle_rounded,
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                size: 24.0,
                                                                              ),
                                                                            ),
                                                                        ],
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            SunahGroup.getsunahenamCall
                                                                                .namasunah(
                                                                                  columnasarGetsunahenamResponse.jsonBody,
                                                                                )
                                                                                ?.elementAtOrNull(res6Index),
                                                                            '-',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.white,
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            10.0)),
                                                                  ),
                                                                ),
                                                              );
                                                            }),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: Text(
                                              'Magrib',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: AuthUserStreamWidget(
                                              builder: (context) => Container(
                                                decoration: BoxDecoration(
                                                  color: currentUserDocument
                                                      ?.colorThemes,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 2.0,
                                                      color: Color(0x33000000),
                                                      offset: Offset(
                                                        1.0,
                                                        5.0,
                                                      ),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.only(
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 10.0),
                                                  child: FutureBuilder<
                                                      ApiCallResponse>(
                                                    future:
                                                        FFAppState().magrbcache(
                                                      requestFn: () =>
                                                          SunahGroup
                                                              .getsunahtujuhCall
                                                              .call(
                                                        iduser: currentUserUid,
                                                        tanggal: dateTimeFormat(
                                                            "yyyy-MM-dd",
                                                            getCurrentTimestamp),
                                                      ),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 40.0,
                                                            height: 40.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      final columnMagribGetsunahtujuhResponse =
                                                          snapshot.data!;

                                                      return Builder(
                                                        builder: (context) {
                                                          final res7 =
                                                              getJsonField(
                                                            columnMagribGetsunahtujuhResponse
                                                                .jsonBody,
                                                            r'''$.data''',
                                                          ).toList();

                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children:
                                                                List.generate(
                                                                    res7.length,
                                                                    (res7Index) {
                                                              final res7Item =
                                                                  res7[
                                                                      res7Index];
                                                              return Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            10.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    context
                                                                        .pushNamed(
                                                                      SubDetailTaskSunahWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
                                                                        'idsunah':
                                                                            serializeParam(
                                                                          SunahGroup
                                                                              .getsunahtujuhCall
                                                                              .id(
                                                                                columnMagribGetsunahtujuhResponse.jsonBody,
                                                                              )
                                                                              ?.elementAtOrNull(res7Index),
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                        'namasunah':
                                                                            serializeParam(
                                                                          SunahGroup
                                                                              .getsunahtujuhCall
                                                                              .namasunah(
                                                                                columnMagribGetsunahtujuhResponse.jsonBody,
                                                                              )
                                                                              ?.elementAtOrNull(res7Index),
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Stack(
                                                                        children: [
                                                                          InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              _model.apiResult25b = await SunahGroup.tambahSummaryCall.call(
                                                                                iduser: currentUserUid,
                                                                                idsunah: (SunahGroup.getsunahtujuhCall
                                                                                        .id(
                                                                                          columnMagribGetsunahtujuhResponse.jsonBody,
                                                                                        )
                                                                                        ?.elementAtOrNull(res7Index))
                                                                                    ?.toString(),
                                                                              );

                                                                              if ((_model.apiResult25b?.succeeded ?? true)) {
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  SnackBar(
                                                                                    content: Text(
                                                                                      'Sunah berhasil ditambah',
                                                                                      style: TextStyle(
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    ),
                                                                                    duration: Duration(milliseconds: 4000),
                                                                                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                  ),
                                                                                );
                                                                                FFAppState().clearMagrbcacheCache();
                                                                                safeSetState(() {
                                                                                  FFAppState().clearAshrcacheCache();
                                                                                  _model.apiRequestCompleted3 = false;
                                                                                });
                                                                                await _model.waitForApiRequestCompleted3();
                                                                              }

                                                                              safeSetState(() {});
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.circle_outlined,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                          if (functions.intToString(valueOrDefault<int>(
                                                                                SunahGroup.getsunahtujuhCall
                                                                                    .isComplate(
                                                                                      columnMagribGetsunahtujuhResponse.jsonBody,
                                                                                    )
                                                                                    ?.elementAtOrNull(res7Index),
                                                                                0,
                                                                              )) ==
                                                                              '1')
                                                                            InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  SnackBar(
                                                                                    content: Text(
                                                                                      'Loading....',
                                                                                      style: TextStyle(
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    ),
                                                                                    duration: Duration(milliseconds: 4900),
                                                                                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                  ),
                                                                                );
                                                                                _model.apiResultkdDeleteSunna7 = await SunahGroup.deleteMysunnahCall.call(
                                                                                  id: valueOrDefault<String>(
                                                                                    functions.intToString(valueOrDefault<int>(
                                                                                      SunahGroup.getsunahtujuhCall.summaryId(
                                                                                        columnMagribGetsunahtujuhResponse.jsonBody,
                                                                                      ),
                                                                                      0,
                                                                                    )),
                                                                                    '0',
                                                                                  ),
                                                                                );

                                                                                if ((_model.apiResultkdDeleteSunna7?.succeeded ?? true)) {
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        'Sunnah Deleted',
                                                                                        style: TextStyle(
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                      ),
                                                                                      duration: Duration(milliseconds: 4000),
                                                                                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                    ),
                                                                                  );
                                                                                  FFAppState().clearMagrbcacheCache();
                                                                                  safeSetState(() {
                                                                                    FFAppState().clearQiyamulLailChaceCache();
                                                                                    _model.apiRequestCompleted6 = false;
                                                                                  });
                                                                                  await _model.waitForApiRequestCompleted6();
                                                                                } else {
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        'Delete Failed',
                                                                                        style: TextStyle(
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                      ),
                                                                                      duration: Duration(milliseconds: 4000),
                                                                                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                    ),
                                                                                  );
                                                                                }

                                                                                safeSetState(() {});
                                                                              },
                                                                              child: Icon(
                                                                                Icons.check_circle_rounded,
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                size: 24.0,
                                                                              ),
                                                                            ),
                                                                        ],
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            SunahGroup.getsunahtujuhCall
                                                                                .namasunah(
                                                                                  columnMagribGetsunahtujuhResponse.jsonBody,
                                                                                )
                                                                                ?.elementAtOrNull(res7Index),
                                                                            '-',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.white,
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            10.0)),
                                                                  ),
                                                                ),
                                                              );
                                                            }),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: Text(
                                              'Isya',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: AuthUserStreamWidget(
                                              builder: (context) => Container(
                                                decoration: BoxDecoration(
                                                  color: currentUserDocument
                                                      ?.colorThemes,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 2.0,
                                                      color: Color(0x33000000),
                                                      offset: Offset(
                                                        1.0,
                                                        5.0,
                                                      ),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.only(
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 10.0),
                                                  child: FutureBuilder<
                                                      ApiCallResponse>(
                                                    future: FFAppState()
                                                        .isyacache(
                                                      requestFn: () => SunahGroup
                                                          .getsunahdelapanCall
                                                          .call(
                                                        iduser: currentUserUid,
                                                        tanggal: dateTimeFormat(
                                                            "yyyy-MM-dd",
                                                            getCurrentTimestamp),
                                                      ),
                                                    )
                                                        .then((result) {
                                                      _model.apiRequestCompleted5 =
                                                          true;
                                                      return result;
                                                    }),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 40.0,
                                                            height: 40.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      final columnisyaGetsunahdelapanResponse =
                                                          snapshot.data!;

                                                      return Builder(
                                                        builder: (context) {
                                                          final res8 =
                                                              getJsonField(
                                                            columnisyaGetsunahdelapanResponse
                                                                .jsonBody,
                                                            r'''$.data''',
                                                          ).toList();

                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children:
                                                                List.generate(
                                                                    res8.length,
                                                                    (res8Index) {
                                                              final res8Item =
                                                                  res8[
                                                                      res8Index];
                                                              return Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            10.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    context
                                                                        .pushNamed(
                                                                      SubDetailTaskSunahWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
                                                                        'idsunah':
                                                                            serializeParam(
                                                                          SunahGroup
                                                                              .getsunahdelapanCall
                                                                              .id(
                                                                                columnisyaGetsunahdelapanResponse.jsonBody,
                                                                              )
                                                                              ?.elementAtOrNull(res8Index),
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                        'namasunah':
                                                                            serializeParam(
                                                                          SunahGroup
                                                                              .getsunahdelapanCall
                                                                              .namasunah(
                                                                                columnisyaGetsunahdelapanResponse.jsonBody,
                                                                              )
                                                                              ?.elementAtOrNull(res8Index),
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Stack(
                                                                        children: [
                                                                          InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              _model.apiResult000 = await SunahGroup.tambahSummaryCall.call(
                                                                                iduser: currentUserUid,
                                                                                idsunah: (SunahGroup.getsunahdelapanCall
                                                                                        .id(
                                                                                          columnisyaGetsunahdelapanResponse.jsonBody,
                                                                                        )
                                                                                        ?.elementAtOrNull(res8Index))
                                                                                    ?.toString(),
                                                                              );

                                                                              if ((_model.apiResult000?.succeeded ?? true)) {
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  SnackBar(
                                                                                    content: Text(
                                                                                      'Sunah berhasil ditambah',
                                                                                      style: TextStyle(
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    ),
                                                                                    duration: Duration(milliseconds: 4000),
                                                                                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                  ),
                                                                                );
                                                                                FFAppState().clearIsyacacheCache();
                                                                                safeSetState(() {
                                                                                  FFAppState().clearIsyacacheCache();
                                                                                  _model.apiRequestCompleted5 = false;
                                                                                });
                                                                                await _model.waitForApiRequestCompleted5();
                                                                              }

                                                                              safeSetState(() {});
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.circle_outlined,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                          if (functions.intToString(valueOrDefault<int>(
                                                                                SunahGroup.getsunahdelapanCall
                                                                                    .isComplate(
                                                                                      columnisyaGetsunahdelapanResponse.jsonBody,
                                                                                    )
                                                                                    ?.elementAtOrNull(res8Index),
                                                                                0,
                                                                              )) ==
                                                                              '1')
                                                                            InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  SnackBar(
                                                                                    content: Text(
                                                                                      'Loading...',
                                                                                      style: TextStyle(
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    ),
                                                                                    duration: Duration(milliseconds: 4900),
                                                                                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                  ),
                                                                                );
                                                                                _model.apiResultkdDeleteSunnah8 = await SunahGroup.deleteMysunnahCall.call(
                                                                                  id: valueOrDefault<String>(
                                                                                    functions.intToString(valueOrDefault<int>(
                                                                                      SunahGroup.getsunahdelapanCall
                                                                                          .summaryId(
                                                                                            columnisyaGetsunahdelapanResponse.jsonBody,
                                                                                          )
                                                                                          ?.elementAtOrNull(valueOrDefault<int>(
                                                                                            res8Index,
                                                                                            0,
                                                                                          )),
                                                                                      0,
                                                                                    )),
                                                                                    '0',
                                                                                  ),
                                                                                );

                                                                                if ((_model.apiResultkdDeleteSunnah8?.succeeded ?? true)) {
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        'Sunnah Deleted',
                                                                                        style: TextStyle(
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                      ),
                                                                                      duration: Duration(milliseconds: 4000),
                                                                                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                    ),
                                                                                  );
                                                                                  FFAppState().clearIsyacacheCache();
                                                                                  safeSetState(() {
                                                                                    FFAppState().clearQiyamulLailChaceCache();
                                                                                    _model.apiRequestCompleted6 = false;
                                                                                  });
                                                                                  await _model.waitForApiRequestCompleted6();
                                                                                } else {
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        'Delete Failed',
                                                                                        style: TextStyle(
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                      ),
                                                                                      duration: Duration(milliseconds: 4000),
                                                                                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                    ),
                                                                                  );
                                                                                }

                                                                                safeSetState(() {});
                                                                              },
                                                                              child: Icon(
                                                                                Icons.check_circle,
                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                size: 24.0,
                                                                              ),
                                                                            ),
                                                                        ],
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            SunahGroup.getsunahdelapanCall
                                                                                .namasunah(
                                                                                  columnisyaGetsunahdelapanResponse.jsonBody,
                                                                                )
                                                                                ?.elementAtOrNull(res8Index),
                                                                            '-',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.white,
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            10.0)),
                                                                  ),
                                                                ),
                                                              );
                                                            }),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: Text(
                                              'Tidur',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: AuthUserStreamWidget(
                                              builder: (context) => Container(
                                                decoration: BoxDecoration(
                                                  color: currentUserDocument
                                                      ?.colorThemes,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 2.0,
                                                      color: Color(0x33000000),
                                                      offset: Offset(
                                                        1.0,
                                                        5.0,
                                                      ),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.only(
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 10.0),
                                                  child: FutureBuilder<
                                                      ApiCallResponse>(
                                                    future: FFAppState()
                                                        .tidurcahche(
                                                      requestFn: () => SunahGroup
                                                          .getsunahsembilanCall
                                                          .call(
                                                        iduser: currentUserUid,
                                                        tanggal: dateTimeFormat(
                                                            "yyyy-MM-dd",
                                                            getCurrentTimestamp),
                                                      ),
                                                    )
                                                        .then((result) {
                                                      _model.apiRequestCompleted2 =
                                                          true;
                                                      return result;
                                                    }),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 40.0,
                                                            height: 40.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      final columntidurGetsunahsembilanResponse =
                                                          snapshot.data!;

                                                      return Builder(
                                                        builder: (context) {
                                                          final res9 =
                                                              getJsonField(
                                                            columntidurGetsunahsembilanResponse
                                                                .jsonBody,
                                                            r'''$.data''',
                                                          ).toList();

                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children:
                                                                List.generate(
                                                                    res9.length,
                                                                    (res9Index) {
                                                              final res9Item =
                                                                  res9[
                                                                      res9Index];
                                                              return Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            10.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    context
                                                                        .pushNamed(
                                                                      SubDetailTaskSunahWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
                                                                        'idsunah':
                                                                            serializeParam(
                                                                          SunahGroup
                                                                              .getsunahsembilanCall
                                                                              .id(
                                                                                columntidurGetsunahsembilanResponse.jsonBody,
                                                                              )
                                                                              ?.elementAtOrNull(res9Index),
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                        'namasunah':
                                                                            serializeParam(
                                                                          SunahGroup
                                                                              .getsunahsembilanCall
                                                                              .namasunah(
                                                                                columntidurGetsunahsembilanResponse.jsonBody,
                                                                              )
                                                                              ?.elementAtOrNull(res9Index),
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Stack(
                                                                        children: [
                                                                          InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              _model.result9 = await SunahGroup.tambahSummaryCall.call(
                                                                                iduser: currentUserUid,
                                                                                idsunah: (SunahGroup.getsunahsembilanCall
                                                                                        .id(
                                                                                          columntidurGetsunahsembilanResponse.jsonBody,
                                                                                        )
                                                                                        ?.elementAtOrNull(res9Index))
                                                                                    ?.toString(),
                                                                              );

                                                                              if ((_model.result9?.succeeded ?? true)) {
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  SnackBar(
                                                                                    content: Text(
                                                                                      'Sunah Berhasil ditambah ',
                                                                                      style: TextStyle(
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    ),
                                                                                    duration: Duration(milliseconds: 4000),
                                                                                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                  ),
                                                                                );
                                                                                FFAppState().clearTidurcahcheCache();
                                                                                safeSetState(() {
                                                                                  FFAppState().clearTidurcahcheCache();
                                                                                  _model.apiRequestCompleted2 = false;
                                                                                });
                                                                                await _model.waitForApiRequestCompleted2();
                                                                              }

                                                                              safeSetState(() {});
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.circle_outlined,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                          if (functions.intToString(valueOrDefault<int>(
                                                                                SunahGroup.getsunahsembilanCall
                                                                                    .isComplate(
                                                                                      columntidurGetsunahsembilanResponse.jsonBody,
                                                                                    )
                                                                                    ?.elementAtOrNull(res9Index),
                                                                                0,
                                                                              )) ==
                                                                              '1')
                                                                            InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  SnackBar(
                                                                                    content: Text(
                                                                                      'Loading....',
                                                                                      style: TextStyle(
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    ),
                                                                                    duration: Duration(milliseconds: 4900),
                                                                                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                  ),
                                                                                );
                                                                                _model.apiResultkdDeleteSunnah9 = await SunahGroup.deleteMysunnahCall.call(
                                                                                  id: valueOrDefault<String>(
                                                                                    functions.intToString(valueOrDefault<int>(
                                                                                      SunahGroup.getsunahsembilanCall.summaryId(
                                                                                        columntidurGetsunahsembilanResponse.jsonBody,
                                                                                      ),
                                                                                      0,
                                                                                    )),
                                                                                    '0',
                                                                                  ),
                                                                                );

                                                                                if ((_model.apiResultkdDeleteSunnah9?.succeeded ?? true)) {
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        'Sunnah Deleted',
                                                                                        style: TextStyle(
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                      ),
                                                                                      duration: Duration(milliseconds: 4000),
                                                                                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                    ),
                                                                                  );
                                                                                  FFAppState().clearTidurcahcheCache();
                                                                                  safeSetState(() {
                                                                                    FFAppState().clearQiyamulLailChaceCache();
                                                                                    _model.apiRequestCompleted6 = false;
                                                                                  });
                                                                                  await _model.waitForApiRequestCompleted6();
                                                                                } else {
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        'Delete Failed',
                                                                                        style: TextStyle(
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                      ),
                                                                                      duration: Duration(milliseconds: 4000),
                                                                                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                    ),
                                                                                  );
                                                                                }

                                                                                safeSetState(() {});
                                                                              },
                                                                              child: Icon(
                                                                                Icons.check_circle_rounded,
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                size: 24.0,
                                                                              ),
                                                                            ),
                                                                        ],
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            SunahGroup.getsunahsembilanCall
                                                                                .namasunah(
                                                                                  columntidurGetsunahsembilanResponse.jsonBody,
                                                                                )
                                                                                ?.elementAtOrNull(res9Index),
                                                                            '-',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.white,
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            10.0)),
                                                                  ),
                                                                ),
                                                              );
                                                            }),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: Text(
                                              'Lain Lain',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: AuthUserStreamWidget(
                                              builder: (context) => Container(
                                                decoration: BoxDecoration(
                                                  color: currentUserDocument
                                                      ?.colorThemes,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 2.0,
                                                      color: Color(0x33000000),
                                                      offset: Offset(
                                                        1.0,
                                                        5.0,
                                                      ),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.only(
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 10.0),
                                                  child: FutureBuilder<
                                                      ApiCallResponse>(
                                                    future: FFAppState()
                                                        .lainlaincache(
                                                      requestFn: () => SunahGroup
                                                          .getsunahsepuluhCall
                                                          .call(
                                                        iduser: currentUserUid,
                                                        tanggal: dateTimeFormat(
                                                            "yyyy-MM-dd",
                                                            getCurrentTimestamp),
                                                      ),
                                                    )
                                                        .then((result) {
                                                      _model.apiRequestCompleted1 =
                                                          true;
                                                      return result;
                                                    }),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 40.0,
                                                            height: 40.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      final columnlainGetsunahsepuluhResponse =
                                                          snapshot.data!;

                                                      return Builder(
                                                        builder: (context) {
                                                          final res10 =
                                                              getJsonField(
                                                            columnlainGetsunahsepuluhResponse
                                                                .jsonBody,
                                                            r'''$.data''',
                                                          ).toList();

                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children:
                                                                List.generate(
                                                                    res10
                                                                        .length,
                                                                    (res10Index) {
                                                              final res10Item =
                                                                  res10[
                                                                      res10Index];
                                                              return Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            10.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    context
                                                                        .pushNamed(
                                                                      SubDetailTaskSunahWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
                                                                        'idsunah':
                                                                            serializeParam(
                                                                          SunahGroup
                                                                              .getsunahsepuluhCall
                                                                              .id(
                                                                                columnlainGetsunahsepuluhResponse.jsonBody,
                                                                              )
                                                                              ?.elementAtOrNull(res10Index),
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                        'namasunah':
                                                                            serializeParam(
                                                                          SunahGroup
                                                                              .getsunahsepuluhCall
                                                                              .namasunah(
                                                                                columnlainGetsunahsepuluhResponse.jsonBody,
                                                                              )
                                                                              ?.elementAtOrNull(res10Index),
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Stack(
                                                                        children: [
                                                                          InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              _model.result10 = await SunahGroup.tambahSummaryCall.call(
                                                                                iduser: currentUserUid,
                                                                                idsunah: (SunahGroup.getsunahsepuluhCall
                                                                                        .id(
                                                                                          columnlainGetsunahsepuluhResponse.jsonBody,
                                                                                        )
                                                                                        ?.elementAtOrNull(res10Index))
                                                                                    ?.toString(),
                                                                              );

                                                                              if ((_model.result10?.succeeded ?? true)) {
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  SnackBar(
                                                                                    content: Text(
                                                                                      'Sunah Berhasil ditambah ',
                                                                                      style: TextStyle(
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    ),
                                                                                    duration: Duration(milliseconds: 4000),
                                                                                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                  ),
                                                                                );
                                                                                FFAppState().clearLainlaincacheCache();
                                                                                safeSetState(() {
                                                                                  FFAppState().clearLainlaincacheCache();
                                                                                  _model.apiRequestCompleted1 = false;
                                                                                });
                                                                                await _model.waitForApiRequestCompleted1();
                                                                              }

                                                                              safeSetState(() {});
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.circle_outlined,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                          if (functions.intToString((SunahGroup.getsunahsepuluhCall
                                                                                  .isComplate(
                                                                                    columnlainGetsunahsepuluhResponse.jsonBody,
                                                                                  )!
                                                                                  .elementAtOrNull(res10Index))!) ==
                                                                              '1')
                                                                            InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  SnackBar(
                                                                                    content: Text(
                                                                                      'Loading....',
                                                                                      style: TextStyle(
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    ),
                                                                                    duration: Duration(milliseconds: 4900),
                                                                                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                  ),
                                                                                );
                                                                                _model.apiResultkdDeleteSunnah10 = await SunahGroup.deleteMysunnahCall.call(
                                                                                  id: valueOrDefault<String>(
                                                                                    functions.intToString(valueOrDefault<int>(
                                                                                      SunahGroup.getsunahsepuluhCall.summaryId(
                                                                                        columnlainGetsunahsepuluhResponse.jsonBody,
                                                                                      ),
                                                                                      0,
                                                                                    )),
                                                                                    '0',
                                                                                  ),
                                                                                );

                                                                                if ((_model.apiResultkdDeleteSunnah10?.succeeded ?? true)) {
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        'Sunnah Deleted',
                                                                                        style: TextStyle(
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                      ),
                                                                                      duration: Duration(milliseconds: 4000),
                                                                                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                    ),
                                                                                  );
                                                                                  FFAppState().clearLainlaincacheCache();
                                                                                  safeSetState(() {
                                                                                    FFAppState().clearQiyamulLailChaceCache();
                                                                                    _model.apiRequestCompleted6 = false;
                                                                                  });
                                                                                  await _model.waitForApiRequestCompleted6();
                                                                                } else {
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        'Delete Failed',
                                                                                        style: TextStyle(
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                      ),
                                                                                      duration: Duration(milliseconds: 4000),
                                                                                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                    ),
                                                                                  );
                                                                                }

                                                                                safeSetState(() {});
                                                                              },
                                                                              child: Icon(
                                                                                Icons.check_circle_rounded,
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                size: 24.0,
                                                                              ),
                                                                            ),
                                                                        ],
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            SunahGroup.getsunahsepuluhCall
                                                                                .namasunah(
                                                                                  columnlainGetsunahsepuluhResponse.jsonBody,
                                                                                )
                                                                                ?.elementAtOrNull(res10Index),
                                                                            '-',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Colors.white,
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            10.0)),
                                                                  ),
                                                                ),
                                                              );
                                                            }),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 90.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                wrapWithModel(
                  model: _model.navbarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: NavbarWidget(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
