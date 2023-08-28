import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'success_page_update_cadastro_model.dart';
export 'success_page_update_cadastro_model.dart';

class SuccessPageUpdateCadastroWidget extends StatefulWidget {
  const SuccessPageUpdateCadastroWidget({
    Key? key,
    required this.sucessEditPerf,
  }) : super(key: key);

  final DocumentReference? sucessEditPerf;

  @override
  _SuccessPageUpdateCadastroWidgetState createState() =>
      _SuccessPageUpdateCadastroWidgetState();
}

class _SuccessPageUpdateCadastroWidgetState
    extends State<SuccessPageUpdateCadastroWidget> {
  late SuccessPageUpdateCadastroModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SuccessPageUpdateCadastroModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'SuccessPageUpdateCadastro'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('SUCCESS_UPDATE_CADASTRO_SuccessPageUpdat');
      logFirebaseEvent('SuccessPageUpdateCadastro_set_dark_mode_');
      setDarkModeSetting(context, ThemeMode.light);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<CadastroRecord>(
      stream: CadastroRecord.getDocument(currentUserReference!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Color(0xFF39D2C0),
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final successPageUpdateCadastroCadastroRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xFF39D2C0),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Lottie.network(
                          'https://assets10.lottiefiles.com/packages/lf20_xlkxtmul.json',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                          frameRate: FrameRate(60.0),
                          repeat: false,
                          animate: true,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Sucesso!',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Outfit',
                          color: Colors.white,
                          fontSize: 32.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Text(
                        'Perfil atualizado com sucesso.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Outfit',
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 44.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'SUCCESS_UPDATE_CADASTRO_OK_BTN_ON_TAP');
                        logFirebaseEvent('Button_navigate_to');

                        context.goNamed(
                          'Perfil',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 600),
                            ),
                          },
                        );
                      },
                      text: 'OK',
                      options: FFButtonOptions(
                        width: 130.0,
                        height: 50.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Colors.white,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF39D2C0),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
