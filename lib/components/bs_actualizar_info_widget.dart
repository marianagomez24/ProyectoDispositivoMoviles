import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bs_actualizar_info_model.dart';
export 'bs_actualizar_info_model.dart';

class BsActualizarInfoWidget extends StatefulWidget {
  const BsActualizarInfoWidget({super.key});

  @override
  State<BsActualizarInfoWidget> createState() => _BsActualizarInfoWidgetState();
}

class _BsActualizarInfoWidgetState extends State<BsActualizarInfoWidget> {
  late BsActualizarInfoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BsActualizarInfoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
