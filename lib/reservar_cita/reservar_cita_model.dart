import '/flutter_flow/flutter_flow_util.dart';
import 'reservar_cita_widget.dart' show ReservarCitaWidget;
import 'package:flutter/material.dart';

class ReservarCitaModel extends FlutterFlowModel<ReservarCitaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
