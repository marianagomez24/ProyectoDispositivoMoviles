import '/flutter_flow/flutter_flow_util.dart';
import 'perfil_widget.dart' show PerfilWidget;
import 'package:flutter/material.dart';

class PerfilModel extends FlutterFlowModel<PerfilWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtUsuario widget.
  FocusNode? txtUsuarioFocusNode;
  TextEditingController? txtUsuarioTextController;
  String? Function(BuildContext, String?)? txtUsuarioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtUsuarioFocusNode?.dispose();
    txtUsuarioTextController?.dispose();
  }
}
