import '/components/status_badge_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'request_card3_widget.dart' show RequestCard3Widget;
import 'package:flutter/material.dart';

class RequestCard3Model extends FlutterFlowModel<RequestCard3Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for StatusBadge.
  late StatusBadgeModel statusBadgeModel;

  @override
  void initState(BuildContext context) {
    statusBadgeModel = createModel(context, () => StatusBadgeModel());
  }

  @override
  void dispose() {
    statusBadgeModel.dispose();
  }
}
