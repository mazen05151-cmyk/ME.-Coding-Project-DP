import '/components/request_card2_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modern_clean_mobile_page_widget.dart' show ModernCleanMobilePageWidget;
import 'package:flutter/material.dart';

class ModernCleanMobilePageModel
    extends FlutterFlowModel<ModernCleanMobilePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Map Google Map widget.
  LatLng? mapGoogleMapsCenter1;
  final mapGoogleMapsController1 = Completer<GoogleMapController>();
  // State field(s) for Map Google Map widget.
  LatLng? mapGoogleMapsCenter2;
  final mapGoogleMapsController2 = Completer<GoogleMapController>();
  // Model for RequestCard.
  late RequestCard2Model requestCardModel1;
  // Model for RequestCard.
  late RequestCard2Model requestCardModel2;
  // Model for RequestCard.
  late RequestCard2Model requestCardModel3;

  @override
  void initState(BuildContext context) {
    requestCardModel1 = createModel(context, () => RequestCard2Model());
    requestCardModel2 = createModel(context, () => RequestCard2Model());
    requestCardModel3 = createModel(context, () => RequestCard2Model());
  }

  @override
  void dispose() {
    requestCardModel1.dispose();
    requestCardModel2.dispose();
    requestCardModel3.dispose();
  }
}
