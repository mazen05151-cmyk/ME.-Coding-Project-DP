import '/components/request_card2_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'modern_clean_mobile_page_model.dart';
export 'modern_clean_mobile_page_model.dart';

class ModernCleanMobilePageWidget extends StatefulWidget {
  const ModernCleanMobilePageWidget({super.key});

  static String routeName = 'ModernCleanMobilePage';
  static String routePath = '/modernCleanMobilePage';

  @override
  State<ModernCleanMobilePageWidget> createState() =>
      _ModernCleanMobilePageWidgetState();
}

class _ModernCleanMobilePageWidgetState
    extends State<ModernCleanMobilePageWidget> {
  late ModernCleanMobilePageModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModernCleanMobilePageModel());
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 1. Top Header Component
              Container(
                width: double.infinity,
                height: 70.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 1.0,
                      color: Color(0x0D000000),
                      offset: Offset(0.0, 1.0),
                    )
                  ],
                ],
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Mini User Profile Avatar
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFF1A237E), // Deep indigo background
                        shape: BoxShape.circle,
                      ),
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'MZ', // Mazen initials
                        style: GoogleFonts.urbanist(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    // App Branding Name
                    Text(
                      'Saaedny',
                      style: GoogleFonts.urbanist(
                        color: const Color(0xFF1A237E), // Deep indigo/blue primary accent
                        fontWeight: FontWeight.extrabold,
                        fontSize: 24.0,
                        letterSpacing: 0.5,
                      ),
                    ),
                    // Notification Bell Badge Stack
                    SizedBox(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        alignment: const AlignmentDirectional(1.0, -1.0),
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.notifications_none_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 26.0,
                            ),
                            onPressed: () => print('Notification center opened'),
                          ),
                          // Red Alert Badge Indicator
                          Positioned(
                            top: 6.0,
                            right: 6.0,
                            child: Container(
                              width: 9.0,
                              height: 9.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).error,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                  width: 1.5,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Scrollable Dashboard Body
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // 2. Active Map Section (Uber-style proximity interface)
                        Container(
                          width: double.infinity,
                          height: 320.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondaryBackground,
                            borderRadius: BorderRadius.circular(24.0),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 12.0,
                                color: Color(0x0F000000),
                                offset: Offset(0.0, 4.0),
                              )
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: Stack(
                              children: [
                                // Unified Google Map Instance
                                FlutterFlowGoogleMap(
                                  controller: _model.mapGoogleMapsController,
                                  onCameraIdle: (latLng) => _model.mapGoogleMapsCenter = latLng,
                                  initialLocation: _model.mapGoogleMapsCenter ??= const LatLng(30.0444, 31.2357), // Cairo Default Center
                                  markerColor: GoogleMarkerColor.green,
                                  mapType: MapType.normal,
                                  style: GoogleMapStyle.standard,
                                  initialZoom: 14.0,
                                  allowInteraction: true,
                                  allowZoom: true,
                                  showZoomControls: false,
                                  showLocation: true,
                                  showCompass: false,
                                  showMapToolbar: false,
                                  showTraffic: false,
                                  centerMapOnMarkerTap: true,
                                  mapTakesGesturePreference: false,
                                ),
                                // Radar Pulsing Radius Decorative Simulation Overlay
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: IgnorePointer(
                                    child: Container(
                                      width: 130.0,
                                      height: 130.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0x1A8BCF4E),
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: const Color(0x4D8BCF4E),
                                          width: 1.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),

                        // 3. Quick Action Bar (Vibrant Create Request Button)
                        FFButtonWidget(
                          onPressed: () => print('Navigate to request composition page'),
                          text: '+ Create New Request',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 56.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF8BCF4E), // App Volunteer Green Style
                            textStyle: GoogleFonts.urbanist(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                              style: BorderStyle.none,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                        const SizedBox(height: 28.0),

                        // 4. Active Requests Feed Sub-Header
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'My Requests',
                              style: GoogleFonts.urbanist(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            Text(
                              'See All',
                              style: GoogleFonts.urbanist(
                                fontSize: 14.0,
                                fontWeight: FontWeight.semibold,
                                color: const Color(0xFF8BCF4E),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),

                        // Vertical list feed of active requests matching parameters
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            wrapWithModel(
                              model: _model.requestCardModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: const RequestCard2Widget(
                                status: 'On the way',
                                taskName: 'Grocery Delivery',
                                timeAgo: '5m ago',
                                volunteerPhoto: 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=150',
                                volunteerName: 'Ahmed Khalid',
                                rating: '4.8',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.requestCardModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: const RequestCard2Widget(
                                status: 'In progress',
                                taskName: 'Furniture Assembly',
                                timeAgo: '1h ago',
                                volunteerPhoto: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=150',
                                volunteerName: 'Sara Ali',
                                rating: '4.9',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.requestCardModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: const RequestCard2Widget(
                                status: 'Pending',
                                taskName: 'Pharmacy Pickup',
                                timeAgo: '2h ago',
                                volunteerPhoto: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=150',
                                volunteerName: 'Waiting for volunteer...',
                                rating: '0',
                              ),
                            ),
                          ].divide(const SizedBox(height: 14.0)),
                        ),
                      ],
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