import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/c_r_u_d_fadilah/edit_doa_copy/edit_doa_copy_widget.dart';
import '/c_r_u_d_fadilah/tambah_fadilah/tambah_fadilah_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'sub_detail_task_sunah_model.dart';
export 'sub_detail_task_sunah_model.dart';

class SubDetailTaskSunahWidget extends StatefulWidget {
  const SubDetailTaskSunahWidget({
    super.key,
    int? idsunah,
    String? namasunah,
  })  : this.idsunah = idsunah ?? 0,
        this.namasunah = namasunah ?? '0';

  final int idsunah;
  final String namasunah;

  static String routeName = 'subDetailTaskSunah';
  static String routePath = '/subDetailTaskSunah';

  @override
  State<SubDetailTaskSunahWidget> createState() =>
      _SubDetailTaskSunahWidgetState();
}

class _SubDetailTaskSunahWidgetState extends State<SubDetailTaskSunahWidget> {
  late SubDetailTaskSunahModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubDetailTaskSunahModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: Visibility(
          visible: valueOrDefault(currentUserDocument?.rules, 0) == 1,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
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
                            child: TambahFadilahWidget(
                              idsunah: valueOrDefault<String>(
                                widget.idsunah.toString(),
                                '0',
                              ),
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
                  Icons.add,
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
            title: Stack(
              alignment: AlignmentDirectional(0.0, 0.0),
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 40.0, 10.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(HomeScreenWidget.routeName);
                            },
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 35.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
                  child: Text(
                    widget.namasunah.maybeHandleOverflow(
                      maxChars: 20,
                      replacement: '…',
                    ),
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
            actions: [],
            centerTitle: false,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: Text(
                      'Fadilah',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 0.693,
                    decoration: BoxDecoration(),
                    child: FutureBuilder<ApiCallResponse>(
                      future: SunahGroup.fadilahbysunahCall.call(
                        idsunah: widget.idsunah,
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
                        final listViewFadilahbysunahResponse = snapshot.data!;

                        return Builder(
                          builder: (context) {
                            final resfadilah = getJsonField(
                              listViewFadilahbysunahResponse.jsonBody,
                              r'''$.data''',
                            ).toList();

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: resfadilah.length,
                              itemBuilder: (context, resfadilahIndex) {
                                final resfadilahItem =
                                    resfadilah[resfadilahIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => Container(
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
                                            16.0, 12.0, 16.0, 12.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      SunahGroup
                                                          .fadilahbysunahCall
                                                          .fadilah(
                                                            listViewFadilahbysunahResponse
                                                                .jsonBody,
                                                          )
                                                          ?.elementAtOrNull(
                                                              resfadilahIndex),
                                                      '0',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FFAppState()
                                                              .colorFontThemes,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                                InkWell(
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
                                                      DetailTaskSunahWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'judul': serializeParam(
                                                          valueOrDefault<
                                                              String>(
                                                            SunahGroup
                                                                .fadilahbysunahCall
                                                                .fadilah(
                                                                  listViewFadilahbysunahResponse
                                                                      .jsonBody,
                                                                )
                                                                ?.elementAtOrNull(
                                                                    resfadilahIndex),
                                                            '0',
                                                          ),
                                                          ParamType.String,
                                                        ),
                                                        'isi': serializeParam(
                                                          valueOrDefault<
                                                              String>(
                                                            SunahGroup
                                                                .fadilahbysunahCall
                                                                .penjelasan(
                                                                  listViewFadilahbysunahResponse
                                                                      .jsonBody,
                                                                )
                                                                ?.elementAtOrNull(
                                                                    resfadilahIndex),
                                                            '0',
                                                          ),
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  child: Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: FFAppState()
                                                        .colorFontThemes,
                                                    size: 24.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                SunahGroup.fadilahbysunahCall
                                                    .penjelasan(
                                                      listViewFadilahbysunahResponse
                                                          .jsonBody,
                                                    )
                                                    ?.elementAtOrNull(
                                                        resfadilahIndex),
                                                '0',
                                              ).maybeHandleOverflow(
                                                maxChars: 100,
                                                replacement: '…',
                                              ),
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
                                            if (valueOrDefault(
                                                    currentUserDocument?.rules,
                                                    0) ==
                                                1)
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
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
                                                        child: GestureDetector(
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
                                                                EditDoaCopyWidget(
                                                              id: (SunahGroup
                                                                      .fadilahbysunahCall
                                                                      .id(
                                                                        listViewFadilahbysunahResponse
                                                                            .jsonBody,
                                                                      )
                                                                      ?.elementAtOrNull(
                                                                          resfadilahIndex))
                                                                  ?.toString(),
                                                              fadilah: SunahGroup
                                                                  .fadilahbysunahCall
                                                                  .fadilah(
                                                                    listViewFadilahbysunahResponse
                                                                        .jsonBody,
                                                                  )
                                                                  ?.elementAtOrNull(
                                                                      resfadilahIndex),
                                                              pejelasan: SunahGroup
                                                                  .fadilahbysunahCall
                                                                  .penjelasan(
                                                                    listViewFadilahbysunahResponse
                                                                        .jsonBody,
                                                                  )
                                                                  ?.elementAtOrNull(
                                                                      resfadilahIndex),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                },
                                                child: Icon(
                                                  Icons.edit,
                                                  color: FFAppState()
                                                      .colorFontThemes,
                                                  size: 24.0,
                                                ),
                                              ),
                                          ].divide(SizedBox(height: 6.0)),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
