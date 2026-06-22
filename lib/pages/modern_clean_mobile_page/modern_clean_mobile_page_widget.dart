import '/components/request_card2_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'modern_clean_mobile_page_model.dart';
export 'modern_clean_mobile_page_model.dart';

/// Create a modern, clean mobile homepage for a service requester in a
/// proximity-based volunteering application named "Saaedny".
///
/// Layout Hierarchy & Structure:
/// 1. Top Header: A sleek top bar showing a mini user profile avatar on the
/// left, the app name "Saaedny" in the center, and a notification bell icon
/// with a red badge on the right.
/// 2. Active Map Section: A prominent, large container or card making up the
/// top half of the screen that looks like an Uber-style map interface. It
/// should feature a central user location marker with a subtle radar-pulsing
/// radius effect around it, and 3-4 green custom map markers representing
/// nearby volunteers distributed within the radius.
/// 3. Quick Action Bar: Right beneath the map, a full-width container
/// featuring a highly visible, rounded, vibrant green floating-style button
/// labeled "+ Create New Request".
/// 4. Active Requests Feed: A bottom section labeled "My Requests" showing a
/// vertical list of modern cards. Each card displays an ongoing task status
/// timeline (e.g., "On the way", "In progress"), the assigned volunteer’s
/// name, a micro profile card showing their rating (4.8 stars), and a small
/// blue "Chat" button.
///
/// Visual Design & Theme:
/// - Use a clean white/light gray background with deep indigo/blue primary
/// accents and vibrant green for call-to-actions (matching an
/// emerald/volunteer color scheme).
/// - The interface must look highly responsive, modern, and uncluttered, with
/// soft box shadows on the map container and list cards to create visual
/// depth.
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
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 36.0,
                            height: 36.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              shape: BoxShape.circle,
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '7nbx9wba' /* JS */,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 13.68,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                              overflow: TextOverflow.clip,
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              '7wm0g7x3' /* Saaedny */,
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
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                          ),
                          Container(
                            width: 40.0,
                            height: 40.0,
                            child: Stack(
                              alignment: AlignmentDirectional(-1.0, -1.0),
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 8.0,
                                    buttonSize: 40.0,
                                    fillColor: Colors.transparent,
                                    icon: Icon(
                                      Icons.notifications_none_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.4, -0.4),
                                  child: Container(
                                    width: 10.0,
                                    height: 10.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).error,
                                      borderRadius:
                                          BorderRadius.circular(9999.0),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        width: 2.0,
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
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: Container(
                            height: 360.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: Stack(
                              alignment: AlignmentDirectional(-1.0, -1.0),
                              children: [
                                Container(
                                  width: 300.0,
                                  height: 200.0,
                                  child: FlutterFlowGoogleMap(
                                    controller: _model.mapGoogleMapsController1,
                                    onCameraIdle: (latLng) =>
                                        _model.mapGoogleMapsCenter1 = latLng,
                                    initialLocation:
                                        _model.mapGoogleMapsCenter1 ??=
                                            LatLng(24.7136, 46.6753),
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
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width: 120.0,
                                    height: 120.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x1A4B39EF),
                                      borderRadius:
                                          BorderRadius.circular(9999.0),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Color(0x4D4B39EF),
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width: 60.0,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x334B39EF),
                                      borderRadius:
                                          BorderRadius.circular(9999.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Icon(
                                      Icons.my_location,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.5, 0.2),
                                  child: Icon(
                                    Icons.person_pin_circle_rounded,
                                    color: FlutterFlowTheme.of(context).success,
                                    size: 32.0,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.4, -0.6),
                                  child: Icon(
                                    Icons.person_pin_circle_rounded,
                                    color: FlutterFlowTheme.of(context).success,
                                    size: 32.0,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.7, 0.3),
                                  child: Icon(
                                    Icons.person_pin_circle_rounded,
                                    color: FlutterFlowTheme.of(context).success,
                                    size: 32.0,
                                  ),
                                ),
                                FlutterFlowGoogleMap(
                                  controller: _model.mapGoogleMapsController2,
                                  onCameraIdle: (latLng) =>
                                      _model.mapGoogleMapsCenter2 = latLng,
                                  initialLocation:
                                      _model.mapGoogleMapsCenter2 ??=
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
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 16.0),
                        child: Container(
                          child: Container(
                            width: 0.0,
                            height: 0.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Column(
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
                                  'b0en3tog' /* My Requests */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      font: GoogleFonts.urbanist(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'uw5mul6i' /* See All */,
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
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                          wrapWithModel(
                            model: _model.requestCardModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: RequestCard2Widget(
                              status: 'On the way',
                              taskName: 'Grocery Delivery',
                              timeAgo: '5m ago',
                              volunteerPhoto:
                                  'https://dimg.dreamflow.cloud/v1/image/middle%20aged%20man%20smiling',
                              volunteerName: 'Ahmed Khalid',
                              rating: '4.8',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.requestCardModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: RequestCard2Widget(
                              status: 'In progress',
                              taskName: 'Furniture Assembly',
                              timeAgo: '1h ago',
                              volunteerPhoto:
                                  'https://dimg.dreamflow.cloud/v1/image/young%20woman%20professional',
                              volunteerName: 'Sara Ali',
                              rating: '4.9',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.requestCardModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: RequestCard2Widget(
                              status: 'Pending',
                              taskName: 'Pharmacy Pickup',
                              timeAgo: '2h ago',
                              volunteerPhoto:
                                  'https://dimg.dreamflow.cloud/v1/image/placeholder%20avatar',
                              volunteerName: 'Waiting for volunteer...',
                              rating: '0',
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 0.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
