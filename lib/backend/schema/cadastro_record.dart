import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CadastroRecord extends FirestoreRecord {
  CadastroRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "unidade" field.
  String? _unidade;
  String get unidade => _unidade ?? '';
  bool hasUnidade() => _unidade != null;

  // "estadoUnidade" field.
  String? _estadoUnidade;
  String get estadoUnidade => _estadoUnidade ?? '';
  bool hasEstadoUnidade() => _estadoUnidade != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "nomeCompleto" field.
  String? _nomeCompleto;
  String get nomeCompleto => _nomeCompleto ?? '';
  bool hasNomeCompleto() => _nomeCompleto != null;

  // "rg" field.
  String? _rg;
  String get rg => _rg ?? '';
  bool hasRg() => _rg != null;

  // "orgaoExpedidor" field.
  String? _orgaoExpedidor;
  String get orgaoExpedidor => _orgaoExpedidor ?? '';
  bool hasOrgaoExpedidor() => _orgaoExpedidor != null;

  // "ufRG" field.
  String? _ufRG;
  String get ufRG => _ufRG ?? '';
  bool hasUfRG() => _ufRG != null;

  // "estadoCivil" field.
  String? _estadoCivil;
  String get estadoCivil => _estadoCivil ?? '';
  bool hasEstadoCivil() => _estadoCivil != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "enderecoResidencial" field.
  String? _enderecoResidencial;
  String get enderecoResidencial => _enderecoResidencial ?? '';
  bool hasEnderecoResidencial() => _enderecoResidencial != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "ufResidencial" field.
  String? _ufResidencial;
  String get ufResidencial => _ufResidencial ?? '';
  bool hasUfResidencial() => _ufResidencial != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "celular" field.
  String? _celular;
  String get celular => _celular ?? '';
  bool hasCelular() => _celular != null;

  // "sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  bool hasSexo() => _sexo != null;

  // "fumante" field.
  String? _fumante;
  String get fumante => _fumante ?? '';
  bool hasFumante() => _fumante != null;

  // "cargoFuncao" field.
  String? _cargoFuncao;
  String get cargoFuncao => _cargoFuncao ?? '';
  bool hasCargoFuncao() => _cargoFuncao != null;

  // "formacao" field.
  String? _formacao;
  String get formacao => _formacao ?? '';
  bool hasFormacao() => _formacao != null;

  // "enderecoInstitucional" field.
  String? _enderecoInstitucional;
  String get enderecoInstitucional => _enderecoInstitucional ?? '';
  bool hasEnderecoInstitucional() => _enderecoInstitucional != null;

  // "cidadeInstitucional" field.
  String? _cidadeInstitucional;
  String get cidadeInstitucional => _cidadeInstitucional ?? '';
  bool hasCidadeInstitucional() => _cidadeInstitucional != null;

  // "ufInstitucional" field.
  String? _ufInstitucional;
  String get ufInstitucional => _ufInstitucional ?? '';
  bool hasUfInstitucional() => _ufInstitucional != null;

  // "cepInstitucional" field.
  String? _cepInstitucional;
  String get cepInstitucional => _cepInstitucional ?? '';
  bool hasCepInstitucional() => _cepInstitucional != null;

  // "telInstitucional" field.
  String? _telInstitucional;
  String get telInstitucional => _telInstitucional ?? '';
  bool hasTelInstitucional() => _telInstitucional != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "senha" field.
  String? _senha;
  String get senha => _senha ?? '';
  bool hasSenha() => _senha != null;

  // "confirmarSenha" field.
  String? _confirmarSenha;
  String get confirmarSenha => _confirmarSenha ?? '';
  bool hasConfirmarSenha() => _confirmarSenha != null;

  // "dataNascimento" field.
  String? _dataNascimento;
  String get dataNascimento => _dataNascimento ?? '';
  bool hasDataNascimento() => _dataNascimento != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "dataViagemIda" field.
  String? _dataViagemIda;
  String get dataViagemIda => _dataViagemIda ?? '';
  bool hasDataViagemIda() => _dataViagemIda != null;

  // "horarioViagemIda" field.
  String? _horarioViagemIda;
  String get horarioViagemIda => _horarioViagemIda ?? '';
  bool hasHorarioViagemIda() => _horarioViagemIda != null;

  // "origemViagemIda" field.
  String? _origemViagemIda;
  String get origemViagemIda => _origemViagemIda ?? '';
  bool hasOrigemViagemIda() => _origemViagemIda != null;

  // "destinoViagemIda" field.
  String? _destinoViagemIda;
  String get destinoViagemIda => _destinoViagemIda ?? '';
  bool hasDestinoViagemIda() => _destinoViagemIda != null;

  // "dataViagemVolta" field.
  String? _dataViagemVolta;
  String get dataViagemVolta => _dataViagemVolta ?? '';
  bool hasDataViagemVolta() => _dataViagemVolta != null;

  // "horarioViagemVolta" field.
  String? _horarioViagemVolta;
  String get horarioViagemVolta => _horarioViagemVolta ?? '';
  bool hasHorarioViagemVolta() => _horarioViagemVolta != null;

  // "origemViagemVolta" field.
  String? _origemViagemVolta;
  String get origemViagemVolta => _origemViagemVolta ?? '';
  bool hasOrigemViagemVolta() => _origemViagemVolta != null;

  // "destinoViagemVolta" field.
  String? _destinoViagemVolta;
  String get destinoViagemVolta => _destinoViagemVolta ?? '';
  bool hasDestinoViagemVolta() => _destinoViagemVolta != null;

  // "observacoesViagem" field.
  String? _observacoesViagem;
  String get observacoesViagem => _observacoesViagem ?? '';
  bool hasObservacoesViagem() => _observacoesViagem != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "passaporte" field.
  String? _passaporte;
  String get passaporte => _passaporte ?? '';
  bool hasPassaporte() => _passaporte != null;

  // "tipoDeConta" field.
  String? _tipoDeConta;
  String get tipoDeConta => _tipoDeConta ?? '';
  bool hasTipoDeConta() => _tipoDeConta != null;

  // "intituicaoBancaria" field.
  String? _intituicaoBancaria;
  String get intituicaoBancaria => _intituicaoBancaria ?? '';
  bool hasIntituicaoBancaria() => _intituicaoBancaria != null;

  // "agencia" field.
  int? _agencia;
  int get agencia => _agencia ?? 0;
  bool hasAgencia() => _agencia != null;

  // "contaBancaria" field.
  int? _contaBancaria;
  int get contaBancaria => _contaBancaria ?? 0;
  bool hasContaBancaria() => _contaBancaria != null;

  // "instituicaoOutros" field.
  String? _instituicaoOutros;
  String get instituicaoOutros => _instituicaoOutros ?? '';
  bool hasInstituicaoOutros() => _instituicaoOutros != null;

  // "LGPD" field.
  bool? _lgpd;
  bool get lgpd => _lgpd ?? false;
  bool hasLgpd() => _lgpd != null;

  // "administrador" field.
  bool? _administrador;
  bool get administrador => _administrador ?? false;
  bool hasAdministrador() => _administrador != null;

  // "codigoDeVerificacao" field.
  String? _codigoDeVerificacao;
  String get codigoDeVerificacao => _codigoDeVerificacao ?? '';
  bool hasCodigoDeVerificacao() => _codigoDeVerificacao != null;

  // "statusPassagem" field.
  bool? _statusPassagem;
  bool get statusPassagem => _statusPassagem ?? false;
  bool hasStatusPassagem() => _statusPassagem != null;

  // "admStatus" field.
  String? _admStatus;
  String get admStatus => _admStatus ?? '';
  bool hasAdmStatus() => _admStatus != null;

  // "passagem" field.
  List<String>? _passagem;
  List<String> get passagem => _passagem ?? const [];
  bool hasPassagem() => _passagem != null;

  // "bilhetePassagem" field.
  String? _bilhetePassagem;
  String get bilhetePassagem => _bilhetePassagem ?? '';
  bool hasBilhetePassagem() => _bilhetePassagem != null;

  void _initializeFields() {
    _unidade = snapshotData['unidade'] as String?;
    _estadoUnidade = snapshotData['estadoUnidade'] as String?;
    _foto = snapshotData['foto'] as String?;
    _nomeCompleto = snapshotData['nomeCompleto'] as String?;
    _rg = snapshotData['rg'] as String?;
    _orgaoExpedidor = snapshotData['orgaoExpedidor'] as String?;
    _ufRG = snapshotData['ufRG'] as String?;
    _estadoCivil = snapshotData['estadoCivil'] as String?;
    _cpf = snapshotData['cpf'] as String?;
    _enderecoResidencial = snapshotData['enderecoResidencial'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _ufResidencial = snapshotData['ufResidencial'] as String?;
    _cep = snapshotData['cep'] as String?;
    _celular = snapshotData['celular'] as String?;
    _sexo = snapshotData['sexo'] as String?;
    _fumante = snapshotData['fumante'] as String?;
    _cargoFuncao = snapshotData['cargoFuncao'] as String?;
    _formacao = snapshotData['formacao'] as String?;
    _enderecoInstitucional = snapshotData['enderecoInstitucional'] as String?;
    _cidadeInstitucional = snapshotData['cidadeInstitucional'] as String?;
    _ufInstitucional = snapshotData['ufInstitucional'] as String?;
    _cepInstitucional = snapshotData['cepInstitucional'] as String?;
    _telInstitucional = snapshotData['telInstitucional'] as String?;
    _email = snapshotData['email'] as String?;
    _senha = snapshotData['senha'] as String?;
    _confirmarSenha = snapshotData['confirmarSenha'] as String?;
    _dataNascimento = snapshotData['dataNascimento'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _dataViagemIda = snapshotData['dataViagemIda'] as String?;
    _horarioViagemIda = snapshotData['horarioViagemIda'] as String?;
    _origemViagemIda = snapshotData['origemViagemIda'] as String?;
    _destinoViagemIda = snapshotData['destinoViagemIda'] as String?;
    _dataViagemVolta = snapshotData['dataViagemVolta'] as String?;
    _horarioViagemVolta = snapshotData['horarioViagemVolta'] as String?;
    _origemViagemVolta = snapshotData['origemViagemVolta'] as String?;
    _destinoViagemVolta = snapshotData['destinoViagemVolta'] as String?;
    _observacoesViagem = snapshotData['observacoesViagem'] as String?;
    _categoria = snapshotData['categoria'] as String?;
    _passaporte = snapshotData['passaporte'] as String?;
    _tipoDeConta = snapshotData['tipoDeConta'] as String?;
    _intituicaoBancaria = snapshotData['intituicaoBancaria'] as String?;
    _agencia = castToType<int>(snapshotData['agencia']);
    _contaBancaria = castToType<int>(snapshotData['contaBancaria']);
    _instituicaoOutros = snapshotData['instituicaoOutros'] as String?;
    _lgpd = snapshotData['LGPD'] as bool?;
    _administrador = snapshotData['administrador'] as bool?;
    _codigoDeVerificacao = snapshotData['codigoDeVerificacao'] as String?;
    _statusPassagem = snapshotData['statusPassagem'] as bool?;
    _admStatus = snapshotData['admStatus'] as String?;
    _passagem = getDataList(snapshotData['passagem']);
    _bilhetePassagem = snapshotData['bilhetePassagem'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cadastro');

  static Stream<CadastroRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CadastroRecord.fromSnapshot(s));

  static Future<CadastroRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CadastroRecord.fromSnapshot(s));

  static CadastroRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CadastroRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CadastroRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CadastroRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CadastroRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CadastroRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCadastroRecordData({
  String? unidade,
  String? estadoUnidade,
  String? foto,
  String? nomeCompleto,
  String? rg,
  String? orgaoExpedidor,
  String? ufRG,
  String? estadoCivil,
  String? cpf,
  String? enderecoResidencial,
  String? cidade,
  String? ufResidencial,
  String? cep,
  String? celular,
  String? sexo,
  String? fumante,
  String? cargoFuncao,
  String? formacao,
  String? enderecoInstitucional,
  String? cidadeInstitucional,
  String? ufInstitucional,
  String? cepInstitucional,
  String? telInstitucional,
  String? email,
  String? senha,
  String? confirmarSenha,
  String? dataNascimento,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? dataViagemIda,
  String? horarioViagemIda,
  String? origemViagemIda,
  String? destinoViagemIda,
  String? dataViagemVolta,
  String? horarioViagemVolta,
  String? origemViagemVolta,
  String? destinoViagemVolta,
  String? observacoesViagem,
  String? categoria,
  String? passaporte,
  String? tipoDeConta,
  String? intituicaoBancaria,
  int? agencia,
  int? contaBancaria,
  String? instituicaoOutros,
  bool? lgpd,
  bool? administrador,
  String? codigoDeVerificacao,
  bool? statusPassagem,
  String? admStatus,
  String? bilhetePassagem,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'unidade': unidade,
      'estadoUnidade': estadoUnidade,
      'foto': foto,
      'nomeCompleto': nomeCompleto,
      'rg': rg,
      'orgaoExpedidor': orgaoExpedidor,
      'ufRG': ufRG,
      'estadoCivil': estadoCivil,
      'cpf': cpf,
      'enderecoResidencial': enderecoResidencial,
      'cidade': cidade,
      'ufResidencial': ufResidencial,
      'cep': cep,
      'celular': celular,
      'sexo': sexo,
      'fumante': fumante,
      'cargoFuncao': cargoFuncao,
      'formacao': formacao,
      'enderecoInstitucional': enderecoInstitucional,
      'cidadeInstitucional': cidadeInstitucional,
      'ufInstitucional': ufInstitucional,
      'cepInstitucional': cepInstitucional,
      'telInstitucional': telInstitucional,
      'email': email,
      'senha': senha,
      'confirmarSenha': confirmarSenha,
      'dataNascimento': dataNascimento,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'dataViagemIda': dataViagemIda,
      'horarioViagemIda': horarioViagemIda,
      'origemViagemIda': origemViagemIda,
      'destinoViagemIda': destinoViagemIda,
      'dataViagemVolta': dataViagemVolta,
      'horarioViagemVolta': horarioViagemVolta,
      'origemViagemVolta': origemViagemVolta,
      'destinoViagemVolta': destinoViagemVolta,
      'observacoesViagem': observacoesViagem,
      'categoria': categoria,
      'passaporte': passaporte,
      'tipoDeConta': tipoDeConta,
      'intituicaoBancaria': intituicaoBancaria,
      'agencia': agencia,
      'contaBancaria': contaBancaria,
      'instituicaoOutros': instituicaoOutros,
      'LGPD': lgpd,
      'administrador': administrador,
      'codigoDeVerificacao': codigoDeVerificacao,
      'statusPassagem': statusPassagem,
      'admStatus': admStatus,
      'bilhetePassagem': bilhetePassagem,
    }.withoutNulls,
  );

  return firestoreData;
}

class CadastroRecordDocumentEquality implements Equality<CadastroRecord> {
  const CadastroRecordDocumentEquality();

  @override
  bool equals(CadastroRecord? e1, CadastroRecord? e2) {
    const listEquality = ListEquality();
    return e1?.unidade == e2?.unidade &&
        e1?.estadoUnidade == e2?.estadoUnidade &&
        e1?.foto == e2?.foto &&
        e1?.nomeCompleto == e2?.nomeCompleto &&
        e1?.rg == e2?.rg &&
        e1?.orgaoExpedidor == e2?.orgaoExpedidor &&
        e1?.ufRG == e2?.ufRG &&
        e1?.estadoCivil == e2?.estadoCivil &&
        e1?.cpf == e2?.cpf &&
        e1?.enderecoResidencial == e2?.enderecoResidencial &&
        e1?.cidade == e2?.cidade &&
        e1?.ufResidencial == e2?.ufResidencial &&
        e1?.cep == e2?.cep &&
        e1?.celular == e2?.celular &&
        e1?.sexo == e2?.sexo &&
        e1?.fumante == e2?.fumante &&
        e1?.cargoFuncao == e2?.cargoFuncao &&
        e1?.formacao == e2?.formacao &&
        e1?.enderecoInstitucional == e2?.enderecoInstitucional &&
        e1?.cidadeInstitucional == e2?.cidadeInstitucional &&
        e1?.ufInstitucional == e2?.ufInstitucional &&
        e1?.cepInstitucional == e2?.cepInstitucional &&
        e1?.telInstitucional == e2?.telInstitucional &&
        e1?.email == e2?.email &&
        e1?.senha == e2?.senha &&
        e1?.confirmarSenha == e2?.confirmarSenha &&
        e1?.dataNascimento == e2?.dataNascimento &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.dataViagemIda == e2?.dataViagemIda &&
        e1?.horarioViagemIda == e2?.horarioViagemIda &&
        e1?.origemViagemIda == e2?.origemViagemIda &&
        e1?.destinoViagemIda == e2?.destinoViagemIda &&
        e1?.dataViagemVolta == e2?.dataViagemVolta &&
        e1?.horarioViagemVolta == e2?.horarioViagemVolta &&
        e1?.origemViagemVolta == e2?.origemViagemVolta &&
        e1?.destinoViagemVolta == e2?.destinoViagemVolta &&
        e1?.observacoesViagem == e2?.observacoesViagem &&
        e1?.categoria == e2?.categoria &&
        e1?.passaporte == e2?.passaporte &&
        e1?.tipoDeConta == e2?.tipoDeConta &&
        e1?.intituicaoBancaria == e2?.intituicaoBancaria &&
        e1?.agencia == e2?.agencia &&
        e1?.contaBancaria == e2?.contaBancaria &&
        e1?.instituicaoOutros == e2?.instituicaoOutros &&
        e1?.lgpd == e2?.lgpd &&
        e1?.administrador == e2?.administrador &&
        e1?.codigoDeVerificacao == e2?.codigoDeVerificacao &&
        e1?.statusPassagem == e2?.statusPassagem &&
        e1?.admStatus == e2?.admStatus &&
        listEquality.equals(e1?.passagem, e2?.passagem) &&
        e1?.bilhetePassagem == e2?.bilhetePassagem;
  }

  @override
  int hash(CadastroRecord? e) => const ListEquality().hash([
        e?.unidade,
        e?.estadoUnidade,
        e?.foto,
        e?.nomeCompleto,
        e?.rg,
        e?.orgaoExpedidor,
        e?.ufRG,
        e?.estadoCivil,
        e?.cpf,
        e?.enderecoResidencial,
        e?.cidade,
        e?.ufResidencial,
        e?.cep,
        e?.celular,
        e?.sexo,
        e?.fumante,
        e?.cargoFuncao,
        e?.formacao,
        e?.enderecoInstitucional,
        e?.cidadeInstitucional,
        e?.ufInstitucional,
        e?.cepInstitucional,
        e?.telInstitucional,
        e?.email,
        e?.senha,
        e?.confirmarSenha,
        e?.dataNascimento,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.dataViagemIda,
        e?.horarioViagemIda,
        e?.origemViagemIda,
        e?.destinoViagemIda,
        e?.dataViagemVolta,
        e?.horarioViagemVolta,
        e?.origemViagemVolta,
        e?.destinoViagemVolta,
        e?.observacoesViagem,
        e?.categoria,
        e?.passaporte,
        e?.tipoDeConta,
        e?.intituicaoBancaria,
        e?.agencia,
        e?.contaBancaria,
        e?.instituicaoOutros,
        e?.lgpd,
        e?.administrador,
        e?.codigoDeVerificacao,
        e?.statusPassagem,
        e?.admStatus,
        e?.passagem,
        e?.bilhetePassagem
      ]);

  @override
  bool isValidKey(Object? o) => o is CadastroRecord;
}
