import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/componen/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'my_dashboard_model.dart';
export 'my_dashboard_model.dart';

class MyDashboardWidget extends StatefulWidget {
  const MyDashboardWidget({super.key});

  @override
  State<MyDashboardWidget> createState() => _MyDashboardWidgetState();
}

class _MyDashboardWidgetState extends State<MyDashboardWidget> {
  late MyDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyDashboardModel());

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
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
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
                                color: FlutterFlowTheme.of(context).primary,
                                size: 25.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
                      child: Text(
                        'Dashboard',
                        textAlign: TextAlign.start,
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
            actions: const [],
            centerTitle: false,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Container(
                              width: valueOrDefault<double>(
                                () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 380.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 680.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 1000.0;
                                  } else {
                                    return 1200.0;
                                  }
                                }(),
                                380.0,
                              ),
                              height: 235.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: Image.asset(
                                    'assets/images/Rectangle_37.png',
                                  ).image,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 20.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 30.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Online User',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 15.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      FutureBuilder<int>(
                                        future: queryUsersRecordCount(
                                          queryBuilder: (usersRecord) =>
                                              usersRecord.where(
                                            'online_status',
                                            isEqualTo: 1,
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
                                          int textCount = snapshot.data!;

                                          return Text(
                                            valueOrDefault<String>(
                                              textCount.toString(),
                                              '0',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  fontSize: 32.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: Text(
                                    'Dayly',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (valueOrDefault(
                                  currentUserDocument?.statusPremium, 0) ==
                              0)
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: AuthUserStreamWidget(
                                builder: (context) => Container(
                                  width: valueOrDefault<double>(
                                    () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 380.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 680.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 1000.0;
                                      } else {
                                        return 1200.0;
                                      }
                                    }(),
                                    380.0,
                                  ),
                                  height: 235.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: Image.asset(
                                        'assets/images/Rectangle_37.png',
                                      ).image,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.lock,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 100.0),
                        child: Wrap(
                          spacing: 5.0,
                          runSpacing: 5.0,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 152.0,
                              height: 147.0,
                              decoration: BoxDecoration(
                                color: FFAppState().colorThemes,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Stack(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                children: [
                                  AuthUserStreamWidget(
                                    builder: (context) => Container(
                                      width: 182.0,
                                      height: 147.0,
                                      decoration: BoxDecoration(
                                        color: currentUserDocument?.colorThemes,
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 2.0,
                                            color: Color(0x33000000),
                                            offset: Offset(
                                              2.0,
                                              5.0,
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
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 20.0, 10.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Free User',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: FFAppState()
                                                            .colorFontThemes,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: FFAppState()
                                                      .colorFontThemes,
                                                  size: 15.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: FutureBuilder<int>(
                                              future: queryUsersRecordCount(
                                                queryBuilder: (usersRecord) =>
                                                    usersRecord.where(
                                                  'status_premium',
                                                  isEqualTo: 0,
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
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                int textCount = snapshot.data!;

                                                return Text(
                                                  valueOrDefault<String>(
                                                    textCount.toString(),
                                                    '0',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: FFAppState()
                                                            .colorFontThemes,
                                                        fontSize: 28.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  if (valueOrDefault(
                                          currentUserDocument?.statusPremium,
                                          0) ==
                                      0)
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Container(
                                          width: 182.0,
                                          height: 107.0,
                                          decoration: BoxDecoration(
                                            color: FFAppState().colorThemes,
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(20.0),
                                              bottomRight:
                                                  Radius.circular(20.0),
                                              topLeft: Radius.circular(20.0),
                                              topRight: Radius.circular(20.0),
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.lock_sharp,
                                            color: FFAppState().colorFontThemes,
                                            size: 34.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Container(
                              width: 152.0,
                              height: 147.0,
                              decoration: BoxDecoration(
                                color: FFAppState().colorThemes,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Stack(
                                children: [
                                  AuthUserStreamWidget(
                                    builder: (context) => Container(
                                      width: 182.0,
                                      height: 147.0,
                                      decoration: BoxDecoration(
                                        color: currentUserDocument?.colorThemes,
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 2.0,
                                            color: Color(0x33000000),
                                            offset: Offset(
                                              2.0,
                                              5.0,
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
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 20.0, 10.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Paid User',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: FFAppState()
                                                            .colorFontThemes,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: FFAppState()
                                                      .colorFontThemes,
                                                  size: 15.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: FutureBuilder<int>(
                                              future: queryUsersRecordCount(
                                                queryBuilder: (usersRecord) =>
                                                    usersRecord.where(
                                                  'status_premium',
                                                  isEqualTo: 1,
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
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                int textCount = snapshot.data!;

                                                return Text(
                                                  valueOrDefault<String>(
                                                    textCount.toString(),
                                                    '0',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: FFAppState()
                                                            .colorFontThemes,
                                                        fontSize: 28.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  if (valueOrDefault(
                                          currentUserDocument?.statusPremium,
                                          0) ==
                                      0)
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Container(
                                          width: 182.0,
                                          height: 107.0,
                                          decoration: BoxDecoration(
                                            color: FFAppState().colorThemes,
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(20.0),
                                              bottomRight:
                                                  Radius.circular(20.0),
                                              topLeft: Radius.circular(20.0),
                                              topRight: Radius.circular(20.0),
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.lock_sharp,
                                            color: FFAppState().colorFontThemes,
                                            size: 34.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Container(
                              width: 152.0,
                              height: 147.0,
                              decoration: BoxDecoration(
                                color: FFAppState().colorThemes,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Stack(
                                children: [
                                  AuthUserStreamWidget(
                                    builder: (context) => Container(
                                      width: 182.0,
                                      height: 147.0,
                                      decoration: BoxDecoration(
                                        color: currentUserDocument?.colorThemes,
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 2.0,
                                            color: Color(0x33000000),
                                            offset: Offset(
                                              2.0,
                                              5.0,
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
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 20.0, 10.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Sunnah Keseharian',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: FFAppState()
                                                            .colorFontThemes,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: FFAppState()
                                                      .colorFontThemes,
                                                  size: 15.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          FutureBuilder<ApiCallResponse>(
                                            future:
                                                SunahGroup.getsunahCall.call(),
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
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              final columnGetsunahResponse =
                                                  snapshot.data!;

                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        SunahGroup.getsunahCall
                                                            .data(
                                                              columnGetsunahResponse
                                                                  .jsonBody,
                                                            )
                                                            ?.length
                                                            .toString(),
                                                        '0',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FFAppState()
                                                                .colorFontThemes,
                                                            fontSize: 28.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  if (valueOrDefault(
                                          currentUserDocument?.statusPremium,
                                          0) ==
                                      0)
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Container(
                                          width: 182.0,
                                          height: 107.0,
                                          decoration: BoxDecoration(
                                            color: FFAppState().colorThemes,
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(20.0),
                                              bottomRight:
                                                  Radius.circular(20.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.lock_sharp,
                                            color: FFAppState().colorFontThemes,
                                            size: 34.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Container(
                              width: 152.0,
                              height: 147.0,
                              decoration: BoxDecoration(
                                color: FFAppState().colorThemes,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Stack(
                                children: [
                                  AuthUserStreamWidget(
                                    builder: (context) => Container(
                                      width: 182.0,
                                      height: 147.0,
                                      decoration: BoxDecoration(
                                        color: currentUserDocument?.colorThemes,
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 2.0,
                                            color: Color(0x33000000),
                                            offset: Offset(
                                              2.0,
                                              5.0,
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
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 20.0, 10.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Al Quran',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: FFAppState()
                                                            .colorFontThemes,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: FFAppState()
                                                      .colorFontThemes,
                                                  size: 15.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          FutureBuilder<ApiCallResponse>(
                                            future: NewDaftarSuratCall.call(
                                              keyword: 'noSearch',
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
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              final columnNewDaftarSuratResponse =
                                                  snapshot.data!;

                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        NewDaftarSuratCall.data(
                                                          columnNewDaftarSuratResponse
                                                              .jsonBody,
                                                        )?.length.toString(),
                                                        '0',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FFAppState()
                                                                .colorFontThemes,
                                                            fontSize: 28.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  if (valueOrDefault(
                                          currentUserDocument?.statusPremium,
                                          0) ==
                                      0)
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Container(
                                          width: 182.0,
                                          height: 107.0,
                                          decoration: BoxDecoration(
                                            color: FFAppState().colorThemes,
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(20.0),
                                              bottomRight:
                                                  Radius.circular(20.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.lock_sharp,
                                            color: FFAppState().colorFontThemes,
                                            size: 34.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Container(
                              width: 152.0,
                              height: 147.0,
                              decoration: BoxDecoration(
                                color: FFAppState().colorThemes,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Stack(
                                children: [
                                  AuthUserStreamWidget(
                                    builder: (context) => Container(
                                      width: 182.0,
                                      height: 147.0,
                                      decoration: BoxDecoration(
                                        color: currentUserDocument?.colorThemes,
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 2.0,
                                            color: Color(0x33000000),
                                            offset: Offset(
                                              2.0,
                                              5.0,
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
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 20.0, 10.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Jaddwal Shalat',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: FFAppState()
                                                            .colorFontThemes,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: FFAppState()
                                                      .colorFontThemes,
                                                  size: 15.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              '-',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: FFAppState()
                                                            .colorFontThemes,
                                                        fontSize: 28.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  if (valueOrDefault(
                                          currentUserDocument?.statusPremium,
                                          0) ==
                                      0)
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Container(
                                          width: 182.0,
                                          height: 107.0,
                                          decoration: BoxDecoration(
                                            color: FFAppState().colorThemes,
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(20.0),
                                              bottomRight:
                                                  Radius.circular(20.0),
                                              topLeft: Radius.circular(20.0),
                                              topRight: Radius.circular(20.0),
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.lock_sharp,
                                            color: FFAppState().colorFontThemes,
                                            size: 34.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Container(
                              width: 152.0,
                              height: 147.0,
                              decoration: BoxDecoration(
                                color: FFAppState().colorThemes,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Stack(
                                children: [
                                  AuthUserStreamWidget(
                                    builder: (context) => Container(
                                      width: 182.0,
                                      height: 174.0,
                                      decoration: BoxDecoration(
                                        color: currentUserDocument?.colorThemes,
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 2.0,
                                            color: Color(0x33000000),
                                            offset: Offset(
                                              2.0,
                                              5.0,
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
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 20.0, 10.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Doa',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: FFAppState()
                                                            .colorFontThemes,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: FFAppState()
                                                      .colorFontThemes,
                                                  size: 15.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          FutureBuilder<ApiCallResponse>(
                                            future:
                                                DoadoaGroup.getDoaCall.call(),
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
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              final columnGetDoaResponse =
                                                  snapshot.data!;

                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        DoadoaGroup.getDoaCall
                                                            .data(
                                                              columnGetDoaResponse
                                                                  .jsonBody,
                                                            )
                                                            ?.length
                                                            .toString(),
                                                        '0',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FFAppState()
                                                                .colorFontThemes,
                                                            fontSize: 28.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  if (valueOrDefault(
                                          currentUserDocument?.statusPremium,
                                          0) ==
                                      0)
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Container(
                                          width: 182.0,
                                          height: 107.0,
                                          decoration: BoxDecoration(
                                            color: FFAppState().colorThemes,
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(20.0),
                                              bottomRight:
                                                  Radius.circular(20.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.lock_sharp,
                                            color: FFAppState().colorFontThemes,
                                            size: 34.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
