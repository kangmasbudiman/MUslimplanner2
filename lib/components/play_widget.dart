import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'play_model.dart';
export 'play_model.dart';

class PlayWidget extends StatefulWidget {
  const PlayWidget({
    super.key,
    this.linkaudio,
    this.namasurat,
  });

  final String? linkaudio;
  final String? namasurat;

  @override
  State<PlayWidget> createState() => _PlayWidgetState();
}

class _PlayWidgetState extends State<PlayWidget> {
  late PlayModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlayModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SafeArea(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(12.0),
              ),
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: FlutterFlowAudioPlayer(
                  audio: Audio.network(
                    valueOrDefault<String>(
                      widget.linkaudio,
                      '\"https://download.quranicaudio.com/quran/mishaari_raashid_al_3afaasee/001.mp3',
                    ),
                    metas: Metas(
                      title: valueOrDefault<String>(
                        widget.namasurat,
                        'tes',
                      ),
                    ),
                  ),
                  titleTextStyle:
                      FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Nunito',
                            letterSpacing: 0.0,
                          ),
                  playbackDurationTextStyle:
                      FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                  fillColor: FlutterFlowTheme.of(context).alternate,
                  playbackButtonColor: FlutterFlowTheme.of(context).primary,
                  activeTrackColor: FlutterFlowTheme.of(context).tertiary,
                  elevation: 8.0,
                  playInBackground:
                      PlayInBackground.disabledRestoreOnForeground,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
