import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AtualizarSenhaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for novaSenha widget.
  TextEditingController? novaSenhaController;
  late bool novaSenhaVisibility;
  String? Function(BuildContext, String?)? novaSenhaControllerValidator;
  // State field(s) for confirmarNovaSenha widget.
  TextEditingController? confirmarNovaSenhaController;
  late bool confirmarNovaSenhaVisibility;
  String? Function(BuildContext, String?)?
      confirmarNovaSenhaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    novaSenhaVisibility = false;
    confirmarNovaSenhaVisibility = false;
  }

  void dispose() {
    novaSenhaController?.dispose();
    confirmarNovaSenhaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
