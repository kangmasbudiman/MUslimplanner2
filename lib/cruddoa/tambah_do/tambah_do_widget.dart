import '/backend/api_requests/api_calls.dart';
import '/cruddoa/tambah_detaildoa/tambah_detaildoa_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'tambah_do_model.dart';
export 'tambah_do_model.dart';

class TambahDoWidget extends StatefulWidget {
  const TambahDoWidget({super.key});

  @override
  State<TambahDoWidget> createState() => _TambahDoWidgetState();
}

class _TambahDoWidgetState extends State<TambahDoWidget> {
  late TambahDoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TambahDoModel());

    _model.textFieldJudulDOaTextController ??= TextEditingController();
    _model.textFieldJudulDOaFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Container(
                  width: 50.0,
                  height: 4.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Text(
                        'Tambah Doa Doa ',
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF14181B),
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Color(0xFFE0E3E7),
                      width: 2.0,
                    ),
                  ),
                  child: FutureBuilder<ApiCallResponse>(
                    future: FFAppState().kategori(
                      requestFn: () => DoadoaGroup.kategoriDoaCall.call(),
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
                      final dropDownKategoriDoaResponse = snapshot.data!;

                      return FlutterFlowDropDown<String>(
                        controller: _model.dropDownValueController ??=
                            FormFieldController<String>(
                          _model.dropDownValue ??= '',
                        ),
                        options: List<String>.from((getJsonField(
                          dropDownKategoriDoaResponse.jsonBody,
                          r'''$.data[:].id''',
                          true,
                        ) as List)
                            .map<String>((s) => s.toString())
                            .toList()),
                        optionLabels: DoadoaGroup.kategoriDoaCall.namaKategori(
                          dropDownKategoriDoaResponse.jsonBody,
                        )!,
                        onChanged: (val) async {
                          safeSetState(() => _model.dropDownValue = val);
                          FFAppState().idkategori = getJsonField(
                            dropDownKategoriDoaResponse.jsonBody,
                            r'''$.data[:].idKategori''',
                          ).toString();
                          safeSetState(() {});
                        },
                        width: 300.0,
                        height: 56.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                        hintText: 'Please select...',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isOverButton: true,
                        isSearchable: false,
                        isMultiSelect: false,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Color(0xFFE0E3E7),
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: TextFormField(
                      controller: _model.textFieldJudulDOaTextController,
                      focusNode: _model.textFieldJudulDOaFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Judul Doa',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                      validator: _model.textFieldJudulDOaTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    _model.apiResultnvo = await DoadoaGroup.tambahdoaCall.call(
                      idkategori: _model.dropDownValue,
                      namaDoa: _model.textFieldJudulDOaTextController.text,
                    );

                    if ((_model.apiResultnvo?.succeeded ?? true)) {
                      Navigator.pop(context);
                      await Future.wait([
                        Future(() async {
                          FFAppState().clearChacheAlldoaCache();
                        }),
                        Future(() async {
                          FFAppState().clearSakitCache();
                        }),
                        Future(() async {
                          FFAppState().clearAlamCache();
                        }),
                        Future(() async {
                          FFAppState().clearEtikaBaikCache();
                        }),
                        Future(() async {
                          FFAppState().clearHajiUmrohCache();
                        }),
                        Future(() async {
                          FFAppState().clearMemujiAlllahCache();
                        }),
                        Future(() async {
                          FFAppState().clearSholatCache();
                        }),
                        Future(() async {
                          FFAppState().clearBahagiadanSedihCache();
                        }),
                        Future(() async {
                          FFAppState().clearPerjalananCache();
                        }),
                        Future(() async {
                          FFAppState().clearMakandanMinumCache();
                        }),
                        Future(() async {
                          FFAppState().clearRumahCache();
                        }),
                        Future(() async {
                          FFAppState().clearPagipetangCache();
                        }),
                      ]);
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return WebViewAware(
                            child: Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: TambahDetaildoaWidget(
                                iddoa: getJsonField(
                                  (_model.apiResultnvo?.jsonBody ?? ''),
                                  r'''$.iddoa''',
                                ),
                                namadoa:
                                    _model.textFieldJudulDOaTextController.text,
                              ),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));

                      safeSetState(() {});
                    }

                    safeSetState(() {});
                  },
                  text: 'Selanjutnya',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                    hoverBorderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).secondary,
                      width: 1.0,
                    ),
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
