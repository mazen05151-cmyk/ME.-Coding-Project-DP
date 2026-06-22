import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'status_badge2_model.dart';
export 'status_badge2_model.dart';

class StatusBadge2Widget extends StatefulWidget {
  const StatusBadge2Widget({
    super.key,
    String? status,
  }) : this.status = status ?? '';

  final String status;

  @override
  State<StatusBadge2Widget> createState() => _StatusBadge2WidgetState();
}

class _StatusBadge2WidgetState extends State<StatusBadge2Widget> {
  late StatusBadge2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusBadge2Model());

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
      decoration: BoxDecoration(
        color: () {
          if (widget.status == 'Assigned') {
            return Color(0x00000000);
          } else if (widget.status == 'On the Way') {
            return Color(0x00000000);
          } else {
            return Color(0x00000000);
          }
        }(),
        borderRadius: BorderRadius.circular(16.0),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
        child: Container(
          child: Text(
            widget.status,
            style: FlutterFlowTheme.of(context).labelSmall.override(
                  font: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelSmall.fontStyle,
                  ),
                  color: () {
                    if (widget.status == 'Assigned') {
                      return Color(0x00000000);
                    } else if (widget.status == 'On the Way') {
                      return Color(0x00000000);
                    } else {
                      return Color(0x00000000);
                    }
                  }(),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
        ),
      ),
    );
  }
}
