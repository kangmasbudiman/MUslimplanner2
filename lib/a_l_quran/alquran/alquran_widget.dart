import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'alquran_model.dart';
export 'alquran_model.dart';

class AlquranWidget extends StatefulWidget {
  const AlquranWidget({
    super.key,
    required this.nomorSurat,
    required this.namaID,
    required this.revelationid,
    this.idsurah,
  });

  final String? nomorSurat;
  final String? namaID;
  final String? revelationid;
  final int? idsurah;

  @override
  State<AlquranWidget> createState() => _AlquranWidgetState();
}

class _AlquranWidgetState extends State<AlquranWidget> {
  late AlquranModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlquranModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
        backgroundColor: FlutterFlowTheme.of(context).primary,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      color: FFAppState().colorThemes,
                      size: 25.0,
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Al Fatiha',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            fontSize: 15.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      'Mekah',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
                Icon(
                  Icons.settings_sharp,
                  color: FFAppState().colorThemes,
                  size: 24.0,
                ),
              ],
            ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: AuthUserStreamWidget(
            builder: (context) => Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: currentUserDocument?.colorThemes,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FFAppState().colorFontThemes,
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
                            10.0, 0.0, 10.0, 0.0),
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.textController',
                            const Duration(milliseconds: 2000),
                            () async {
                              FFAppState().setAyat = '';
                              safeSetState(() {});
                            },
                          ),
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 10.0,
                                  letterSpacing: 0.0,
                                ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 10.0,
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search_sharp,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 16.0,
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.9,
                      decoration: BoxDecoration(
                        color: currentUserDocument?.colorThemes,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 20.0, 0.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: IsisuratalquranCall.call(
                            nomorSurat: widget.nomorSurat,
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
                            final listViewIsisuratalquranResponse =
                                snapshot.data!;

                            return Builder(
                              builder: (context) {
                                final respon = getJsonField(
                                  listViewIsisuratalquranResponse.jsonBody,
                                  r'''$.data''',
                                ).toList();

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  itemCount: respon.length,
                                  itemBuilder: (context, responIndex) {
                                    final responItem = respon[responIndex];
                                    return Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 25.0),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    IsisuratalquranCall
                                                        .nomerayat(
                                                      listViewIsisuratalquranResponse
                                                          .jsonBody,
                                                    )?.elementAtOrNull(
                                                        responIndex),
                                                    '-',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: FFAppState()
                                                            .colorFontThemes,
                                                        fontSize: 12.0,
                                                        letterSpacing: 1.0,
                                                        lineHeight: 2.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    IsisuratalquranCall.arab(
                                                      listViewIsisuratalquranResponse
                                                          .jsonBody,
                                                    )?.elementAtOrNull(
                                                        responIndex),
                                                    '-',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: FFAppState()
                                                            .colorFontThemes,
                                                        fontSize: 20.0,
                                                        letterSpacing: 1.0,
                                                        lineHeight: 2.0,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    IsisuratalquranCall
                                                        .nomerayat(
                                                      listViewIsisuratalquranResponse
                                                          .jsonBody,
                                                    )?.elementAtOrNull(
                                                        responIndex),
                                                    '-',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: FFAppState()
                                                            .colorFontThemes,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    IsisuratalquranCall.latin(
                                                      listViewIsisuratalquranResponse
                                                          .jsonBody,
                                                    )?.elementAtOrNull(
                                                        responIndex),
                                                    '-',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: FFAppState()
                                                            .colorFontThemes,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    IsisuratalquranCall.text(
                                                      listViewIsisuratalquranResponse
                                                          .jsonBody,
                                                    )?.elementAtOrNull(
                                                        responIndex),
                                                    '-',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: FFAppState()
                                                            .colorFontThemes,
                                                        fontSize: 11.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Flexible(
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Text(
                                                        '...',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Inter',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
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
                                                      _model.apiResulteh0 =
                                                          await AddBookmarkCall
                                                              .call(
                                                        iduser: currentUserUid,
                                                        idsurat:
                                                            widget.idsurah,
                                                        numberayat:
                                                            IsisuratalquranCall
                                                                .nomerayat(
                                                          listViewIsisuratalquranResponse
                                                              .jsonBody,
                                                        )?.elementAtOrNull(
                                                                responIndex),
                                                      );

                                                      if ((_model.apiResulteh0
                                                              ?.succeeded ??
                                                          true)) {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Bookmark Berhasil Ditambah',
                                                              style: TextStyle(
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
                                                      } else {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Bookmark tidak berhasil di tambah',
                                                              style: TextStyle(
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
                                                      }

                                                      safeSetState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.book,
                                                      color: FFAppState()
                                                          .colorFontThemes,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Divider(
                                                thickness: 1.0,
                                                color: Colors.white,
                                              ),
                                            ].divide(const SizedBox(height: 8.0)),
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
