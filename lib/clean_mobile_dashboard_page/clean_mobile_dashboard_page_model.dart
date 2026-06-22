import '/components/active_task_card_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'clean_mobile_dashboard_page_widget.dart'
    show CleanMobileDashboardPageWidget;
import 'package:flutter/material.dart';

class CleanMobileDashboardPageModel
    extends FlutterFlowModel<CleanMobileDashboardPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Map Google Map widget.
  LatLng? mapGoogleMapsCenter;
  final mapGoogleMapsController = Completer<GoogleMapController>();
  // Model for ActiveTaskCard.
  late ActiveTaskCardModel activeTaskCardModel1;
  // Model for ActiveTaskCard.
  late ActiveTaskCardModel activeTaskCardModel2;
  // Model for ActiveTaskCard.
  late ActiveTaskCardModel activeTaskCardModel3;

  @override
  void initState(BuildContext context) {
    activeTaskCardModel1 = createModel(context, () => ActiveTaskCardModel());
    activeTaskCardModel2 = createModel(context, () => ActiveTaskCardModel());
    activeTaskCardModel3 = createModel(context, () => ActiveTaskCardModel());
  }

  @override
  void dispose() {
    activeTaskCardModel1.dispose();
    activeTaskCardModel2.dispose();
    activeTaskCardModel3.dispose();
  }
}
