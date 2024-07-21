import '/flutter_flow/flutter_flow_util.dart';
import 'actualizar_info_widget.dart' show ActualizarInfoWidget;
import 'package:flutter/material.dart';

class ActualizarInfoModel extends FlutterFlowModel<ActualizarInfoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtUsuario widget.
  FocusNode? txtUsuarioFocusNode;
  TextEditingController? txtUsuarioTextController;
  String? Function(BuildContext, String?)? txtUsuarioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtUsuarioFocusNode?.dispose();
    txtUsuarioTextController?.dispose();
  }
}
