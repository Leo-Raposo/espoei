import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'termo_l_g_p_d_model.dart';
export 'termo_l_g_p_d_model.dart';

class TermoLGPDWidget extends StatefulWidget {
  const TermoLGPDWidget({Key? key}) : super(key: key);

  @override
  _TermoLGPDWidgetState createState() => _TermoLGPDWidgetState();
}

class _TermoLGPDWidgetState extends State<TermoLGPDWidget> {
  late TermoLGPDModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermoLGPDModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.95,
          height: MediaQuery.sizeOf(context).height * 0.95,
          constraints: BoxConstraints(
            maxWidth: 570.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: Color(0xFFE0E3E7),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: Text(
                            'TERMO DE ADEOUAÇÃO À LGPD\nLei Geral de Proteção de Dados Lei 13.709/2018',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF14181B),
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: Color(0xFFF1F4F8),
                        borderRadius: 30.0,
                        borderWidth: 2.0,
                        buttonSize: 44.0,
                        icon: Icon(
                          Icons.close_rounded,
                          color: Color(0xFF57636C),
                          size: 24.0,
                        ),
                        onPressed: () async {
                          logFirebaseEvent(
                              'TERMO_L_G_P_D_close_rounded_ICN_ON_TAP');
                          logFirebaseEvent('IconButton_bottom_sheet');
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  Divider(
                    height: 24.0,
                    thickness: 2.0,
                    color: Color(0xFFF1F4F8),
                  ),
                  Text(
                    'O presente Termo de Adequação LGPD (\"Termo\") tem como objeto garantir a adequação do evento ExpoEPI à Lei Geral\nde Proteção de Dados (Lei 13.709/2018).\n\nA ExpoEPI, na qualidade de Controlador(a) que corresponde a pessoa jurídica de direito público/privado, a quem compete as decisões referentes ao tratamento de dados pessoais, afirma que adota todas as medidas necessárias para assegurar a observância à Lei Geral de Proteção de Dados.\n\nA Empresa se compromete a manter a confidencialidade e a integridade de todos os dados pessoais mantidos ou consultados/transmitidos eletronicamente, para garantir a proteção desses dados contra acesso não autorizado, destruição, uso, modificação, divulgação ou perda acidental ou indevida. Para fins de clareza, os dados pessoais correspondem as informações relacionadas as pessoas naturais identificadas ou identificáveis.\n\nA Empresa se compromete a tratar os dados pessoais a que tiver acesso somente com as respectivas permissões dos titulares desses dados, ou seja, mediante as confirmações das pessoas naturais as quais se referem os dados pessoais que serão objeto de tratamento.\n\nA Empresa assegura que todos os seus colaboradores prepostos, sócios, diretores, representantes ou terceiros contratados que tenham acesso aos dados pessoais que estão sob a responsabilidade da Empresa, assinaram o Termo de Confidencialidade, bem como comprometem-se a manter quaisquer Dados Pessoais estritamente confidenciais e não os utilizar para outros fins, com exceção a prestação de serviços.\n\nOs Dados Pessoais não poderão ser revelados a terceiros, com exceção da prévia autorização por escrito do titular dos dados pessoais, ou ainda na hipótese da Empresa, por determinação legal, ter que fornecer os dados pessoais a uma autoridade pública, ocasião em o titular dos dados pessoais que deverá ser informado previamente para que tome as medidas necessárias.',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Color(0xFF57636C),
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [],
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
