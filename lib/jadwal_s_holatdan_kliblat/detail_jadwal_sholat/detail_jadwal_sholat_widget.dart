import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/componen/date_componen/date_componen_widget.dart';
import '/componen/footer_logo/footer_logo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'detail_jadwal_sholat_model.dart';
export 'detail_jadwal_sholat_model.dart';

class DetailJadwalSholatWidget extends StatefulWidget {
  const DetailJadwalSholatWidget({super.key});

  static String routeName = 'detailJadwalSholat';
  static String routePath = '/detailJadwalSholat';

  @override
  State<DetailJadwalSholatWidget> createState() =>
      _DetailJadwalSholatWidgetState();
}

class _DetailJadwalSholatWidgetState extends State<DetailJadwalSholatWidget> {
  late DetailJadwalSholatModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailJadwalSholatModel());

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
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
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
                        size: 35.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: AuthUserStreamWidget(
                      builder: (context) => Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: currentUserDocument?.colorThemes,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 4.0, 4.0, 4.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: valueOrDefault<String>(
                                        valueOrDefault(
                                            currentUserDocument?.city, ''),
                                        'Jakarta Pusat',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    TextSpan(
                                      text: ' ',
                                      style: TextStyle(),
                                    ),
                                    TextSpan(
                                      text: valueOrDefault<String>(
                                        valueOrDefault(
                                            currentUserDocument?.country, ''),
                                        'Indonesia',
                                      ),
                                      style: TextStyle(),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FFAppState().colorFontThemes,
                                        fontSize: 15.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ],
                          ),
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.dateComponenModel,
                    updateCallback: () => safeSetState(() {}),
                    child: DateComponenWidget(),
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  color: Color(0xFFE5E5E5),
                ),
                AuthUserStreamWidget(
                  builder: (context) => Container(
                    decoration: BoxDecoration(
                      color: currentUserDocument?.colorThemes,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).blackText,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tanggal',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: FFAppState().colorFontThemes,
                                  fontSize: 10.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Text(
                            'Fajr',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: FFAppState().colorFontThemes,
                                  fontSize: 10.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Text(
                            'Terbit',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: FFAppState().colorFontThemes,
                                  fontSize: 10.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Text(
                            'Dzuhur',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: FFAppState().colorFontThemes,
                                  fontSize: 10.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Text(
                            'Ashar',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: FFAppState().colorFontThemes,
                                  fontSize: 10.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Text(
                            'Maghrib',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: FFAppState().colorFontThemes,
                                  fontSize: 10.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            child: Text(
                              'Isya',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FFAppState().colorFontThemes,
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: AuthUserStreamWidget(
                    builder: (context) => FutureBuilder<ApiCallResponse>(
                      future: _model
                          .jadwalSholat(
                        requestFn: () => JadwalSholatCall.call(
                          year: functions
                              .convertDateToInteger(getCurrentTimestamp)
                              ?.lastOrNull,
                          month: functions
                              .convertDateToInteger(getCurrentTimestamp)
                              ?.firstOrNull,
                          city: valueOrDefault<String>(
                            valueOrDefault(currentUserDocument?.city, ''),
                            'Jakarta Pusat',
                          ),
                          country: valueOrDefault<String>(
                            valueOrDefault(currentUserDocument?.country, ''),
                            'Indonesia',
                          ),
                        ),
                      )
                          .then((result) {
                        _model.apiRequestCompleted = true;
                        return result;
                      }),
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
                        final listViewJadwalSholatResponse = snapshot.data!;

                        return Builder(
                          builder: (context) {
                            final jadwalSholat = JadwalSholatCall.dataFull(
                                  listViewJadwalSholatResponse.jsonBody,
                                )?.toList() ??
                                [];

                            return RefreshIndicator(
                              onRefresh: () async {
                                safeSetState(() {
                                  _model.clearJadwalSholatCache();
                                  _model.apiRequestCompleted = false;
                                });
                                await _model.waitForApiRequestCompleted();
                              },
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: jadwalSholat.length,
                                itemBuilder: (context, jadwalSholatIndex) {
                                  final jadwalSholatItem =
                                      jadwalSholat[jadwalSholatIndex];
                                  return Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .blackText,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            getJsonField(
                                              jadwalSholatItem,
                                              r'''$.date.gregorian.date''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 6.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            getJsonField(
                                              jadwalSholatItem,
                                              r'''$.timings.Fajr''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 6.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            getJsonField(
                                              jadwalSholatItem,
                                              r'''$.timings.Sunrise''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 6.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            getJsonField(
                                              jadwalSholatItem,
                                              r'''$.timings.Dhuhr''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 6.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            getJsonField(
                                              jadwalSholatItem,
                                              r'''$.timings.Asr''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 6.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            getJsonField(
                                              jadwalSholatItem,
                                              r'''$.timings.Maghrib''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 6.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            getJsonField(
                                              jadwalSholatItem,
                                              r'''$.timings.Isha''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 6.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: wrapWithModel(
                    model: _model.footerLogoModel,
                    updateCallback: () => safeSetState(() {}),
                    child: FooterLogoWidget(),
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
