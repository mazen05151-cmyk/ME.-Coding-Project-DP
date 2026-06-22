import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'a_change_password_widget.dart' show AChangePasswordWidget;
import 'package:flutter/material.dart';

class AChangePasswordModel extends FlutterFlowModel<AChangePasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailadressRESET widget.
  FocusNode? emailadressRESETFocusNode;
  TextEditingController? emailadressRESETTextController;
  String? Function(BuildContext, String?)?
      emailadressRESETTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailadressRESETFocusNode?.dispose();
    emailadressRESETTextController?.dispose();
  }
}
