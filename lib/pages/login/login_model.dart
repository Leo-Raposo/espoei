import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/confirmar_email/confirmar_email_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailLogin widget.
  TextEditingController? emailLoginController;
  String? Function(BuildContext, String?)? emailLoginControllerValidator;
  // State field(s) for senhaLogin widget.
  TextEditingController? senhaLoginController;
  late bool senhaLoginVisibility;
  String? Function(BuildContext, String?)? senhaLoginControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    senhaLoginVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailLoginController?.dispose();
    senhaLoginController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
