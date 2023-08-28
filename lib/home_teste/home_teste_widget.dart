import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_teste_model.dart';
export 'home_teste_model.dart';

class HomeTesteWidget extends StatefulWidget {
  const HomeTesteWidget({Key? key}) : super(key: key);

  @override
  _HomeTesteWidgetState createState() => _HomeTesteWidgetState();
}

class _HomeTesteWidgetState extends State<HomeTesteWidget> {
  late HomeTesteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeTesteModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'HomeTeste'});
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowWebView(
                          content:
                              '<!DOCTYPE html>\n<html lang=\"en\" >\n<head>\n  <meta charset=\"UTF-8\">\n  <title>Waves</title>\n  <style>\n    @import url(//fonts.googleapis.com/css?family=Lato:300:400);\n\nbody {\n  margin:0;\n}\n\nh1 {\n  font-family: \'Lato\', sans-serif;\n  font-weight:300;\n  letter-spacing: 2px;\n  font-size:48px;\n}\np {\n  font-family: \'Lato\', sans-serif;\n  letter-spacing: 1px;\n  font-size:14px;\n  color: #333333;\n}\n\n.header {\n  position:relative;\n  text-align:center;\n  background: linear-gradient(60deg, rgba(84,58,183,1) 0%, rgba(0,172,193,1) 100%);\n  color:white;\n}\n.logo {\n  width:50px;\n  fill:white;\n  padding-right:15px;\n  display:inline-block;\n  vertical-align: middle;\n}\n\n.inner-header {\n  height:65vh;\n  width:100%;\n  margin: 0;\n  padding: 0;\n}\n\n.flex { /*Flexbox for containers*/\n  display: flex;\n  justify-content: center;\n  align-items: center;\n  text-align: center;\n}\n\n.waves {\n  position:relative;\n  width: 100%;\n  height:15vh;\n  margin-bottom:-7px; /*Fix for safari gap*/\n  min-height:100px;\n  max-height:150px;\n}\n\n.content {\n  position:relative;\n  height:20vh;\n  text-align:center;\n  background-color: white;\n}\n\n/* Animation */\n\n.parallax > use {\n  animation: move-forever 25s cubic-bezier(.55,.5,.45,.5)     infinite;\n}\n.parallax > use:nth-child(1) {\n  animation-delay: -2s;\n  animation-duration: 7s;\n}\n.parallax > use:nth-child(2) {\n  animation-delay: -3s;\n  animation-duration: 10s;\n}\n.parallax > use:nth-child(3) {\n  animation-delay: -4s;\n  animation-duration: 13s;\n}\n.parallax > use:nth-child(4) {\n  animation-delay: -5s;\n  animation-duration: 20s;\n}\n@keyframes move-forever {\n  0% {\n   transform: translate3d(-90px,0,0);\n  }\n  100% { \n    transform: translate3d(85px,0,0);\n  }\n}\n/*Shrinking for mobile*/\n@media (max-width: 768px) {\n  .waves {\n    height:40px;\n    min-height:40px;\n  }\n  .content {\n    height:30vh;\n  }\n  h1 {\n    font-size:24px;\n  }\n}\n  </style>\n</head>\n<body>\n<!-- partial:index.partial.html -->\n<!--Hey! This is the original version\nof Simple CSS Waves-->\n\n<div class=\"header\">\n\n<!--Content before waves-->\n<div class=\"inner-header flex\">\n<!--Just the logo.. Don\'t mind this-->\n<path fill=\"#FFFFFF\" stroke=\"#000000\" stroke-width=\"10\" stroke-miterlimit=\"10\" d=\"M57,283\" />\n<g><path fill=\"#fff\"\nd=\"M250.4,0.8C112.7,0.8,1,112.4,1,250.2c0,137.7,111.7,249.4,249.4,249.4c137.7,0,249.4-111.7,249.4-249.4\nC499.8,112.4,388.1,0.8,250.4,0.8z M383.8,326.3c-62,0-101.4-14.1-117.6-46.3c-17.1-34.1-2.3-75.4,13.2-104.1\nc-22.4,3-38.4,9.2-47.8,18.3c-11.2,10.9-13.6,26.7-16.3,45c-3.1,20.8-6.6,44.4-25.3,62.4c-19.8,19.1-51.6,26.9-100.2,24.6l1.8-39.7\t\tc35.9,1.6,59.7-2.9,70.8-13.6c8.9-8.6,11.1-22.9,13.5-39.6c6.3-42,14.8-99.4,141.4-99.4h41L333,166c-12.6,16-45.4,68.2-31.2,96.2\tc9.2,18.3,41.5,25.6,91.2,24.2l1.1,39.8C390.5,326.2,387.1,326.3,383.8,326.3z\" />\n</g>\n</svg>\n</div>\n\n<!--Waves Container-->\n<div>\n<svg class=\"waves\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\"\nviewBox=\"0 24 150 28\" preserveAspectRatio=\"none\" shape-rendering=\"auto\">\n<defs>\n<path id=\"gentle-wave\" d=\"M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z\" />\n</defs>\n<g class=\"parallax\">\n<use xlink:href=\"#gentle-wave\" x=\"48\" y=\"0\" fill=\"rgba(255,255,255,0.7\" />\n<use xlink:href=\"#gentle-wave\" x=\"48\" y=\"3\" fill=\"rgba(255,255,255,0.5)\" />\n<use xlink:href=\"#gentle-wave\" x=\"48\" y=\"5\" fill=\"rgba(255,255,255,0.3)\" />\n<use xlink:href=\"#gentle-wave\" x=\"48\" y=\"7\" fill=\"#fff\" />\n</g>\n</svg>\n</div>\n<!--Waves end-->\n\n</div>\n<!--Header ends-->\n\n<!--Content starts-->\n<div class=\"content flex\">\n</div>\n<!--Content ends-->\n<!-- partial -->\n  \n</body>\n</html>\n',
                          height: 759.0,
                          verticalScroll: false,
                          horizontalScroll: false,
                          html: true,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 50.0, 0.0, 0.0),
                          child: Container(
                            width: 483.0,
                            height: 319.0,
                            decoration: BoxDecoration(
                              color: Color(0x00FFFFFF),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/BG_White.png',
                                  width: 300.0,
                                  height: 317.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 558.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 50.0, 0.0, 0.0),
                            child: Container(
                              width: 199.0,
                              height: 180.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/logoExpoEPI.png',
                                    width: 300.0,
                                    height: 246.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
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
      ),
    );
  }
}
