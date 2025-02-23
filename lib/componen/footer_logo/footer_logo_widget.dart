import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'footer_logo_model.dart';
export 'footer_logo_model.dart';

class FooterLogoWidget extends StatefulWidget {
  const FooterLogoWidget({super.key});

  @override
  State<FooterLogoWidget> createState() => _FooterLogoWidgetState();
}

class _FooterLogoWidgetState extends State<FooterLogoWidget> {
  late FooterLogoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FooterLogoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          'assets/images/icon.png',
          width: 49.0,
          height: 24.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
