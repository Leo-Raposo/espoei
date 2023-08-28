import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'homev2_copy_model.dart';
export 'homev2_copy_model.dart';

class Homev2CopyWidget extends StatefulWidget {
  const Homev2CopyWidget({Key? key}) : super(key: key);

  @override
  _Homev2CopyWidgetState createState() => _Homev2CopyWidgetState();
}

class _Homev2CopyWidgetState extends State<Homev2CopyWidget>
    with TickerProviderStateMixin {
  late Homev2CopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Homev2CopyModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Homev2Copy'});

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

    return YoutubeFullScreenWrapper(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFF0F0F0),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        height: 550.0,
                        decoration: BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/logo_ExpoEPI.png',
                                    width: 456.0,
                                    height: 700.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 50.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 15.0),
                                        child: Container(
                                          width: 363.0,
                                          height: 60.0,
                                          decoration: BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            border: Border.all(
                                              color: Color(0xFF622E88),
                                              width: 3.0,
                                            ),
                                          ),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              'Inscrições em breve',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 25.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '7 a 10 de novembro de 2023',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      Text(
                                        'Brasília',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 10.0,
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.sizeOf(context).height * 0.2,
                          decoration: BoxDecoration(
                            color: Color(0xFF951B81),
                          ),
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.95,
                            height: MediaQuery.sizeOf(context).height * 0.15,
                            decoration: BoxDecoration(
                              color: Color(0x00FFFFFF),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: AutoSizeText(
                                  'Bem-vindo à 17a edição da Mostra Nacional de Experiências Bem-Sucedidas em Epidemiologia, Prevenção e Controle de Doenças - ExpoEpi, um evento que busca difundir e divulgar as práticas exitosas dos serviços de saúde do SUS que se destacaram pelos resultados alcançados em atividades relevantes para a Saúde Pública.',
                                  textAlign: TextAlign.justify,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: Color(0xFFF0F0F0),
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation']!),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 50.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        height: MediaQuery.sizeOf(context).height * 0.5,
                        decoration: BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 15.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/logo_ExpoEPI.png',
                              width: 300.0,
                              height: 200.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 150.0, 0.0, 30.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: AutoSizeText(
                          'Local do Evento',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Pepi',
                                    color: Colors.black,
                                    fontSize: 50.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                  ))
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 10.0,
                          child: Container(
                            width: 100.0,
                            height: 646.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF009FE3),
                            ),
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.665,
                                      height: 684.0,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: FlutterFlowYoutubePlayer(
                                          url: 'https://youtu.be/C3VfmABArVM',
                                          autoPlay: false,
                                          looping: true,
                                          mute: true,
                                          showControls: true,
                                          showFullScreen: true,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.3,
                                      height: 506.0,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Container(
                                              width: 385.0,
                                              height: 452.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x00FFFFFF),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 15.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  50.0),
                                                      child: AutoSizeText(
                                                        '7 a 10 DE NOVEMBRO DE 2023',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              color: Color(
                                                                  0xFFF0F0F0),
                                                              fontSize: 22.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                    ),
                                                    AutoSizeText(
                                                      'Centro Internacional de Convenções do Brasil',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            color: Color(
                                                                0xFFF0F0F0),
                                                            fontSize: 25.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                    AutoSizeText(
                                                      'St. de Clubes Esportivos Sul Trecho 2 Conjunto 63, Lote 50 - Asa Sul, Brasília - DF, 70200-002',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: Color(
                                                                    0xFFF0F0F0),
                                                                fontSize: 25.0,
                                                              ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  50.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          logFirebaseEvent(
                                                              'HOMEV2_COPY_Container_6kc6byxh_ON_TAP');
                                                          logFirebaseEvent(
                                                              'Container_launch_u_r_l');
                                                          await launchURL(
                                                              'https://www.google.com.br/travel/search?qs=OAA&ved=0CAAQ5JsGahcKEwjQgtb01tyAAxUAAAAAHQAAAAAQCw ');
                                                        },
                                                        child: Container(
                                                          width: 291.0,
                                                          height: 58.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x00FFFFFF),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15.0),
                                                            border: Border.all(
                                                              color: Color(
                                                                  0xFF951B81),
                                                              width: 2.0,
                                                            ),
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: AutoSizeText(
                                                            'ONDE SE HOSPEDAR',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Pepi',
                                                                  color: Color(
                                                                      0xFFF0F0F0),
                                                                  fontSize:
                                                                      16.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    desktop: false,
                  ))
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                        child: Container(
                          width: 100.0,
                          height: 707.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF009FE3),
                          ),
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 245.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                    ),
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: FlutterFlowYoutubePlayer(
                                        url: 'https://youtu.be/C3VfmABArVM',
                                        autoPlay: false,
                                        looping: true,
                                        mute: true,
                                        showControls: true,
                                        showFullScreen: true,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.95,
                                      height: 454.0,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.95,
                                              height: 452.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x00FFFFFF),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 15.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  50.0),
                                                      child: AutoSizeText(
                                                        '7 a 10 DE NOVEMBRO DE 2023',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontSize: 22.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                    ),
                                                    AutoSizeText(
                                                      'Centro Internacional de Convenções do Brasil',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontSize: 25.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                    AutoSizeText(
                                                      'St. de Clubes Esportivos Sul Trecho 2 Conjunto 63, Lote 50 - Asa Sul, Brasília - DF, 70200-002',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                fontSize: 25.0,
                                                              ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  50.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          logFirebaseEvent(
                                                              'HOMEV2_COPY_Container_0illcxe0_ON_TAP');
                                                          logFirebaseEvent(
                                                              'Container_launch_u_r_l');
                                                          await launchURL(
                                                              'https://www.google.com.br/travel/search?qs=OAA&ved=0CAAQ5JsGahcKEwjQgtb01tyAAxUAAAAAHQAAAAAQCw ');
                                                        },
                                                        child: Container(
                                                          width: 291.0,
                                                          height: 58.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x00FFFFFF),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15.0),
                                                            border: Border.all(
                                                              color: Color(
                                                                  0xFF951B81),
                                                              width: 2.0,
                                                            ),
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: AutoSizeText(
                                                            'ONDE SE HOSPEDAR',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Pepi',
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                      16.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF622E88),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/MS.png',
                          width: 300.0,
                          height: 200.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
