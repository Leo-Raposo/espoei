import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:badges/badges.dart' as badges;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_o_l_d_model.dart';
export 'home_o_l_d_model.dart';

class HomeOLDWidget extends StatefulWidget {
  const HomeOLDWidget({Key? key}) : super(key: key);

  @override
  _HomeOLDWidgetState createState() => _HomeOLDWidgetState();
}

class _HomeOLDWidgetState extends State<HomeOLDWidget>
    with TickerProviderStateMixin {
  late HomeOLDModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasColumnTriggered = false;
  final animationsMap = {
    'columnOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1500.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 80.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 80.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 80.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 80.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'dividerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 80.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'dividerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 80.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'dividerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 80.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeOLDModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'HomeOLD'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('HOME_O_L_D_PAGE_HomeOLD_ON_INIT_STATE');
      logFirebaseEvent('HomeOLD_set_dark_mode_settings');
      setDarkModeSetting(context, ThemeMode.light);
    });

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF117FC9),
        endDrawer: Drawer(
          elevation: 16.0,
          child: Container(
            width: 270.0,
            height: 800.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
              child: Container(
                width: 270.0,
                height: 800.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x33000000),
                      offset: Offset(0.0, 2.0),
                    )
                  ],
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 50.0, 16.0, 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: badges.Badge(
                                  badgeContent: Text(
                                    '2',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                        ),
                                  ),
                                  showBadge: true,
                                  shape: badges.BadgeShape.circle,
                                  badgeColor: Color(0xFF117FC9),
                                  elevation: 4.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 8.0, 8.0, 8.0),
                                  position: badges.BadgePosition.topEnd(),
                                  animationType:
                                      badges.BadgeAnimationType.scale,
                                  toAnimate: true,
                                  child: Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 4.0, 0.0),
                                      child: Icon(
                                        Icons.notifications,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Text(
                          'Primary Navigation',
                          style: FlutterFlowTheme.of(context).bodySmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 16.0, 0.0, 12.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent('HOME_O_L_D_PAGE_navHome_ON_TAP');
                            logFirebaseEvent('navHome_navigate_to');

                            context.pushNamed('HomeOLD');
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 8.0, 12.0, 8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.home_filled,
                                    color: Color(0xFF7D60B5),
                                    size: 28.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Home',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: Color(0xFF7D60B5),
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
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: Container(
                          width: double.infinity,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 8.0, 12.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.edit_document,
                                  color: Color(0xFF622E88),
                                  size: 28.0,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Trabalhos',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Color(0xFF622E88),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: Container(
                          width: double.infinity,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 8.0, 12.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.wpforms,
                                  color: Color(0xFF622E88),
                                  size: 28.0,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Programação',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Color(0xFF622E88),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: Container(
                          width: double.infinity,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 8.0, 12.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.trophy,
                                  color: Color(0xFF622E88),
                                  size: 28.0,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Premiação',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Color(0xFF622E88),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Text(
                          'Sua Conta',
                          style:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF622E88),
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 12.0, 0.0, 12.0),
                        child: Container(
                          width: double.infinity,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 8.0, 12.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Color(0xFF622E88),
                                  size: 28.0,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Meu Perfil',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Color(0xFF622E88),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Divider(
                                height: 12.0,
                                thickness: 2.0,
                                color: FlutterFlowTheme.of(context).lineColor,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50.0),
                                      child: Image.asset(
                                        'assets/images/17b0627d-1d44-4c81-aee7-26e2c57a9cf8_1.png',
                                        width: 44.0,
                                        height: 44.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            StreamBuilder<List<CadastroRecord>>(
                                              stream: queryCadastroRecord(
                                                singleRecord: true,
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<CadastroRecord>
                                                    textCadastroRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final textCadastroRecord =
                                                    textCadastroRecordList
                                                            .isNotEmpty
                                                        ? textCadastroRecordList
                                                            .first
                                                        : null;
                                                return Text(
                                                  textCadastroRecord!
                                                      .nomeCompleto,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall,
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'HOME_O_L_D_Container_w5lxor5g_ON_TAP');
                                    logFirebaseEvent('Container_auth');
                                    GoRouter.of(context).prepareAuthEvent();
                                    await authManager.signOut();
                                    GoRouter.of(context)
                                        .clearRedirectLocation();

                                    context.goNamedAuth(
                                        'Home', context.mounted);
                                  },
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 3.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF622E88),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'Sair',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color: Colors.white,
                                              ),
                                        ),
                                      ),
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
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: double.infinity,
                    constraints: BoxConstraints(
                      minWidth: MediaQuery.sizeOf(context).width * 1.0,
                      minHeight: MediaQuery.sizeOf(context).height * 0.01,
                      maxWidth: MediaQuery.sizeOf(context).width * 1.0,
                      maxHeight: MediaQuery.sizeOf(context).height * 1.0,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/Frame_22.png',
                        ).image,
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF117FC9),
                          Color(0xFF7D60B5),
                          Color(0xFF622E88)
                        ],
                        stops: [0.0, 1.0, 1.0],
                        begin: AlignmentDirectional(0.0, -1.0),
                        end: AlignmentDirectional(0, 1.0),
                      ),
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 2.0,
                                  constraints: BoxConstraints(
                                    minWidth:
                                        MediaQuery.sizeOf(context).width * 0.01,
                                    minHeight: 100.0,
                                    maxWidth:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    maxHeight: 100.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF622E88),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 7.0,
                                        color: Color(0x32171717),
                                        offset: Offset(0.0, 3.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(0.0),
                                    ),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Stack(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      children: [
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                          tabletLandscape: false,
                                        ))
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.41),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 154.0,
                                                  height: 51.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00FFFFFF),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Home',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            color: Colors.white,
                                                            fontSize: 20.0,
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 154.0,
                                                  height: 51.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00FFFFFF),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Trabalhos',
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
                                                                    0xFF929292),
                                                                fontSize: 20.0,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 154.0,
                                                  height: 51.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00FFFFFF),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Programação',
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
                                                                    0xFF929292),
                                                                fontSize: 20.0,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 154.0,
                                                  height: 51.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00FFFFFF),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Hospedagem',
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
                                                                    0xFF929292),
                                                                fontSize: 20.0,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 154.0,
                                                  height: 51.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00FFFFFF),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Premiação',
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
                                                                    0xFF929292),
                                                                fontSize: 20.0,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            Container(
                              width: 100.0,
                              height: MediaQuery.sizeOf(context).height * 0.05,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 150.0, 0.0, 0.0),
                              child: Container(
                                width: 917.0,
                                height: 575.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: Container(
                                        width: 600.0,
                                        height: 468.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 0.0, 0.0, 0.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/Vinheta---Expo_V.gif',
                                                    width: double.infinity,
                                                    height: 423.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation']!),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.0, -1.0),
                                      child: Container(
                                        width: 483.0,
                                        height: 148.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 10.0, 10.0, 0.0),
                                          child: AutoSizeText(
                                            'Mostra Nacional de Experiências Bem-Sucedidas em Epidemiologia, Prevenção e Controle de Doenças ',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                  fontSize: 25.0,
                                                ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation1']!),
                                        ),
                                      ),
                                    ),
                                  ],
                                ).animateOnActionTrigger(
                                    animationsMap[
                                        'columnOnActionTriggerAnimation']!,
                                    hasBeenTriggered: hasColumnTriggered),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 150.0, 0.0, 30.0),
                              child: Text(
                                'O Evento',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noyh Heavy',
                                      color: Colors.white,
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 12.0, 15.0, 15.0),
                              child: Container(
                                width: double.infinity,
                                constraints: BoxConstraints(
                                  minWidth: 400.0,
                                  maxWidth: 1000.0,
                                ),
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x32171717),
                                      offset: Offset(5.0, 7.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 12.0, 12.0, 12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: AutoSizeText(
                                          'O que é: Mostra Nacional de Experiências Bem-Sucedidas em Epidemiologia, Prevenção e Controle de Doenças (EXPOEPI), que será realizada de 07 a 10 de novembro de 2023 em Brasília/DF, tem como objetivo, por intermédio de sua mostra competitiva, a difusão dos serviços de saúde do SUS que se destacaram pelos resultados alcançados em atividades relevantes para a Saúde Pública.',
                                          textAlign: TextAlign.justify,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color: Colors.black,
                                                fontSize: 25.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation1']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 12.0, 15.0, 15.0),
                              child: Container(
                                width: double.infinity,
                                constraints: BoxConstraints(
                                  minWidth: 400.0,
                                  maxWidth: 1000.0,
                                ),
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x32171717),
                                      offset: Offset(5.0, 7.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 12.0, 12.0, 12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: AutoSizeText(
                                          'Na Expoepi ainda serão promovidos debates de cunho técnico-científico por meio de painéis, mesas redondas e palestras visando aprimoramento das ações de vigilância em saúde. ',
                                          textAlign: TextAlign.justify,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color: Colors.black,
                                                fontSize: 25.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation2']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 12.0, 15.0, 15.0),
                              child: Container(
                                width: double.infinity,
                                constraints: BoxConstraints(
                                  minWidth: 400.0,
                                  maxWidth: 1000.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x32171717),
                                      offset: Offset(5.0, 7.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 12.0, 12.0, 12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: AutoSizeText(
                                          'Na edição de 2023 as experiências e trabalhos técnico-científicos serão premiados nas diferentes áreas constitutivas da vigilância em saúde. Serão contempladas três modalidades de participação: \n\n• Modalidade I  - Experiências realizadas pelos serviços de saúde do SUS que contribuíram para o aprimoramento da Vigilância em Saúde\n\n• Modalidade II Profissionais do SUS que concluíram programas de pós-graduação que contribuíram para o aprimoramento da Vigilância em Saúde\n\n• Modalidade III Movimentos sociais que desenvolveram ações que contribuíram para a vigilância, prevenção e controle de doenças e agravos de interesse da Saúde Pública ',
                                          textAlign: TextAlign.justify,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color: Colors.black,
                                                fontSize: 25.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation3']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 12.0, 15.0, 150.0),
                              child: Container(
                                width: double.infinity,
                                constraints: BoxConstraints(
                                  minWidth: 400.0,
                                  maxWidth: 1000.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x32171717),
                                      offset: Offset(5.0, 7.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 12.0, 12.0, 12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: AutoSizeText(
                                          'Estima-se a participação de 2.500 pessoas, entre técnicos, pesquisadores, gestores de órgãos e instituições públicas, atuantes nas áreas de Epidemiologia/Vigilância Epidemiologia, Sistema de Informação e Análise de Situação de Saúde, Controle da Tuberculose, da Hanseníase, da Dengue, da Malária, Imunização, Vigilância de Doenças e Agravos não Transmissíveis, Vigilância Ambiental, Saúde do Trabalhador, Doenças Sexualmente Transmissíveis e Hepatites Virais.',
                                          textAlign: TextAlign.justify,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color: Colors.black,
                                                fontSize: 25.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation4']!),
                            ),
                            SizedBox(
                              width: 100.0,
                              child: Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).accent4,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['dividerOnPageLoadAnimation1']!),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 100.0, 0.0, 30.0),
                              child: AutoSizeText(
                                'Inscrições',
                                textAlign: TextAlign.justify,
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 12.0, 15.0, 150.0),
                              child: Container(
                                width: double.infinity,
                                constraints: BoxConstraints(
                                  minWidth: 400.0,
                                  maxWidth: 1000.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFF622E88),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x32171717),
                                      offset: Offset(5.0, 7.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 12.0, 12.0, 12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      AutoSizeText(
                                        'As inscrições serão abertas em breve!',
                                        textAlign: TextAlign.justify,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color: Colors.white,
                                              fontSize: 25.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation5']!),
                            ),
                            SizedBox(
                              width: 100.0,
                              child: Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).accent4,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['dividerOnPageLoadAnimation2']!),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 130.0, 0.0, 30.0),
                                child: Text(
                                  'Local do Evento',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Noyh Heavy',
                                        color: Colors.white,
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                      ),
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation2']!),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 12.0, 15.0, 0.0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 5.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Container(
                                    width: 615.0,
                                    height: 470.0,
                                    constraints: BoxConstraints(
                                      minWidth: 350.0,
                                      minHeight: 470.0,
                                      maxWidth: 615.0,
                                      maxHeight: 470.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF7D60B5),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x32171717),
                                          offset: Offset(5.0, 8.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: FlutterFlowWebView(
                                        content:
                                            '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15355.10979684584!2d-47.8447472!3d-15.8156846!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x935a235b9cbb04f5%3A0x891cb2fcc1ef260!2sCentro%20Internacional%20de%20Conven%C3%A7%C3%B5es%20do%20Brasil!5e0!3m2!1spt-BR!2sbr!4v1691787390446!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>',
                                        height: 493.0,
                                        verticalScroll: false,
                                        horizontalScroll: false,
                                        html: true,
                                      ),
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation6']!),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 40.0, 0.0, 130.0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 5.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    width: 311.0,
                                    height: 174.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 5.0, 5.0, 5.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            AutoSizeText(
                                              'CICB - Centro Internacional de Convenções do Brasil',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child: AutoSizeText(
                                                'St. de Clubes Esportivos Sul Trecho 2 Conjunto 63, Lote 50 - Asa Sul, Brasília - DF, 70200-002',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'HOME_O_L_D_PAGE_Icon_eon4tuca_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Icon_launch_u_r_l');
                                                  await launchURL(
                                                      'https://maps.google.com/maps/dir//Centro+Internacional+de+Convenções+do+Brasil+St.+de+Clubes+Esportivos+Sul+Trecho+2+Conjunto+63,+Lote+50+-+Asa+Sul+Brasília+-+DF+70200-002/@-15.8156846,-47.8447472,13z/data=!4m5!4m4!1m0!1m2!1m1!1s0x935a235b9cbb04f5:0x891cb2fcc1ef260');
                                                },
                                                child: Icon(
                                                  Icons.alt_route,
                                                  color: Color(0xFF117FC9),
                                                  size: 30.0,
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'HOME_O_L_D_PAGE_Text_xlh9fyvv_ON_TAP');
                                                logFirebaseEvent(
                                                    'Text_launch_u_r_l');
                                                await launchURL(
                                                    'https://maps.google.com/maps/dir//Centro+Internacional+de+Convenções+do+Brasil+St.+de+Clubes+Esportivos+Sul+Trecho+2+Conjunto+63,+Lote+50+-+Asa+Sul+Brasília+-+DF+70200-002/@-15.8156846,-47.8447472,13z/data=!4m5!4m4!1m0!1m2!1m1!1s0x935a235b9cbb04f5:0x891cb2fcc1ef260');
                                              },
                                              child: AutoSizeText(
                                                'Rotas',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color: Color(0xFF117FC9),
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
                            ),
                            SizedBox(
                              width: 100.0,
                              child: Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).accent4,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['dividerOnPageLoadAnimation3']!),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 130.0, 0.0, 30.0),
                                child: Text(
                                  'Hoteis Próximos',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Noyh Heavy',
                                        color: Colors.white,
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                      ),
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation3']!),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 0.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  height: 300.0,
                                  constraints: BoxConstraints(
                                    minHeight: 300.0,
                                    maxWidth: 1000.0,
                                    maxHeight: 300.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF7D60B5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x32171717),
                                        offset: Offset(5.0, 8.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 0.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.hotel,
                                          color: Colors.white,
                                          size: 50.0,
                                        ),
                                      ),
                                      Container(
                                        width: 777.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: AutoSizeText(
                                              'Algumas opções de onde se hospedar próximo ao local do evento!',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Noyh Heavy',
                                                        color: Colors.white,
                                                        fontSize: 30.0,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'HOME_O_L_D_CONFIRA_OS_HOTEIS_BTN_ON_TAP');
                                              logFirebaseEvent(
                                                  'Button_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.tripadvisor.com.br/Hotels-g303322-zfc4,5-zfd9672,16545,21371-a_distFrom.6840074%2C20-a_ufe.true-Brasilia_Federal_District-Hotels.html');
                                            },
                                            text: 'Confira os Hoteis',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFF622E88),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Noyh Heavy',
                                                        color: Colors.white,
                                                        useGoogleFonts: false,
                                                      ),
                                              elevation: 5.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              hoverColor: Colors.white,
                                              hoverTextColor: Color(0xFF622E88),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ).animateOnPageLoad(animationsMap[
                                      'columnOnPageLoadAnimation']!),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation7']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 500.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 50.0,
                                constraints: BoxConstraints(
                                  minWidth:
                                      MediaQuery.sizeOf(context).width * 1.0,
                                  minHeight: 180.0,
                                  maxWidth:
                                      MediaQuery.sizeOf(context).width * 1.0,
                                  maxHeight: 180.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFF622E88),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x32171717),
                                      offset: Offset(5.0, -5.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(50.0),
                                    topRight: Radius.circular(50.0),
                                  ),
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.asset(
                                          'assets/images/MS.png',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.9,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.15,
                                          fit: BoxFit.contain,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
