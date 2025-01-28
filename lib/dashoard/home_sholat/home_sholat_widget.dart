import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/componen/date_componen/date_componen_widget.dart';
import '/componen/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'home_sholat_model.dart';
export 'home_sholat_model.dart';

class HomeSholatWidget extends StatefulWidget {
  const HomeSholatWidget({super.key});

  @override
  State<HomeSholatWidget> createState() => _HomeSholatWidgetState();
}

class _HomeSholatWidgetState extends State<HomeSholatWidget> {
  late HomeSholatModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeSholatModel());
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                child: AuthUserStreamWidget(
                  builder: (context) => FutureBuilder<ApiCallResponse>(
                    future: _model
                        .jadwalSholatHarian(
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
                      final columnJadwalSholatResponse = snapshot.data!;

                      return RefreshIndicator(
                        onRefresh: () async {
                          safeSetState(() {
                            _model.clearJadwalSholatHarianCache();
                            _model.apiRequestCompleted = false;
                          });
                          await _model.waitForApiRequestCompleted();
                        },
                        child: SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Builder(
                                builder: (context) {
                                  if (getCurrentTimestamp <
                                      functions.convertStringToDateTime(
                                          JadwalSholatCall.subuh(
                                            columnJadwalSholatResponse.jsonBody,
                                          )!
                                              .where((e) =>
                                                  JadwalSholatCall.tanggal(
                                                    columnJadwalSholatResponse
                                                        .jsonBody,
                                                  )
                                                      ?.where((e) =>
                                                          e ==
                                                          functions
                                                              .convertDateToString())
                                                      .toList()
                                                      .firstOrNull ==
                                                  functions
                                                      .convertDateToString())
                                              .toList()
                                              .firstOrNull!,
                                          JadwalSholatCall.tanggal(
                                            columnJadwalSholatResponse.jsonBody,
                                          )!
                                              .where((e) =>
                                                  e ==
                                                  functions
                                                      .convertDateToString())
                                              .toList()
                                              .firstOrNull!)!) {
                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Fajr : ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            valueOrDefault<String>(
                                              functions.timerSholat(
                                                  getCurrentTimestamp,
                                                  functions
                                                      .convertStringToDateTime(
                                                          JadwalSholatCall
                                                                  .subuh(
                                                            columnJadwalSholatResponse
                                                                .jsonBody,
                                                          )!
                                                              .where((e) =>
                                                                  JadwalSholatCall
                                                                          .tanggal(
                                                                    columnJadwalSholatResponse
                                                                        .jsonBody,
                                                                  )
                                                                      ?.where((e) =>
                                                                          e ==
                                                                          functions
                                                                              .convertDateToString())
                                                                      .toList()
                                                                      .firstOrNull ==
                                                                  functions
                                                                      .convertDateToString())
                                                              .toList()
                                                              .firstOrNull!,
                                                          JadwalSholatCall
                                                                  .tanggal(
                                                            columnJadwalSholatResponse
                                                                .jsonBody,
                                                          )!
                                                              .where((e) =>
                                                                  e ==
                                                                  functions
                                                                      .convertDateToString())
                                                              .toList()
                                                              .firstOrNull!)!),
                                              '---',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context
                                                .pushNamed('kalenderHijriah');
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/modern-menu-icon-for-mobile-apps-and-websites-vector-16849184_1.png',
                                              width: 24.0,
                                              height: 24.0,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  } else if (getCurrentTimestamp <
                                      functions.convertStringToDateTime(
                                          JadwalSholatCall.dzuhur(
                                            columnJadwalSholatResponse.jsonBody,
                                          )!
                                              .where((e) =>
                                                  JadwalSholatCall.tanggal(
                                                    columnJadwalSholatResponse
                                                        .jsonBody,
                                                  )
                                                      ?.where((e) =>
                                                          e ==
                                                          functions
                                                              .convertDateToString())
                                                      .toList()
                                                      .firstOrNull ==
                                                  functions
                                                      .convertDateToString())
                                              .toList()
                                              .firstOrNull!,
                                          JadwalSholatCall.tanggal(
                                            columnJadwalSholatResponse.jsonBody,
                                          )!
                                              .where((e) =>
                                                  e ==
                                                  functions
                                                      .convertDateToString())
                                              .toList()
                                              .firstOrNull!)!) {
                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Dzuhur : ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            valueOrDefault<String>(
                                              functions.timerSholat(
                                                  getCurrentTimestamp,
                                                  functions
                                                      .convertStringToDateTime(
                                                          JadwalSholatCall
                                                                  .dzuhur(
                                                            columnJadwalSholatResponse
                                                                .jsonBody,
                                                          )!
                                                              .where((e) =>
                                                                  JadwalSholatCall
                                                                          .tanggal(
                                                                    columnJadwalSholatResponse
                                                                        .jsonBody,
                                                                  )
                                                                      ?.where((e) =>
                                                                          e ==
                                                                          functions
                                                                              .convertDateToString())
                                                                      .toList()
                                                                      .firstOrNull ==
                                                                  functions
                                                                      .convertDateToString())
                                                              .toList()
                                                              .firstOrNull!,
                                                          JadwalSholatCall
                                                                  .tanggal(
                                                            columnJadwalSholatResponse
                                                                .jsonBody,
                                                          )!
                                                              .where((e) =>
                                                                  e ==
                                                                  functions
                                                                      .convertDateToString())
                                                              .toList()
                                                              .firstOrNull!)!),
                                              '---',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context
                                                .pushNamed('kalenderHijriah');
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/modern-menu-icon-for-mobile-apps-and-websites-vector-16849184_1.png',
                                              width: 24.0,
                                              height: 24.0,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  } else if (getCurrentTimestamp <
                                      functions.convertStringToDateTime(
                                          JadwalSholatCall.ashar(
                                            columnJadwalSholatResponse.jsonBody,
                                          )!
                                              .where((e) =>
                                                  JadwalSholatCall.tanggal(
                                                    columnJadwalSholatResponse
                                                        .jsonBody,
                                                  )
                                                      ?.where((e) =>
                                                          e ==
                                                          functions
                                                              .convertDateToString())
                                                      .toList()
                                                      .firstOrNull ==
                                                  functions
                                                      .convertDateToString())
                                              .toList()
                                              .firstOrNull!,
                                          JadwalSholatCall.tanggal(
                                            columnJadwalSholatResponse.jsonBody,
                                          )!
                                              .where((e) =>
                                                  e ==
                                                  functions
                                                      .convertDateToString())
                                              .toList()
                                              .firstOrNull!)!) {
                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Ashr : ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            valueOrDefault<String>(
                                              functions.timerSholat(
                                                  getCurrentTimestamp,
                                                  functions
                                                      .convertStringToDateTime(
                                                          JadwalSholatCall
                                                                  .ashar(
                                                            columnJadwalSholatResponse
                                                                .jsonBody,
                                                          )!
                                                              .where((e) =>
                                                                  JadwalSholatCall
                                                                          .tanggal(
                                                                    columnJadwalSholatResponse
                                                                        .jsonBody,
                                                                  )
                                                                      ?.where((e) =>
                                                                          e ==
                                                                          functions
                                                                              .convertDateToString())
                                                                      .toList()
                                                                      .firstOrNull ==
                                                                  functions
                                                                      .convertDateToString())
                                                              .toList()
                                                              .firstOrNull!,
                                                          JadwalSholatCall
                                                                  .tanggal(
                                                            columnJadwalSholatResponse
                                                                .jsonBody,
                                                          )!
                                                              .where((e) =>
                                                                  e ==
                                                                  functions
                                                                      .convertDateToString())
                                                              .toList()
                                                              .firstOrNull!)!),
                                              '---',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context
                                                .pushNamed('kalenderHijriah');
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/modern-menu-icon-for-mobile-apps-and-websites-vector-16849184_1.png',
                                              width: 24.0,
                                              height: 24.0,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  } else if (getCurrentTimestamp <
                                      functions.convertStringToDateTime(
                                          JadwalSholatCall.maghrib(
                                            columnJadwalSholatResponse.jsonBody,
                                          )!
                                              .where((e) =>
                                                  JadwalSholatCall.tanggal(
                                                    columnJadwalSholatResponse
                                                        .jsonBody,
                                                  )
                                                      ?.where((e) =>
                                                          e ==
                                                          functions
                                                              .convertDateToString())
                                                      .toList()
                                                      .firstOrNull ==
                                                  functions
                                                      .convertDateToString())
                                              .toList()
                                              .firstOrNull!,
                                          JadwalSholatCall.tanggal(
                                            columnJadwalSholatResponse.jsonBody,
                                          )!
                                              .where((e) =>
                                                  e ==
                                                  functions
                                                      .convertDateToString())
                                              .toList()
                                              .firstOrNull!)!) {
                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Maghrib : ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            valueOrDefault<String>(
                                              functions.timerSholat(
                                                  getCurrentTimestamp,
                                                  functions
                                                      .convertStringToDateTime(
                                                          JadwalSholatCall
                                                                  .maghrib(
                                                            columnJadwalSholatResponse
                                                                .jsonBody,
                                                          )!
                                                              .where((e) =>
                                                                  JadwalSholatCall
                                                                          .tanggal(
                                                                    columnJadwalSholatResponse
                                                                        .jsonBody,
                                                                  )
                                                                      ?.where((e) =>
                                                                          e ==
                                                                          functions
                                                                              .convertDateToString())
                                                                      .toList()
                                                                      .firstOrNull ==
                                                                  functions
                                                                      .convertDateToString())
                                                              .toList()
                                                              .firstOrNull!,
                                                          JadwalSholatCall
                                                                  .tanggal(
                                                            columnJadwalSholatResponse
                                                                .jsonBody,
                                                          )!
                                                              .where((e) =>
                                                                  e ==
                                                                  functions
                                                                      .convertDateToString())
                                                              .toList()
                                                              .firstOrNull!)!),
                                              '---',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context
                                                .pushNamed('kalenderHijriah');
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/modern-menu-icon-for-mobile-apps-and-websites-vector-16849184_1.png',
                                              width: 24.0,
                                              height: 24.0,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  } else if (getCurrentTimestamp <
                                      functions.convertStringToDateTime(
                                          JadwalSholatCall.isya(
                                            columnJadwalSholatResponse.jsonBody,
                                          )!
                                              .where((e) =>
                                                  JadwalSholatCall.tanggal(
                                                    columnJadwalSholatResponse
                                                        .jsonBody,
                                                  )
                                                      ?.where((e) =>
                                                          e ==
                                                          functions
                                                              .convertDateToString())
                                                      .toList()
                                                      .firstOrNull ==
                                                  functions
                                                      .convertDateToString())
                                              .toList()
                                              .firstOrNull!,
                                          JadwalSholatCall.tanggal(
                                            columnJadwalSholatResponse.jsonBody,
                                          )!
                                              .where((e) =>
                                                  e ==
                                                  functions
                                                      .convertDateToString())
                                              .toList()
                                              .firstOrNull!)!) {
                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Isya : ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            valueOrDefault<String>(
                                              functions.timerSholat(
                                                  getCurrentTimestamp,
                                                  functions
                                                      .convertStringToDateTime(
                                                          JadwalSholatCall.isya(
                                                            columnJadwalSholatResponse
                                                                .jsonBody,
                                                          )!
                                                              .where((e) =>
                                                                  JadwalSholatCall
                                                                          .tanggal(
                                                                    columnJadwalSholatResponse
                                                                        .jsonBody,
                                                                  )
                                                                      ?.where((e) =>
                                                                          e ==
                                                                          functions
                                                                              .convertDateToString())
                                                                      .toList()
                                                                      .firstOrNull ==
                                                                  functions
                                                                      .convertDateToString())
                                                              .toList()
                                                              .firstOrNull!,
                                                          JadwalSholatCall
                                                                  .tanggal(
                                                            columnJadwalSholatResponse
                                                                .jsonBody,
                                                          )!
                                                              .where((e) =>
                                                                  e ==
                                                                  functions
                                                                      .convertDateToString())
                                                              .toList()
                                                              .firstOrNull!)!),
                                              '---',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context
                                                .pushNamed('kalenderHijriah');
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/modern-menu-icon-for-mobile-apps-and-websites-vector-16849184_1.png',
                                              width: 24.0,
                                              height: 24.0,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  } else {
                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Fajr : ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            valueOrDefault<String>(
                                              functions.timerSholat(
                                                  getCurrentTimestamp,
                                                  functions
                                                      .convertStringToDateTime(
                                                          JadwalSholatCall
                                                                  .subuh(
                                                            columnJadwalSholatResponse
                                                                .jsonBody,
                                                          )!
                                                              .where((e) =>
                                                                  JadwalSholatCall
                                                                          .tanggal(
                                                                    columnJadwalSholatResponse
                                                                        .jsonBody,
                                                                  )
                                                                      ?.where((e) =>
                                                                          e ==
                                                                          functions
                                                                              .convertTomorrowToString())
                                                                      .toList()
                                                                      .firstOrNull ==
                                                                  functions
                                                                      .convertTomorrowToString())
                                                              .toList()
                                                              .firstOrNull!,
                                                          JadwalSholatCall
                                                                  .tanggal(
                                                            columnJadwalSholatResponse
                                                                .jsonBody,
                                                          )!
                                                              .where((e) =>
                                                                  e ==
                                                                  functions
                                                                      .convertTomorrowToString())
                                                              .toList()
                                                              .firstOrNull!)!),
                                              '---',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context
                                                .pushNamed('kalenderHijriah');
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/modern-menu-icon-for-mobile-apps-and-websites-vector-16849184_1.png',
                                              width: 24.0,
                                              height: 24.0,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  }
                                },
                              ),
                              Text(
                                valueOrDefault<String>(
                                  dateTimeFormat("Hm", getCurrentTimestamp),
                                  '-',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Nunito',
                                      fontSize: 50.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                              FutureBuilder<ApiCallResponse>(
                                future: _model.hijriDateSholat(
                                  requestFn: () =>
                                      ConvertMasehiKeHijriCall.call(
                                    date: functions.convertDateToString(),
                                  ),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 20.0,
                                        height: 20.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
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
                                    textScaler:
                                        MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: valueOrDefault<String>(
                                            ConvertMasehiKeHijriCall.bulan(
                                              richTextConvertMasehiKeHijriResponse
                                                  .jsonBody,
                                            ),
                                            '--',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 15.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        const TextSpan(
                                          text: ' ',
                                          style: TextStyle(),
                                        ),
                                        TextSpan(
                                          text: valueOrDefault<String>(
                                            ConvertMasehiKeHijriCall.tanggal(
                                              richTextConvertMasehiKeHijriResponse
                                                  .jsonBody,
                                            ),
                                            '--',
                                          ),
                                          style: const TextStyle(),
                                        ),
                                        const TextSpan(
                                          text: ', ',
                                          style: TextStyle(),
                                        ),
                                        TextSpan(
                                          text: valueOrDefault<String>(
                                            ConvertMasehiKeHijriCall.tahun(
                                              richTextConvertMasehiKeHijriResponse
                                                  .jsonBody,
                                            ),
                                            '--',
                                          ),
                                          style: const TextStyle(),
                                        ),
                                        const TextSpan(
                                          text: ' H',
                                          style: TextStyle(),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  );
                                },
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.dateComponenModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const DateComponenWidget(),
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('location');
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: currentUserDocument?.colorThemes,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 2.0,
                                          color: Color(0x33000000),
                                          offset: Offset(
                                            2.0,
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
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 10.0, 10.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Icon(
                                              Icons.location_on,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              size: 24.0,
                                            ),
                                          ),
                                          RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    valueOrDefault(
                                                        currentUserDocument
                                                            ?.city,
                                                        ''),
                                                    'Jakarta Pusat',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                const TextSpan(
                                                  text: ', ',
                                                  style: TextStyle(),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    valueOrDefault(
                                                        currentUserDocument
                                                            ?.country,
                                                        ''),
                                                    'Indonesia',
                                                  ),
                                                  style: const TextStyle(),
                                                )
                                              ],
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
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
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed('newkiblat');
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: currentUserDocument
                                                ?.colorThemes,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 2.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  2.0,
                                                  4.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(20.0),
                                              bottomRight:
                                                  Radius.circular(20.0),
                                              topLeft: Radius.circular(20.0),
                                              topRight: Radius.circular(20.0),
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 10.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .solidCompass,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    size: 24.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Qiblat',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context
                                              .pushNamed('detailJadwalSholat');
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: currentUserDocument
                                                ?.colorThemes,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 2.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  2.0,
                                                  4.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(20.0),
                                              bottomRight:
                                                  Radius.circular(20.0),
                                              topLeft: Radius.circular(20.0),
                                              topRight: Radius.circular(20.0),
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 10.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Icon(
                                                    Icons.list_alt_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    size: 24.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Jadwal Sholat',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 20.0)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 30.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 380.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: Text(
                                            'Waktu Sholat',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            25.0, 20.0, 25.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 2.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  2.0,
                                                  4.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(20.0),
                                              bottomRight:
                                                  Radius.circular(20.0),
                                              topLeft: Radius.circular(20.0),
                                              topRight: Radius.circular(20.0),
                                            ),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 10.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    'Fajr',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    JadwalSholatCall.subuh(
                                                      columnJadwalSholatResponse
                                                          .jsonBody,
                                                    )
                                                        ?.where((e) => functions
                                                            .checkIfDateIsTodayBool(
                                                                functions.convertStringToDateTimeUntukExpired(JadwalSholatCall
                                                                        .tanggal(
                                                                  columnJadwalSholatResponse
                                                                      .jsonBody,
                                                                )!
                                                                    .where((e) =>
                                                                        e ==
                                                                        functions
                                                                            .convertDateToString())
                                                                    .toList()
                                                                    .firstOrNull!)!,
                                                                getCurrentTimestamp)!)
                                                        .toList()
                                                        .firstOrNull,
                                                    '--',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Stack(
                                                  children: [
                                                    if (FFAppState()
                                                            .ringtonePlay ==
                                                        false)
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    0.0,
                                                                    15.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await actions
                                                                .customRingtone();
                                                            FFAppState()
                                                                    .ringtonePlay =
                                                                true;
                                                            safeSetState(() {});
                                                          },
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .volumeUp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                    if (FFAppState()
                                                            .ringtonePlay ==
                                                        true)
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    0.0,
                                                                    15.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await actions
                                                                .customRingtoneStop();
                                                            FFAppState()
                                                                    .ringtonePlay =
                                                                false;
                                                            safeSetState(() {});
                                                          },
                                                          child: Icon(
                                                            Icons.stop,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 23.0,
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            25.0, 20.0, 25.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 2.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  2.0,
                                                  4.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(20.0),
                                              bottomRight:
                                                  Radius.circular(20.0),
                                              topLeft: Radius.circular(20.0),
                                              topRight: Radius.circular(20.0),
                                            ),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 10.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    'Dzuhur',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    JadwalSholatCall.dzuhur(
                                                      columnJadwalSholatResponse
                                                          .jsonBody,
                                                    )
                                                        ?.where((e) => functions
                                                            .checkIfDateIsTodayBool(
                                                                functions.convertStringToDateTimeUntukExpired(JadwalSholatCall
                                                                        .tanggal(
                                                                  columnJadwalSholatResponse
                                                                      .jsonBody,
                                                                )!
                                                                    .where((e) =>
                                                                        e ==
                                                                        functions
                                                                            .convertDateToString())
                                                                    .toList()
                                                                    .firstOrNull!)!,
                                                                getCurrentTimestamp)!)
                                                        .toList()
                                                        .firstOrNull,
                                                    '--',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Stack(
                                                  children: [
                                                    if (FFAppState()
                                                            .ringtonePlay2 ==
                                                        false)
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    0.0,
                                                                    15.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await actions
                                                                .customRingtone();
                                                            FFAppState()
                                                                    .ringtonePlay2 =
                                                                true;
                                                            safeSetState(() {});
                                                          },
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .volumeUp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                    if (FFAppState()
                                                            .ringtonePlay2 ==
                                                        true)
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    0.0,
                                                                    15.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await actions
                                                                .customRingtoneStop();
                                                            FFAppState()
                                                                    .ringtonePlay2 =
                                                                false;
                                                            safeSetState(() {});
                                                          },
                                                          child: Icon(
                                                            Icons.stop,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 23.0,
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            25.0, 20.0, 25.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 2.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  2.0,
                                                  4.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(20.0),
                                              bottomRight:
                                                  Radius.circular(20.0),
                                              topLeft: Radius.circular(20.0),
                                              topRight: Radius.circular(20.0),
                                            ),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 10.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    'Ashr',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    JadwalSholatCall.ashar(
                                                      columnJadwalSholatResponse
                                                          .jsonBody,
                                                    )
                                                        ?.where((e) => functions
                                                            .checkIfDateIsTodayBool(
                                                                functions.convertStringToDateTimeUntukExpired(JadwalSholatCall
                                                                        .tanggal(
                                                                  columnJadwalSholatResponse
                                                                      .jsonBody,
                                                                )!
                                                                    .where((e) =>
                                                                        e ==
                                                                        functions
                                                                            .convertDateToString())
                                                                    .toList()
                                                                    .firstOrNull!)!,
                                                                getCurrentTimestamp)!)
                                                        .toList()
                                                        .firstOrNull,
                                                    '--',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Stack(
                                                  children: [
                                                    if (FFAppState()
                                                            .ringtonePlay3 ==
                                                        false)
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    0.0,
                                                                    15.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await actions
                                                                .customRingtone();
                                                            FFAppState()
                                                                    .ringtonePlay3 =
                                                                true;
                                                            safeSetState(() {});
                                                          },
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .volumeUp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                    if (FFAppState()
                                                            .ringtonePlay3 ==
                                                        true)
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    0.0,
                                                                    15.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await actions
                                                                .customRingtoneStop();
                                                            FFAppState()
                                                                    .ringtonePlay3 =
                                                                false;
                                                            safeSetState(() {});
                                                          },
                                                          child: Icon(
                                                            Icons.stop,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 23.0,
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            25.0, 20.0, 25.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 2.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  2.0,
                                                  4.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(20.0),
                                              bottomRight:
                                                  Radius.circular(20.0),
                                              topLeft: Radius.circular(20.0),
                                              topRight: Radius.circular(20.0),
                                            ),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 10.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    'Magrib',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    JadwalSholatCall.maghrib(
                                                      columnJadwalSholatResponse
                                                          .jsonBody,
                                                    )
                                                        ?.where((e) => functions
                                                            .checkIfDateIsTodayBool(
                                                                functions.convertStringToDateTimeUntukExpired(JadwalSholatCall
                                                                        .tanggal(
                                                                  columnJadwalSholatResponse
                                                                      .jsonBody,
                                                                )!
                                                                    .where((e) =>
                                                                        e ==
                                                                        functions
                                                                            .convertDateToString())
                                                                    .toList()
                                                                    .firstOrNull!)!,
                                                                getCurrentTimestamp)!)
                                                        .toList()
                                                        .firstOrNull,
                                                    '--',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Stack(
                                                  children: [
                                                    if (FFAppState()
                                                            .ringtonePlay4 ==
                                                        false)
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    0.0,
                                                                    15.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await actions
                                                                .customRingtone();
                                                            FFAppState()
                                                                    .ringtonePlay4 =
                                                                true;
                                                            safeSetState(() {});
                                                          },
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .volumeUp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                    if (FFAppState()
                                                            .ringtonePlay4 ==
                                                        true)
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    0.0,
                                                                    15.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await actions
                                                                .customRingtoneStop();
                                                            FFAppState()
                                                                    .ringtonePlay4 =
                                                                false;
                                                            safeSetState(() {});
                                                          },
                                                          child: Icon(
                                                            Icons.stop,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 23.0,
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            25.0, 20.0, 25.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 2.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  2.0,
                                                  4.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(20.0),
                                              bottomRight:
                                                  Radius.circular(20.0),
                                              topLeft: Radius.circular(20.0),
                                              topRight: Radius.circular(20.0),
                                            ),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 10.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    'Isya',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    JadwalSholatCall.isya(
                                                      columnJadwalSholatResponse
                                                          .jsonBody,
                                                    )
                                                        ?.where((e) => functions
                                                            .checkIfDateIsTodayBool(
                                                                functions.convertStringToDateTimeUntukExpired(JadwalSholatCall
                                                                        .tanggal(
                                                                  columnJadwalSholatResponse
                                                                      .jsonBody,
                                                                )!
                                                                    .where((e) =>
                                                                        e ==
                                                                        functions
                                                                            .convertDateToString())
                                                                    .toList()
                                                                    .firstOrNull!)!,
                                                                getCurrentTimestamp)!)
                                                        .toList()
                                                        .firstOrNull,
                                                    '--',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Stack(
                                                  children: [
                                                    if (FFAppState()
                                                            .ringtonePlay5 ==
                                                        false)
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    0.0,
                                                                    15.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await actions
                                                                .customRingtone();
                                                            FFAppState()
                                                                    .ringtonePlay5 =
                                                                true;
                                                            safeSetState(() {});
                                                          },
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .volumeUp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                    if (FFAppState()
                                                            .ringtonePlay5 ==
                                                        true)
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    0.0,
                                                                    15.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await actions
                                                                .customRingtoneStop();
                                                            FFAppState()
                                                                    .ringtonePlay5 =
                                                                false;
                                                            safeSetState(() {});
                                                          },
                                                          child: Icon(
                                                            Icons.stop,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 23.0,
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ].addToEnd(const SizedBox(height: 100.0)),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.navbarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const NavbarWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
