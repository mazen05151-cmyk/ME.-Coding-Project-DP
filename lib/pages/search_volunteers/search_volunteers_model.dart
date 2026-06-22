import '/flutter_flow/flutter_flow_util.dart';
import 'search_volunteers_widget.dart' show SearchVolunteersWidget;
import 'package:flutter/material.dart';

class SearchVolunteersModel extends FlutterFlowModel<SearchVolunteersWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
