import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/components/request_card2_widget.dart';
import 'modern_clean_mobile_page_widget.dart' show ModernCleanMobilePageWidget;
import 'package:flutter/material.dart';

class ModernCleanMobilePageModel extends FlutterFlowModel<ModernCleanMobilePageWidget> {
  /// Map State Fields
  LatLng? mapGoogleMapsCenter;
  GoogleMapController? mapGoogleMapsController;

  /// Request List Card State Models
  late RequestCard2Model requestCardModel1;
  late RequestCard2Model requestCardModel2;
  late RequestCard2Model requestCardModel3;

  @override
  void initState(BuildContext context) {
    // Initialize child sub-models for standard layout compliance
    requestCardModel1 = createModel(context, () => RequestCard2Model());
    requestCardModel2 = createModel(context, () => RequestCard2Model());
    requestCardModel3 = createModel(context, () => RequestCard2Model());
  }

  @override
  void dispose() {
    mapGoogleMapsController?.dispose();
    requestCardModel1.dispose();
    requestCardModel2.dispose();
    requestCardModel3.dispose();
  }
}