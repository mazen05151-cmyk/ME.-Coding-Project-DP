import '/flutter_flow/flutter_flow_util.dart';
import 'a_user_history_v_o_l_u_n_t_e_e_r_widget.dart'
    show AUserHistoryVOLUNTEERWidget;
import 'package:flutter/material.dart';

class AUserHistoryVOLUNTEERModel
    extends FlutterFlowModel<AUserHistoryVOLUNTEERWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
