import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componen/footer_logo/footer_logo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_setting_collor_model.dart';
export 'my_setting_collor_model.dart';

class MySettingCollorWidget extends StatefulWidget {
  const MySettingCollorWidget({super.key});

  static String routeName = 'MySettingCollor';
  static String routePath = '/mySettingCollor';

  @override
  State<MySettingCollorWidget> createState() => _MySettingCollorWidgetState();
}

class _MySettingCollorWidgetState extends State<MySettingCollorWidget> {
  late MySettingCollorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MySettingCollorModel());

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
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(MySettingWidget.routeName);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: currentUserDocument?.colorThemes,
                          size: 25.0,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Color',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  AuthUserStreamWidget(
                    builder: (context) => Icon(
                      Icons.settings_sharp,
                      color: currentUserDocument?.colorThemes,
                      size: 24.0,
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
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(),
                child: GridView(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 1.0,
                  ),
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().colorThemes =
                                  FlutterFlowTheme.of(context).primary;
                              FFAppState().update(() {});

                              await currentUserReference!
                                  .update(createUsersRecordData(
                                colorThemes: FFAppState().colorThemes,
                              ));
                            },
                            child: Container(
                              width: 62.0,
                              height: 62.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primary,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    color: Color(0x8457636C),
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          if (FFAppState().colorThemes ==
                              FlutterFlowTheme.of(context).primary)
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: 50.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF4180A),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().colorThemes = Color(0xFFAEB1B4);
                              FFAppState().update(() {});

                              await currentUserReference!
                                  .update(createUsersRecordData(
                                colorThemes: FFAppState().colorThemes,
                              ));
                            },
                            child: Container(
                              width: 62.0,
                              height: 62.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    color: Color(0x8457636C),
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          if (FFAppState().colorThemes == Color(0xFFAEB1B4))
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: 50.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFAEB1B4),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (valueOrDefault(
                                      currentUserDocument?.statusPremium, 0) ==
                                  1) {
                                FFAppState().colorThemes = Color(0xFFFFBD00);
                                FFAppState().update(() {});

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  colorThemes: FFAppState().colorThemes,
                                ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Please Subscribe',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: 62.0,
                              height: 62.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFBD00),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    color: Color(0x8457636C),
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          if (valueOrDefault(
                                  currentUserDocument?.statusPremium, 0) ==
                              0)
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 15.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: Offset(
                                            2.0,
                                            4.0,
                                          ),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.lock,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 15.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().colorThemes == Color(0xFFFFBD00))
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: 50.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFBD00),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (valueOrDefault(
                                      currentUserDocument?.statusPremium, 0) ==
                                  1) {
                                FFAppState().colorThemes = Color(0xFFCFAA28);
                                FFAppState().update(() {});

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  colorThemes: FFAppState().colorThemes,
                                ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Please Subscribe',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: 62.0,
                              height: 62.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFCFAA28),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    color: Color(0x8457636C),
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          if (valueOrDefault(
                                  currentUserDocument?.statusPremium, 0) ==
                              0)
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 15.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: Offset(
                                            2.0,
                                            4.0,
                                          ),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.lock,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 15.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().colorThemes == Color(0xFFCFAA28))
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: 50.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCFAA28),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (valueOrDefault(
                                      currentUserDocument?.statusPremium, 0) ==
                                  1) {
                                FFAppState().colorThemes = Color(0xFF906E3A);
                                FFAppState().update(() {});

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  colorThemes: FFAppState().colorThemes,
                                ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Please Subscribe',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: 62.0,
                              height: 62.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF906E3A),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    color: Color(0x8457636C),
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          if (valueOrDefault(
                                  currentUserDocument?.statusPremium, 0) ==
                              0)
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 15.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: Offset(
                                            2.0,
                                            4.0,
                                          ),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.lock,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 15.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().colorThemes == Color(0xFF906E3A))
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: 50.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF906E3A),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (valueOrDefault(
                                      currentUserDocument?.statusPremium, 0) ==
                                  1) {
                                FFAppState().colorThemes = Color(0xFF901E1E);
                                FFAppState().update(() {});

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  colorThemes: FFAppState().colorThemes,
                                ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Please Subscribe',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: 62.0,
                              height: 62.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF901E1E),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    color: Color(0x8457636C),
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          if (valueOrDefault(
                                  currentUserDocument?.statusPremium, 0) ==
                              0)
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 15.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: Offset(
                                            2.0,
                                            4.0,
                                          ),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.lock,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 15.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().colorThemes == Color(0xFF901E1E))
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: 50.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF901E1E),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (valueOrDefault(
                                      currentUserDocument?.statusPremium, 0) ==
                                  1) {
                                FFAppState().colorThemes = Color(0xFFEC2632);
                                FFAppState().update(() {});

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  colorThemes: FFAppState().colorThemes,
                                ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Please Subscribe',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: 62.0,
                              height: 62.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFEC2632),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    color: Color(0x8457636C),
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          if (valueOrDefault(
                                  currentUserDocument?.statusPremium, 0) ==
                              0)
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 15.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: Offset(
                                            2.0,
                                            4.0,
                                          ),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.lock,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 15.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().colorThemes == Color(0xFFEC2632))
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: 50.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEC2632),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (valueOrDefault(
                                      currentUserDocument?.statusPremium, 0) ==
                                  1) {
                                FFAppState().colorThemes = Color(0xFFFF92FB);
                                FFAppState().update(() {});

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  colorThemes: FFAppState().colorThemes,
                                ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Please Subscribe',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: 62.0,
                              height: 62.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFFF92FB),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    color: Color(0x8457636C),
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          if (valueOrDefault(
                                  currentUserDocument?.statusPremium, 0) ==
                              0)
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 15.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: Offset(
                                            2.0,
                                            4.0,
                                          ),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.lock,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 15.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().colorThemes == Color(0xFFFF92FB))
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: 50.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFF92FB),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (valueOrDefault(
                                      currentUserDocument?.statusPremium, 0) ==
                                  1) {
                                FFAppState().colorThemes = Color(0xFFFF00C7);
                                FFAppState().update(() {});

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  colorThemes: FFAppState().colorThemes,
                                ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Please Subscribe',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: 62.0,
                              height: 62.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFFF00C7),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    color: Color(0x8457636C),
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          if (valueOrDefault(
                                  currentUserDocument?.statusPremium, 0) ==
                              0)
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 15.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: Offset(
                                            2.0,
                                            4.0,
                                          ),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.lock,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 15.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().colorThemes == Color(0xFFFF00C7))
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: 50.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFF00C7),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (valueOrDefault(
                                      currentUserDocument?.statusPremium, 0) ==
                                  1) {
                                FFAppState().colorThemes = Color(0xFFF058E1);
                                FFAppState().update(() {});

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  colorThemes: FFAppState().colorThemes,
                                ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Please Subscribe',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: 62.0,
                              height: 62.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF058E1),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    color: Color(0x8457636C),
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          if (valueOrDefault(
                                  currentUserDocument?.statusPremium, 0) ==
                              0)
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 15.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: Offset(
                                            2.0,
                                            4.0,
                                          ),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.lock,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 15.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().colorThemes == Color(0xFFF058E1))
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: 50.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF058E1),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (valueOrDefault(
                                      currentUserDocument?.statusPremium, 0) ==
                                  1) {
                                FFAppState().colorThemes = Color(0xFFA240A4);
                                FFAppState().update(() {});

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  colorThemes: FFAppState().colorThemes,
                                ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Please Subscribe',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: 62.0,
                              height: 62.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFA240A4),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    color: Color(0x8457636C),
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          if (valueOrDefault(
                                  currentUserDocument?.statusPremium, 0) ==
                              0)
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 15.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: Offset(
                                            2.0,
                                            4.0,
                                          ),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.lock,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 15.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().colorThemes == Color(0xFFA240A4))
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: 50.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFA240A4),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (valueOrDefault(
                                      currentUserDocument?.statusPremium, 0) ==
                                  1) {
                                FFAppState().colorThemes = Color(0xFF001AFF);
                                FFAppState().update(() {});

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  colorThemes: FFAppState().colorThemes,
                                ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Please Subscribe',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: 62.0,
                              height: 62.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF001AFF),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    color: Color(0x8457636C),
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          if (valueOrDefault(
                                  currentUserDocument?.statusPremium, 0) ==
                              0)
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 15.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: Offset(
                                            2.0,
                                            4.0,
                                          ),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.lock,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 15.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().colorThemes == Color(0xFF001AFF))
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: 50.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF001AFF),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (valueOrDefault(
                                      currentUserDocument?.statusPremium, 0) ==
                                  1) {
                                FFAppState().colorThemes = Color(0xFF1D3D8D);
                                FFAppState().update(() {});

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  colorThemes: FFAppState().colorThemes,
                                ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Please Subscribe',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: 62.0,
                              height: 62.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF1D3D8D),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    color: Color(0x8457636C),
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          if (valueOrDefault(
                                  currentUserDocument?.statusPremium, 0) ==
                              0)
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 15.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: Offset(
                                            2.0,
                                            4.0,
                                          ),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.lock,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 15.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().colorThemes == Color(0xFF1D3D8D))
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: 50.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF1D3D8D),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (valueOrDefault(
                                      currentUserDocument?.statusPremium, 0) ==
                                  1) {
                                FFAppState().colorThemes = Color(0xFFA4BDFF);
                                FFAppState().update(() {});

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  colorThemes: FFAppState().colorThemes,
                                ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Please Subscribe',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: 62.0,
                              height: 62.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFA4BDFF),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    color: Color(0x8457636C),
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          if (valueOrDefault(
                                  currentUserDocument?.statusPremium, 0) ==
                              0)
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 15.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: Offset(
                                            2.0,
                                            4.0,
                                          ),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.lock,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 15.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().colorThemes == Color(0xFF001AFF))
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: 50.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFA4BDFF),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (valueOrDefault(
                                      currentUserDocument?.statusPremium, 0) ==
                                  1) {
                                FFAppState().colorThemes = Color(0xFF2C7A93);
                                FFAppState().update(() {});

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  colorThemes: FFAppState().colorThemes,
                                ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Please Subscribe',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: 62.0,
                              height: 62.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF2C7A93),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    color: Color(0x8457636C),
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          if (valueOrDefault(
                                  currentUserDocument?.statusPremium, 0) ==
                              0)
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 15.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: Offset(
                                            2.0,
                                            4.0,
                                          ),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.lock,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 15.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().colorThemes == Color(0xFF2C7A93))
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: 50.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF2C7A93),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (valueOrDefault(
                                      currentUserDocument?.statusPremium, 0) ==
                                  1) {
                                FFAppState().colorThemes = Color(0xFF00B2FF);
                                FFAppState().update(() {});

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  colorThemes: FFAppState().colorThemes,
                                ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Please Subscribe',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: 62.0,
                              height: 62.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF00B2FF),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    color: Color(0x8457636C),
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          if (valueOrDefault(
                                  currentUserDocument?.statusPremium, 0) ==
                              0)
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 15.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: Offset(
                                            2.0,
                                            4.0,
                                          ),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.lock,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 15.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().colorThemes == Color(0xFF001AFF))
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: 50.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF00B2FF),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (valueOrDefault(
                                      currentUserDocument?.statusPremium, 0) ==
                                  1) {
                                FFAppState().colorThemes = Color(0xFF135F3A);
                                FFAppState().update(() {});

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  colorThemes: FFAppState().colorThemes,
                                ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Please Subscribe',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: 62.0,
                              height: 62.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF135F3A),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    color: Color(0x8457636C),
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          if (valueOrDefault(
                                  currentUserDocument?.statusPremium, 0) ==
                              0)
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 15.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: Offset(
                                            2.0,
                                            4.0,
                                          ),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.lock,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 15.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().colorThemes == Color(0xFF135F3A))
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: 50.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF135F3A),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (valueOrDefault(
                                      currentUserDocument?.statusPremium, 0) ==
                                  1) {
                                FFAppState().colorThemes = Color(0xFF18BF29);
                                FFAppState().update(() {});

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  colorThemes: FFAppState().colorThemes,
                                ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Please Subscribe',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: 62.0,
                              height: 62.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF18BF29),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    color: Color(0x8457636C),
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          if (valueOrDefault(
                                  currentUserDocument?.statusPremium, 0) ==
                              0)
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 15.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: Offset(
                                            2.0,
                                            4.0,
                                          ),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.lock,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 15.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().colorThemes == Color(0xFF18BF29))
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: 50.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF18BF29),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (valueOrDefault(
                                      currentUserDocument?.statusPremium, 0) ==
                                  1) {
                                FFAppState().colorThemes = Color(0xFF67FF76);
                                FFAppState().update(() {});

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  colorThemes: FFAppState().colorThemes,
                                ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Please Subscribe',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: 62.0,
                              height: 62.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF67FF76),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    color: Color(0x8457636C),
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          if (valueOrDefault(
                                  currentUserDocument?.statusPremium, 0) ==
                              0)
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 15.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: Offset(
                                            2.0,
                                            4.0,
                                          ),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.lock,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 15.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().colorThemes == Color(0xFF67FF76))
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: 50.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF67FF76),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (valueOrDefault(
                                      currentUserDocument?.statusPremium, 0) ==
                                  1) {
                                FFAppState().colorThemes = Color(0xFFB2F8BE);
                                FFAppState().update(() {});

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  colorThemes: FFAppState().colorThemes,
                                ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Please Subscribe',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: 62.0,
                              height: 62.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFB2F8BE),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    color: Color(0x8457636C),
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          if (valueOrDefault(
                                  currentUserDocument?.statusPremium, 0) ==
                              0)
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 15.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: Offset(
                                            2.0,
                                            4.0,
                                          ),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.lock,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 15.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().colorThemes == Color(0xFFB2F8BE))
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: 50.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFB2F8BE),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                  child: wrapWithModel(
                    model: _model.footerLogoModel,
                    updateCallback: () => safeSetState(() {}),
                    child: FooterLogoWidget(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
