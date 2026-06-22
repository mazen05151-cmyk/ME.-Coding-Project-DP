import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'modern_clean_minimalist_page_model.dart';
export 'modern_clean_minimalist_page_model.dart';

/// Create a modern, clean, minimalist confirmation/success page for a service
/// request application matching an existing UI style.
///
/// The page design requirements are:
/// 1. Color Palette & Theme: Clean white background with subtle slate grey
/// text. Use a vibrant primary green accent color (#76C741) for successful UI
/// elements and main buttons. Light grey container borders matching a clean
/// mobile app look.
/// 2. Layout Hierarchy:
///    - A top navigation area with a subtle back arrow button.
///    - A central status section featuring a large, smooth green circle
/// containing a white checkmark icon.
///    - Directly underneath the icon, a prominent bold headline that reads
/// "Request Sent Successfully!".
///    - A small, muted secondary text description line saying "Your volunteer
/// booking has been broadcasted and is awaiting confirmation."
/// 3. Interactive Elements:
///    - A main, full-width action button styled in solid bright green
/// (#76C741) with bold white text centered at the bottom of the page canvas
/// that reads "Go to Dashboard".
///    - A secondary text button or flat layout link below it reading "View
/// Request Details".
/// 4. Overall Aesthetic: Professional, clear, highly scannable, lots of
/// padding/breathing room, strictly matching a flat modern mobile interface
/// layout. No dark backgrounds.
class ModernCleanMinimalistPageWidget extends StatefulWidget {
  const ModernCleanMinimalistPageWidget({super.key});

  static String routeName = 'ModernCleanMinimalistPage';
  static String routePath = '/modernCleanMinimalistPage';

  @override
  State<ModernCleanMinimalistPageWidget> createState() =>
      _ModernCleanMinimalistPageWidgetState();
}

class _ModernCleanMinimalistPageWidgetState
    extends State<ModernCleanMinimalistPageWidget> {
  late ModernCleanMinimalistPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModernCleanMinimalistPageModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
                child: Container(
                  child: Container(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      fillColor: Colors.transparent,
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      children: [
                        Container(
                          width: 120.0,
                          height: 120.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF76C741),
                            borderRadius: BorderRadius.circular(9999.0),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                        Lottie.network(
                          'https://dimg.dreamflow.cloud/v1/lottie/success+checkmark+white',
                          width: 80.0,
                          height: 80.0,
                          fit: BoxFit.contain,
                          repeat: false,
                          animate: true,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'gcxc1njg' /* Request Sent Successfully! */,
                          ),
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                font: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                                lineHeight: 1.4,
                              ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'oubxpix3' /* Your volunteer booking has bee... */,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.urbanist(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                                lineHeight: 1.4,
                              ),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ].divide(SizedBox(height: 32.0)),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Container(
                  child: Container(
                    width: 0.0,
                    height: 0.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
