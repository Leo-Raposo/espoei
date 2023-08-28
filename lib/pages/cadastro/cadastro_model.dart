import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/termo_l_g_p_d/termo_l_g_p_d_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CadastroModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for codigo widget.
  TextEditingController? codigoController;
  String? Function(BuildContext, String?)? codigoControllerValidator;
  String? _codigoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatorio';
    }

    return null;
  }

  // State field(s) for unidade widget.
  String? unidadeValue;
  FormFieldController<String>? unidadeValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in unidade widget.
  List<EstadoRecord>? outEstados;
  // State field(s) for qualInstituicao widget.
  TextEditingController? qualInstituicaoController;
  String? Function(BuildContext, String?)? qualInstituicaoControllerValidator;
  // State field(s) for estado widget.
  String? estadoValue;
  FormFieldController<String>? estadoValueController;
  // State field(s) for categoria widget.
  String? categoriaValue;
  FormFieldController<String>? categoriaValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue;
  FormFieldController<List<String>>? choiceChipsValueController;
  // State field(s) for CPF widget.
  TextEditingController? cpfController;
  final cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfControllerValidator;
  // State field(s) for Passaporte widget.
  TextEditingController? passaporteController;
  String? Function(BuildContext, String?)? passaporteControllerValidator;
  // State field(s) for nome widget.
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  String? _nomeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for rg widget.
  TextEditingController? rgController;
  String? Function(BuildContext, String?)? rgControllerValidator;
  String? _rgControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for orgaoRG widget.
  TextEditingController? orgaoRGController;
  String? Function(BuildContext, String?)? orgaoRGControllerValidator;
  String? _orgaoRGControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for ufRG widget.
  String? ufRGValue;
  FormFieldController<String>? ufRGValueController;
  // State field(s) for dataNascimento widget.
  TextEditingController? dataNascimentoController;
  final dataNascimentoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dataNascimentoControllerValidator;
  String? _dataNascimentoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for estadoCivil widget.
  String? estadoCivilValue;
  FormFieldController<String>? estadoCivilValueController;
  // State field(s) for enderecoResidencial widget.
  TextEditingController? enderecoResidencialController;
  String? Function(BuildContext, String?)?
      enderecoResidencialControllerValidator;
  String? _enderecoResidencialControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for cidadeResidencial widget.
  TextEditingController? cidadeResidencialController;
  String? Function(BuildContext, String?)? cidadeResidencialControllerValidator;
  String? _cidadeResidencialControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for ufResidencial widget.
  String? ufResidencialValue;
  FormFieldController<String>? ufResidencialValueController;
  // State field(s) for ceResidencial widget.
  TextEditingController? ceResidencialController;
  final ceResidencialMask = MaskTextInputFormatter(mask: '#.####-###');
  String? Function(BuildContext, String?)? ceResidencialControllerValidator;
  String? _ceResidencialControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for celularPessoal widget.
  TextEditingController? celularPessoalController;
  final celularPessoalMask = MaskTextInputFormatter(mask: '(##)#####-####');
  String? Function(BuildContext, String?)? celularPessoalControllerValidator;
  String? _celularPessoalControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for sexo widget.
  String? sexoValue;
  FormFieldController<String>? sexoValueController;
  // State field(s) for fumante widget.
  String? fumanteValue;
  FormFieldController<String>? fumanteValueController;
  // State field(s) for cargoFuncao widget.
  TextEditingController? cargoFuncaoController;
  String? Function(BuildContext, String?)? cargoFuncaoControllerValidator;
  String? _cargoFuncaoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for formacao widget.
  TextEditingController? formacaoController;
  String? Function(BuildContext, String?)? formacaoControllerValidator;
  // State field(s) for enderecoInstitucional widget.
  TextEditingController? enderecoInstitucionalController;
  String? Function(BuildContext, String?)?
      enderecoInstitucionalControllerValidator;
  String? _enderecoInstitucionalControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for cidadInstitucional widget.
  TextEditingController? cidadInstitucionalController;
  String? Function(BuildContext, String?)?
      cidadInstitucionalControllerValidator;
  String? _cidadInstitucionalControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for ufInstitucional widget.
  String? ufInstitucionalValue;
  FormFieldController<String>? ufInstitucionalValueController;
  // State field(s) for cepInstitucional widget.
  TextEditingController? cepInstitucionalController;
  final cepInstitucionalMask = MaskTextInputFormatter(mask: '#.####-###');
  String? Function(BuildContext, String?)? cepInstitucionalControllerValidator;
  String? _cepInstitucionalControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for telInstitucional widget.
  TextEditingController? telInstitucionalController;
  final telInstitucionalMask = MaskTextInputFormatter(mask: '(##)#####-####');
  String? Function(BuildContext, String?)? telInstitucionalControllerValidator;
  String? _telInstitucionalControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for dataDaViagemIDA widget.
  TextEditingController? dataDaViagemIDAController;
  final dataDaViagemIDAMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dataDaViagemIDAControllerValidator;
  String? _dataDaViagemIDAControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for horarioDaViagemIDA widget.
  TextEditingController? horarioDaViagemIDAController;
  final horarioDaViagemIDAMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)?
      horarioDaViagemIDAControllerValidator;
  // State field(s) for origemIda widget.
  TextEditingController? origemIdaController;
  String? Function(BuildContext, String?)? origemIdaControllerValidator;
  String? _origemIdaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for destinoIda widget.
  TextEditingController? destinoIdaController;
  String? Function(BuildContext, String?)? destinoIdaControllerValidator;
  String? _destinoIdaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for dataDaViageVolta widget.
  TextEditingController? dataDaViageVoltaController;
  final dataDaViageVoltaMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dataDaViageVoltaControllerValidator;
  String? _dataDaViageVoltaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for horarioVolta widget.
  TextEditingController? horarioVoltaController;
  final horarioVoltaMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)? horarioVoltaControllerValidator;
  // State field(s) for origemVolta widget.
  TextEditingController? origemVoltaController;
  String? Function(BuildContext, String?)? origemVoltaControllerValidator;
  String? _origemVoltaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for destinoVolta widget.
  TextEditingController? destinoVoltaController;
  String? Function(BuildContext, String?)? destinoVoltaControllerValidator;
  String? _destinoVoltaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for observacoes widget.
  TextEditingController? observacoesController;
  String? Function(BuildContext, String?)? observacoesControllerValidator;
  // State field(s) for tipoDeConta widget.
  String? tipoDeContaValue;
  FormFieldController<String>? tipoDeContaValueController;
  // State field(s) for banco widget.
  TextEditingController? bancoController;
  String? Function(BuildContext, String?)? bancoControllerValidator;
  String? _bancoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for agencia widget.
  TextEditingController? agenciaController;
  String? Function(BuildContext, String?)? agenciaControllerValidator;
  String? _agenciaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for contaBancaria widget.
  TextEditingController? contaBancariaController;
  String? Function(BuildContext, String?)? contaBancariaControllerValidator;
  String? _contaBancariaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  String? _emailAddressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for senha widget.
  TextEditingController? senhaController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaControllerValidator;
  String? _senhaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    if (val.length < 6) {
      return 'A senha deve ter mais de 6 caracteres';
    }

    return null;
  }

  // State field(s) for confirmarSenha widget.
  TextEditingController? confirmarSenhaController;
  late bool confirmarSenhaVisibility;
  String? Function(BuildContext, String?)? confirmarSenhaControllerValidator;
  String? _confirmarSenhaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    if (val.length < 6) {
      return 'A senha deve ter mais de 6 caracteres';
    }

    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    codigoControllerValidator = _codigoControllerValidator;
    nomeControllerValidator = _nomeControllerValidator;
    rgControllerValidator = _rgControllerValidator;
    orgaoRGControllerValidator = _orgaoRGControllerValidator;
    dataNascimentoControllerValidator = _dataNascimentoControllerValidator;
    enderecoResidencialControllerValidator =
        _enderecoResidencialControllerValidator;
    cidadeResidencialControllerValidator =
        _cidadeResidencialControllerValidator;
    ceResidencialControllerValidator = _ceResidencialControllerValidator;
    celularPessoalControllerValidator = _celularPessoalControllerValidator;
    cargoFuncaoControllerValidator = _cargoFuncaoControllerValidator;
    enderecoInstitucionalControllerValidator =
        _enderecoInstitucionalControllerValidator;
    cidadInstitucionalControllerValidator =
        _cidadInstitucionalControllerValidator;
    cepInstitucionalControllerValidator = _cepInstitucionalControllerValidator;
    telInstitucionalControllerValidator = _telInstitucionalControllerValidator;
    dataDaViagemIDAControllerValidator = _dataDaViagemIDAControllerValidator;
    origemIdaControllerValidator = _origemIdaControllerValidator;
    destinoIdaControllerValidator = _destinoIdaControllerValidator;
    dataDaViageVoltaControllerValidator = _dataDaViageVoltaControllerValidator;
    origemVoltaControllerValidator = _origemVoltaControllerValidator;
    destinoVoltaControllerValidator = _destinoVoltaControllerValidator;
    bancoControllerValidator = _bancoControllerValidator;
    agenciaControllerValidator = _agenciaControllerValidator;
    contaBancariaControllerValidator = _contaBancariaControllerValidator;
    emailAddressControllerValidator = _emailAddressControllerValidator;
    senhaVisibility = false;
    senhaControllerValidator = _senhaControllerValidator;
    confirmarSenhaVisibility = false;
    confirmarSenhaControllerValidator = _confirmarSenhaControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    codigoController?.dispose();
    qualInstituicaoController?.dispose();
    cpfController?.dispose();
    passaporteController?.dispose();
    nomeController?.dispose();
    rgController?.dispose();
    orgaoRGController?.dispose();
    dataNascimentoController?.dispose();
    enderecoResidencialController?.dispose();
    cidadeResidencialController?.dispose();
    ceResidencialController?.dispose();
    celularPessoalController?.dispose();
    cargoFuncaoController?.dispose();
    formacaoController?.dispose();
    enderecoInstitucionalController?.dispose();
    cidadInstitucionalController?.dispose();
    cepInstitucionalController?.dispose();
    telInstitucionalController?.dispose();
    dataDaViagemIDAController?.dispose();
    horarioDaViagemIDAController?.dispose();
    origemIdaController?.dispose();
    destinoIdaController?.dispose();
    dataDaViageVoltaController?.dispose();
    horarioVoltaController?.dispose();
    origemVoltaController?.dispose();
    destinoVoltaController?.dispose();
    observacoesController?.dispose();
    bancoController?.dispose();
    agenciaController?.dispose();
    contaBancariaController?.dispose();
    emailAddressController?.dispose();
    senhaController?.dispose();
    confirmarSenhaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
