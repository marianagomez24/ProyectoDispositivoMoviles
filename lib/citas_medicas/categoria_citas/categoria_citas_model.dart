import '/flutter_flow/flutter_flow_util.dart';
import 'categoria_citas_widget.dart' show CategoriaCitasWidget;
import 'package:flutter/material.dart';

class CategoriaCitasModel extends FlutterFlowModel<CategoriaCitasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
