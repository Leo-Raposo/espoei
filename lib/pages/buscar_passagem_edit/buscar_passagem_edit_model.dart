import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/pdf_view/pdf_view_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class BuscarPassagemEditModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nomeCompletoEdit widget.
  TextEditingController? nomeCompletoEditController;
  String? Function(BuildContext, String?)? nomeCompletoEditControllerValidator;
  // State field(s) for dataNascimentoEdit widget.
  TextEditingController? dataNascimentoEditController;
  final dataNascimentoEditMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      dataNascimentoEditControllerValidator;
  // State field(s) for cpfEdit widget.
  TextEditingController? cpfEditController;
  final cpfEditMask = MaskTextInputFormatter(mask: '###.###.###-###');
  String? Function(BuildContext, String?)? cpfEditControllerValidator;
  // State field(s) for passaporteEdit widget.
  TextEditingController? passaporteEditController;
  String? Function(BuildContext, String?)? passaporteEditControllerValidator;
  // State field(s) for rgEdit widget.
  TextEditingController? rgEditController;
  String? Function(BuildContext, String?)? rgEditControllerValidator;
  // State field(s) for orgaoExpedidorEdit widget.
  TextEditingController? orgaoExpedidorEditController;
  String? Function(BuildContext, String?)?
      orgaoExpedidorEditControllerValidator;
  // State field(s) for ufRgEdit widget.
  TextEditingController? ufRgEditController;
  String? Function(BuildContext, String?)? ufRgEditControllerValidator;
  // State field(s) for estadoCivilEdit widget.
  TextEditingController? estadoCivilEditController;
  String? Function(BuildContext, String?)? estadoCivilEditControllerValidator;
  // State field(s) for enderecoEdit widget.
  TextEditingController? enderecoEditController;
  String? Function(BuildContext, String?)? enderecoEditControllerValidator;
  // State field(s) for cidadeEdit widget.
  TextEditingController? cidadeEditController;
  String? Function(BuildContext, String?)? cidadeEditControllerValidator;
  // State field(s) for ufResidencialEdit widget.
  TextEditingController? ufResidencialEditController;
  String? Function(BuildContext, String?)? ufResidencialEditControllerValidator;
  // State field(s) for cepResidencialEdit widget.
  TextEditingController? cepResidencialEditController;
  final cepResidencialEditMask = MaskTextInputFormatter(mask: '#.####-###');
  String? Function(BuildContext, String?)?
      cepResidencialEditControllerValidator;
  // State field(s) for celularEdit widget.
  TextEditingController? celularEditController;
  String? Function(BuildContext, String?)? celularEditControllerValidator;
  // State field(s) for sexoEdit widget.
  TextEditingController? sexoEditController;
  String? Function(BuildContext, String?)? sexoEditControllerValidator;
  // State field(s) for fumanteEdit widget.
  TextEditingController? fumanteEditController;
  String? Function(BuildContext, String?)? fumanteEditControllerValidator;
  // State field(s) for unidadeEdit widget.
  TextEditingController? unidadeEditController;
  String? Function(BuildContext, String?)? unidadeEditControllerValidator;
  // State field(s) for estadoEdit widget.
  TextEditingController? estadoEditController;
  String? Function(BuildContext, String?)? estadoEditControllerValidator;
  // State field(s) for outrasEdit widget.
  TextEditingController? outrasEditController;
  String? Function(BuildContext, String?)? outrasEditControllerValidator;
  // State field(s) for categoriaEdit widget.
  TextEditingController? categoriaEditController;
  String? Function(BuildContext, String?)? categoriaEditControllerValidator;
  // State field(s) for cargoEdit widget.
  TextEditingController? cargoEditController;
  String? Function(BuildContext, String?)? cargoEditControllerValidator;
  // State field(s) for formacaoEdit widget.
  TextEditingController? formacaoEditController;
  String? Function(BuildContext, String?)? formacaoEditControllerValidator;
  // State field(s) for enderecoInstEdit widget.
  TextEditingController? enderecoInstEditController;
  String? Function(BuildContext, String?)? enderecoInstEditControllerValidator;
  // State field(s) for cidadeInstEdit widget.
  TextEditingController? cidadeInstEditController;
  String? Function(BuildContext, String?)? cidadeInstEditControllerValidator;
  // State field(s) for ufInstEdit widget.
  TextEditingController? ufInstEditController;
  String? Function(BuildContext, String?)? ufInstEditControllerValidator;
  // State field(s) for cepInstEdit widget.
  TextEditingController? cepInstEditController;
  final cepInstEditMask = MaskTextInputFormatter(mask: '#.####-###');
  String? Function(BuildContext, String?)? cepInstEditControllerValidator;
  // State field(s) for telInstEdit widget.
  TextEditingController? telInstEditController;
  final telInstEditMask = MaskTextInputFormatter(mask: '(##)#####-####');
  String? Function(BuildContext, String?)? telInstEditControllerValidator;
  // State field(s) for dataViagemIdaEdit widget.
  TextEditingController? dataViagemIdaEditController;
  final dataViagemIdaEditMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dataViagemIdaEditControllerValidator;
  // State field(s) for horarioViagemIdaEdit widget.
  TextEditingController? horarioViagemIdaEditController;
  final horarioViagemIdaEditMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)?
      horarioViagemIdaEditControllerValidator;
  // State field(s) for origemViagemIdaEdit widget.
  TextEditingController? origemViagemIdaEditController;
  String? Function(BuildContext, String?)?
      origemViagemIdaEditControllerValidator;
  // State field(s) for destinoViagemIdaEdit widget.
  TextEditingController? destinoViagemIdaEditController;
  String? Function(BuildContext, String?)?
      destinoViagemIdaEditControllerValidator;
  // State field(s) for dataViagemVoltaEdit widget.
  TextEditingController? dataViagemVoltaEditController;
  final dataViagemVoltaEditMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      dataViagemVoltaEditControllerValidator;
  // State field(s) for horarioViagemVoltaEdit widget.
  TextEditingController? horarioViagemVoltaEditController;
  final horarioViagemVoltaEditMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)?
      horarioViagemVoltaEditControllerValidator;
  // State field(s) for origemViagemVoltaEdit widget.
  TextEditingController? origemViagemVoltaEditController;
  String? Function(BuildContext, String?)?
      origemViagemVoltaEditControllerValidator;
  // State field(s) for destinoViagemVoltaEdit widget.
  TextEditingController? destinoViagemVoltaEditController;
  String? Function(BuildContext, String?)?
      destinoViagemVoltaEditControllerValidator;
  // State field(s) for obsViagemEdit widget.
  TextEditingController? obsViagemEditController;
  String? Function(BuildContext, String?)? obsViagemEditControllerValidator;
  // State field(s) for passagemEmitida widget.
  bool? passagemEmitidaValue;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for tipoContaEdit widget.
  TextEditingController? tipoContaEditController;
  String? Function(BuildContext, String?)? tipoContaEditControllerValidator;
  // State field(s) for instituicaoBancariadit widget.
  TextEditingController? instituicaoBancariaditController;
  String? Function(BuildContext, String?)?
      instituicaoBancariaditControllerValidator;
  // State field(s) for agenciaEdit widget.
  TextEditingController? agenciaEditController;
  String? Function(BuildContext, String?)? agenciaEditControllerValidator;
  // State field(s) for contaBancariaEdit widget.
  TextEditingController? contaBancariaEditController;
  String? Function(BuildContext, String?)? contaBancariaEditControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nomeCompletoEditController?.dispose();
    dataNascimentoEditController?.dispose();
    cpfEditController?.dispose();
    passaporteEditController?.dispose();
    rgEditController?.dispose();
    orgaoExpedidorEditController?.dispose();
    ufRgEditController?.dispose();
    estadoCivilEditController?.dispose();
    enderecoEditController?.dispose();
    cidadeEditController?.dispose();
    ufResidencialEditController?.dispose();
    cepResidencialEditController?.dispose();
    celularEditController?.dispose();
    sexoEditController?.dispose();
    fumanteEditController?.dispose();
    unidadeEditController?.dispose();
    estadoEditController?.dispose();
    outrasEditController?.dispose();
    categoriaEditController?.dispose();
    cargoEditController?.dispose();
    formacaoEditController?.dispose();
    enderecoInstEditController?.dispose();
    cidadeInstEditController?.dispose();
    ufInstEditController?.dispose();
    cepInstEditController?.dispose();
    telInstEditController?.dispose();
    dataViagemIdaEditController?.dispose();
    horarioViagemIdaEditController?.dispose();
    origemViagemIdaEditController?.dispose();
    destinoViagemIdaEditController?.dispose();
    dataViagemVoltaEditController?.dispose();
    horarioViagemVoltaEditController?.dispose();
    origemViagemVoltaEditController?.dispose();
    destinoViagemVoltaEditController?.dispose();
    obsViagemEditController?.dispose();
    tipoContaEditController?.dispose();
    instituicaoBancariaditController?.dispose();
    agenciaEditController?.dispose();
    contaBancariaEditController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
