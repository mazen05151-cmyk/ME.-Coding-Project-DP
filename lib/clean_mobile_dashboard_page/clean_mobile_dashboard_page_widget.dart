import '/components/active_task_card_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'clean_mobile_dashboard_page_model.dart';
export 'clean_mobile_dashboard_page_model.dart';

/// Create a clean mobile dashboard page for a service app named "Saaedny".
///
/// The page layout must include exactly three stacked sections:
/// 1. A top header row with a user profile placeholder circle on the left, an
/// app title text in the middle, and a notification bell icon on the right.
/// 2. A large, square central map placeholder container with rounded corners
/// and a soft shadow, taking up the top half of the screen.
/// 3. A large green action button directly below the map labeled "+ Create
/// New Request".
/// 4. A vertical scrollable list at the bottom labeled "Active Tasks"
/// containing a few clean tracking cards with placeholders for text, a
/// progress status badge, and a chat button.
///
/// Use a modern light theme with deep blue and emerald green accents.
class CleanMobileDashboardPageWidget extends StatefulWidget {
  const CleanMobileDashboardPageWidget({super.key});

  static String routeName = 'CleanMobileDashboardPage';
  static String routePath = '/cleanMobileDashboardPage';

  @override
  State<CleanMobileDashboardPageWidget> createState() =>
      _CleanMobileDashboardPageWidgetState();
}

class _CleanMobileDashboardPageWidgetState
    extends State<CleanMobileDashboardPageWidget> {
  late CleanMobileDashboardPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CleanMobileDashboardPageModel());

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
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24.0, 16.0, 24.0, 16.0),
                      child: Container(
                        child: Container(
                          width: 0.0,
                          height: 0.0,
                        ),
                      ),
                    ),
                    Container(
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AspectRatio(
                      aspectRatio: 1.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 1.0,
                            ),
                          ),
                          child: Container(
                            height: 200.0,
                            child: FlutterFlowGoogleMap(
                              controller: _model.mapGoogleMapsController,
                              onCameraIdle: (latLng) =>
                                  _model.mapGoogleMapsCenter = latLng,
                              initialLocation: _model.mapGoogleMapsCenter ??=
                                  LatLng(37.414448119, -122.0773684),
                              markerColor: GoogleMarkerColor.violet,
                              mapType: MapType.normal,
                              style: GoogleMapStyle.standard,
                              initialZoom: 14.0,
                              allowInteraction: true,
                              allowZoom: true,
                              showZoomControls: false,
                              showLocation: false,
                              showCompass: false,
                              showMapToolbar: false,
                              showTraffic: false,
                              centerMapOnMarkerTap: true,
                              mapTakesGesturePreference: false,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'pqv3g9p8' /* Active Tasks */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                '7y1ioo2p' /* See All */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            wrapWithModel(
                              model: _model.activeTaskCardModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: ActiveTaskCardWidget(
                                icon: Icon(
                                  Icons.plumbing_rounded,
                                  size: 24.0,
                                ),
                                title: 'Plumbing Repair',
                                status: 'In Progress',
                                time: '20 mins ago',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.activeTaskCardModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: ActiveTaskCardWidget(
                                icon: Icon(
                                  Icons.flash_on_rounded,
                                  size: 24.0,
                                ),
                                title: 'Electrical Maintenance',
                                status: 'On the way',
                                time: '1 hour ago',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.activeTaskCardModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: ActiveTaskCardWidget(
                                icon: Icon(
                                  Icons.yard_rounded,
                                  size: 24.0,
                                ),
                                title: 'Garden Cleaning',
                                status: 'Scheduled',
                                time: 'Tomorrow',
                              ),
                            ),
                          ],
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ].divide(SizedBox(height: 24.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
