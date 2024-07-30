import '/flutter_flow/flutter_flow_util.dart';
import 'actualizar_contra_widget.dart' show ActualizarContraWidget;
import 'package:flutter/material.dart';

class ActualizarContraModel extends FlutterFlowModel<ActualizarContraWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;
  // State field(s) for txtNuevaContra widget.
  FocusNode? txtNuevaContraFocusNode;
  TextEditingController? txtNuevaContraTextController;
  String? Function(BuildContext, String?)?
      txtNuevaContraTextControllerValidator;
  // State field(s) for txtConfirmarContra widget.
  FocusNode? txtConfirmarContraFocusNode;
  TextEditingController? txtConfirmarContraTextController;
  String? Function(BuildContext, String?)?
      txtConfirmarContraTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtNuevaContraFocusNode?.dispose();
    txtNuevaContraTextController?.dispose();

    txtConfirmarContraFocusNode?.dispose();
    txtConfirmarContraTextController?.dispose();
  }
}
