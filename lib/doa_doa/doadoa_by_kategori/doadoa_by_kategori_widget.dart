import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/cruddoa/edit_doa/edit_doa_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'doadoa_by_kategori_model.dart';
export 'doadoa_by_kategori_model.dart';

class DoadoaByKategoriWidget extends StatefulWidget {
  const DoadoaByKategoriWidget({
    super.key,
    required this.idkategori,
  });

  final int? idkategori;

  static String routeName = 'DoadoaByKategori';
  static String routePath = '/doadoaByKategori';

  @override
  State<DoadoaByKategoriWidget> createState() => _DoadoaByKategoriWidgetState();
}

class _DoadoaByKategoriWidgetState extends State<DoadoaByKategoriWidget> {
  late DoadoaByKategoriModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DoadoaByKategoriModel());

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
          preferredSize: Size.fromHeight(70.0),
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
                        color: FlutterFlowTheme.of(context).primary,
                        size: 25.0,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'Doa - Doa',
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
            height: double.infinity,
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
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
                                2.0,
                                4.0,
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
                              10.0, 0.0, 10.0, 0.0),
                          child: TextFormField(
                            controller: _model.textController,
                            focusNode: _model.textFieldFocusNode,
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Cari Doa....',
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search_sharp,
                                color: Colors.white,
                                size: 13.0,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                ),
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 20.0),
                    child: Text(
                      'Semua ',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  AuthUserStreamWidget(
                    builder: (context) => Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.7,
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: FFAppState().doabykatagory(
                            requestFn: () =>
                                DoadoaGroup.getDoaByKategoriCall.call(
                              idkategori: widget.idkategori,
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
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).secondary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            final listViewGetDoaByKategoriResponse =
                                snapshot.data!;

                            return Builder(
                              builder: (context) {
                                final responDoa = getJsonField(
                                  listViewGetDoaByKategoriResponse.jsonBody,
                                  r'''$.data[:]''',
                                ).toList();

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  itemCount: responDoa.length,
                                  itemBuilder: (context, responDoaIndex) {
                                    final responDoaItem =
                                        responDoa[responDoaIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          DetailDoaWidget.routeName,
                                          queryParameters: {
                                            'judul': serializeParam(
                                              valueOrDefault<String>(
                                                DoadoaGroup.getDoaByKategoriCall
                                                    .judulDoa(
                                                      listViewGetDoaByKategoriResponse
                                                          .jsonBody,
                                                    )
                                                    ?.elementAtOrNull(
                                                        responDoaIndex),
                                                '-',
                                              ),
                                              ParamType.String,
                                            ),
                                            'arab': serializeParam(
                                              valueOrDefault<String>(
                                                DoadoaGroup.getDoaByKategoriCall
                                                    .arab(
                                                      listViewGetDoaByKategoriResponse
                                                          .jsonBody,
                                                    )
                                                    ?.elementAtOrNull(
                                                        responDoaIndex),
                                                '-',
                                              ),
                                              ParamType.String,
                                            ),
                                            'latin': serializeParam(
                                              valueOrDefault<String>(
                                                DoadoaGroup.getDoaByKategoriCall
                                                    .latin(
                                                      listViewGetDoaByKategoriResponse
                                                          .jsonBody,
                                                    )
                                                    ?.elementAtOrNull(
                                                        responDoaIndex),
                                                '-',
                                              ),
                                              ParamType.String,
                                            ),
                                            'terjemahan': serializeParam(
                                              valueOrDefault<String>(
                                                DoadoaGroup.getDoaByKategoriCall
                                                    .terjemahan(
                                                      listViewGetDoaByKategoriResponse
                                                          .jsonBody,
                                                    )
                                                    ?.elementAtOrNull(
                                                        responDoaIndex),
                                                '-',
                                              ),
                                              ParamType.String,
                                            ),
                                            'hadis': serializeParam(
                                              valueOrDefault<String>(
                                                DoadoaGroup.getDoaByKategoriCall
                                                    .hadis(
                                                      listViewGetDoaByKategoriResponse
                                                          .jsonBody,
                                                    )
                                                    ?.elementAtOrNull(
                                                        responDoaIndex),
                                                '-',
                                              ),
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 10.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      '- ',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            DoadoaGroup
                                                                .getDoaByKategoriCall
                                                                .judulDoa(
                                                                  listViewGetDoaByKategoriResponse
                                                                      .jsonBody,
                                                                )
                                                                ?.elementAtOrNull(
                                                                    responDoaIndex),
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
                                                                fontSize: 15.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        if (valueOrDefault(
                                                                currentUserDocument
                                                                    ?.rules,
                                                                0) ==
                                                            1)
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  enableDrag:
                                                                      false,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return WebViewAware(
                                                                      child:
                                                                          GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          FocusScope.of(context)
                                                                              .unfocus();
                                                                          FocusManager
                                                                              .instance
                                                                              .primaryFocus
                                                                              ?.unfocus();
                                                                        },
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              MediaQuery.viewInsetsOf(context),
                                                                          child:
                                                                              EditDoaWidget(
                                                                            id: (DoadoaGroup.getDoaByKategoriCall
                                                                                    .idDoa(
                                                                                      listViewGetDoaByKategoriResponse.jsonBody,
                                                                                    )
                                                                                    ?.elementAtOrNull(responDoaIndex))
                                                                                ?.toString(),
                                                                            idkategori: (DoadoaGroup.getDoaByKategoriCall
                                                                                    .idkategori(
                                                                                      listViewGetDoaByKategoriResponse.jsonBody,
                                                                                    )
                                                                                    ?.elementAtOrNull(responDoaIndex))
                                                                                ?.toString(),
                                                                            judulDoa: DoadoaGroup.getDoaByKategoriCall
                                                                                .judulDoa(
                                                                                  listViewGetDoaByKategoriResponse.jsonBody,
                                                                                )
                                                                                ?.elementAtOrNull(responDoaIndex),
                                                                            doabahasaarab: DoadoaGroup.getDoaByKategoriCall
                                                                                .arab(
                                                                                  listViewGetDoaByKategoriResponse.jsonBody,
                                                                                )
                                                                                ?.elementAtOrNull(responDoaIndex),
                                                                            doabahasaindonesia: DoadoaGroup.getDoaByKategoriCall
                                                                                .latin(
                                                                                  listViewGetDoaByKategoriResponse.jsonBody,
                                                                                )
                                                                                ?.elementAtOrNull(responDoaIndex),
                                                                            terjemahan: DoadoaGroup.getDoaByKategoriCall
                                                                                .terjemahan(
                                                                                  listViewGetDoaByKategoriResponse.jsonBody,
                                                                                )
                                                                                ?.elementAtOrNull(responDoaIndex),
                                                                            hadis: DoadoaGroup.getDoaByKategoriCall
                                                                                .hadis(
                                                                                  listViewGetDoaByKategoriResponse.jsonBody,
                                                                                )
                                                                                ?.elementAtOrNull(responDoaIndex),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    safeSetState(
                                                                        () {}));
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .edit_outlined,
                                                                color: FFAppState()
                                                                    .colorFontThemes,
                                                                size: 24.0,
                                                              ),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Divider(
                                              thickness: 1.0,
                                              color: Colors.white,
                                            ),
                                          ],
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
