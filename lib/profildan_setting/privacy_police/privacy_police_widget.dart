import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'privacy_police_model.dart';
export 'privacy_police_model.dart';

class PrivacyPoliceWidget extends StatefulWidget {
  const PrivacyPoliceWidget({super.key});

  @override
  State<PrivacyPoliceWidget> createState() => _PrivacyPoliceWidgetState();
}

class _PrivacyPoliceWidgetState extends State<PrivacyPoliceWidget> {
  late PrivacyPoliceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPoliceModel());
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
          preferredSize: const Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
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
                            size: 30.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: Text(
                      'Privacy Policy',
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
            actions: const [],
            centerTitle: false,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 30.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'Halaman ini digunakan untuk menginformasikan pengunjung mengenai kebijakan kami terkait pengumpulan, penggunaan dan pengungkapan informasi data pribadi jika ada yang memutuskan untuk menggunakan layanan kami.\n',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        const TextSpan(
                          text:
                              '\nHubungi Kami\n\nJika Anda memiliki pertanyaan atau saran tentang Kebijakan Privasi kami, jangan ragu untuk menghubungi kami.\n',
                          style: TextStyle(),
                        ),
                        const TextSpan(
                          text:
                              '\nInformasi yang kami kumpulkan dan gunakan:\n',
                          style: TextStyle(),
                        ),
                        const TextSpan(
                          text:
                              '\n1. ⁠ ⁠Webview/Recording/Read Storage Permissions\n',
                          style: TextStyle(),
                        ),
                        const TextSpan(
                          text:
                              '\nAplikasi ini juga memerlukan izin akses lainnya seperti webview, perekaman, dan penyimpanan data untuk mendukung fungsi-fungsi tertentu di dalam aplikasi. Semua data yang disimpan bersifat sementara dan tidak diakses oleh pihak ketiga tanpa persetujuan.\n',
                          style: TextStyle(),
                        ),
                        const TextSpan(
                          text: '\n\n2. Penggunaan Data',
                          style: TextStyle(),
                        ),
                        const TextSpan(
                          text:
                              '\n\nData yang dikumpulkan digunakan untuk memberikan pengalaman pengguna yang optimal dan memastikan fungsionalitas aplikasi bekerja dengan baik. Kami tidak membagikan data pribadi Anda kecuali diperlukan secara hukum atau untuk menjaga keamanan dan fungsi aplikasi.\n',
                          style: TextStyle(),
                        ),
                        const TextSpan(
                          text: '\n3. Keamanan',
                          style: TextStyle(),
                        ),
                        const TextSpan(
                          text:
                              '\n\nKami menghargai kepercayaan Anda dalam memberikan informasi pribadi Anda kepada kami. Kami berupaya menggunakan metode yang dapat diterima secara komersial untuk melindungi data Anda. Namun, perlu diingat bahwa tidak ada metode transmisi melalui internet atau metode penyimpanan elektronik yang 100% aman dan dapat diandalkan, dan kami tidak dapat menjamin keamanan mutlaknya.\n\n',
                          style: TextStyle(),
                        ),
                        const TextSpan(
                          text: '4. Lokasi',
                          style: TextStyle(),
                        ),
                        const TextSpan(
                          text:
                              '\n\nAplikasi ini membutuhkan lokasi dari anda agar dapat menentukan jadwal shalat yang sesuai dengan lokasi anda.\n',
                          style: TextStyle(),
                        ),
                        const TextSpan(
                          text: '\n5.⁠ ⁠Perubahan pada kebijakan privasi ini\n',
                          style: TextStyle(),
                        ),
                        const TextSpan(
                          text:
                              '\nKami dapat memperbarui Kebijakan Privasi ini dari waktu ke waktu. Oleh karena itu, Anda disarankan untuk meninjau halaman ini secara berkala untuk setiap perubahan. Kami akan memberitahu Anda tentang setiap perubahan dengan memposting Kebijakan Privasi baru di halaman ini.',
                          style: TextStyle(),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                    textAlign: TextAlign.start,
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
