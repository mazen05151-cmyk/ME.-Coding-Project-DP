import '/components/status_badge2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'request_card4_widget.dart' show RequestCard4Widget;
import 'package:flutter/material.dart';

class RequestCard4Model extends FlutterFlowModel<RequestCard4Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for StatusBadge.
  late StatusBadge2Model statusBadgeModel;

  @override
  void initState(BuildContext context) {
    statusBadgeModel = createModel(context, () => StatusBadge2Model());
  }

  @override
  void dispose() {
    statusBadgeModel.dispose();
  }
}
