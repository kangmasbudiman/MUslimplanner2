import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'acknowledgements_i_o_s_model.dart';
export 'acknowledgements_i_o_s_model.dart';

class AcknowledgementsIOSWidget extends StatefulWidget {
  const AcknowledgementsIOSWidget({super.key});

  static String routeName = 'AcknowledgementsIOS';
  static String routePath = '/acknowledgementsIOS';

  @override
  State<AcknowledgementsIOSWidget> createState() =>
      _AcknowledgementsIOSWidgetState();
}

class _AcknowledgementsIOSWidgetState extends State<AcknowledgementsIOSWidget> {
  late AcknowledgementsIOSModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AcknowledgementsIOSModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            title: Stack(
              alignment: AlignmentDirectional(0.0, 0.0),
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
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
                              size: 35.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
                    child: Text(
                      'Acknowledgements (IOS)',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primary,
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'Kami mengucapkan terima kasih kepada semua pihak yang telah mendukung pengembangan aplikasi ini. Berikut adalah penghargaan kami kepada mereka yang telah membantu secara langsung maupun tidak langsung:\n\nTim Pengembang dan Kontributor\nTerima kasih kepada tim pengembang, desainer, dan semua pihak yang telah berkontribusi dalam membangun aplikasi ini dengan penuh dedikasi.\n\nSumber Referensi dan Data\nKami mengucapkan terima kasih atas ketersediaan data dan referensi yang mendukung konten aplikasi ini:\n\nQuran.com sebagai sumber data Al-Quran digital.\nHadis dan literatur Islam terpercaya yang menjadi rujukan dalam fitur sunnah dan doa-doa harian.\nKomunitas Pengembang\nTerima kasih kepada komunitas pengembang open-source yang menyediakan alat dan pustaka yang digunakan dalam aplikasi ini, termasuk tetapi tidak terbatas pada:\n\n\nTerima kasih kepada semua pengguna yang telah memberikan masukan dan saran untuk menjadikan aplikasi ini lebih baik dan bermanfaat.\n\nInspirasi dari Tradisi Islam\nKami mengapresiasi tradisi dan nilai-nilai Islam yang menjadi inspirasi utama dalam pembuatan aplikasi ini, dengan harapan dapat membantu umat Muslim dalam menjalani kehidupan sehari-hari sesuai tuntunan agama.\n\nSemoga aplikasi ini memberikan manfaat yang luas dan menjadi sarana untuk mendekatkan diri kepada Allah SWT.',
                      textAlign: TextAlign.justify,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
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
