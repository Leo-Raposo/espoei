// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!

// code created by https://www.youtube.com/@flutterflowexpert
// video - https://www.youtube.com/watch?v=1FKlfexT9Zw
// widgets - Cg9Db2x1bW5fa3lsY2xoMWoSxAIKD0J1dHRvbl9oZjYzZnFzdhgJIqwBSn0KKQoRRG93bmxvYWQgQ1NWIGZpbGU6Bgj/////D0AFegoSCDRsenNybjZuGQAAAAAAAABAKQAAAAAAAPB/MQAAAAAAAERASQAAAAAAAPA/UgIQAVoCCAByJAkAAAAAAAAgQBEAAAAAAAAgQBkAAAAAAAAgQCEAAAAAAAAgQFokCQAAAAAAACRAEQAAAAAAACRAGQAAAAAAACRAIQAAAAAAACRAegIYA/oDAGIAigF9EncKCHEyZ3d6ZWxrEhCqAgg1bTBpeGUwabIDAggDKlkKCDV0b3k3N282Ek3SAT8KIAoXZG93bmxvYWRDb2xsZWN0aW9uQXNDU1YSBTdmOHVwEhsSGQgEEhFTY2FmZm9sZF9wdTRnczAwbEICEgCqAgg1MGpqbGJyeRoCCAEYBCIFIgD6AwA=
// replace - [{"Collection name": "Cars"}, {"Field name 1": "name"}, {"Field name 2": "brand"}]
// support my work - https://github.com/sponsors/bulgariamitko

import 'dart:convert' show utf8;
import 'package:download/download.dart';

Future downloadCollectionAsCSV(List<CadastroRecord>? docs) async {
  docs = docs ?? [];

  // Add the company name and address as a header
  String companyName = "ExpoEPI";
  String companyAddress = "Passagens";
  String header = "$companyName,$companyAddress\n\n";

  String fileContent = header +
      "Instituição, Estado Instituição, Outros, Categoria, Nome Completo, Data de Nascimento, e-mail, CPF, Passaporte, RG, Orgão Expedidor, UF RG, Estado Civil, Endereço Residencial, Cidade, UF Residencial, CEP, Celular, Sexo, Fumante, Cargo, Formação, Endereço Institucional, Cidade Institucional, UF Institucional, CEP Institucional, Tel. Institucional, Data da Viagem - IDA, Horario da Viagem - IDA, Origem da Viagem - IDA, Destino da Viagem - IDA, Data da Viagem - VOLTA, Horario da Viagem - VOLTA, Origem da Viagem - VOLTA, Destino da Viagem - VOLTA, Observações da Viagem, Tipo de Conta, Instituição Bancária, Agencia, Conta Bancaria, Foto ";

  docs.asMap().forEach((index, record) => fileContent = fileContent +
      "\n" +
      record.unidade.toString() +
      "," +
      record.estadoUnidade.toString() +
      "," +
      record.instituicaoOutros.toString() +
      "," +
      record.categoria.toString() +
      "," +
      record.nomeCompleto.toString() +
      "," +
      record.dataNascimento.toString() +
      "," +
      record.email.toString() +
      "," +
      record.cpf.toString() +
      "," +
      record.passaporte.toString() +
      "," +
      record.rg.toString() +
      "," +
      record.orgaoExpedidor.toString() +
      "," +
      record.ufRG.toString() +
      "," +
      record.estadoCivil.toString() +
      "," +
      record.enderecoResidencial.toString() +
      "," +
      record.cidade.toString() +
      "," +
      record.ufResidencial.toString() +
      "," +
      record.cep.toString() +
      "," +
      record.celular.toString() +
      "," +
      record.sexo.toString() +
      "," +
      record.fumante.toString() +
      "," +
      record.cargoFuncao.toString() +
      "," +
      record.formacao.toString() +
      "," +
      record.enderecoInstitucional.toString() +
      "," +
      record.cidadeInstitucional.toString() +
      "," +
      record.ufInstitucional.toString() +
      "," +
      record.cepInstitucional.toString() +
      "," +
      record.telInstitucional.toString() +
      "," +
      record.dataViagemIda.toString() +
      "," +
      record.horarioViagemIda.toString() +
      "," +
      record.origemViagemIda.toString() +
      "," +
      record.destinoViagemIda.toString() +
      "," +
      record.dataViagemVolta.toString() +
      "," +
      record.horarioViagemVolta.toString() +
      "," +
      record.origemViagemVolta.toString() +
      "," +
      record.destinoViagemVolta.toString() +
      "," +
      record.observacoesViagem.toString() +
      "," +
      record.tipoDeConta.toString() +
      "," +
      record.intituicaoBancaria.toString() +
      "," +
      record.agencia.toString() +
      "," +
      record.contaBancaria.toString() +
      "," +
      record.foto.toString());

  // Example of date formating thanks to Edmund Ong
  // DateFormat('dd-MM-yyyy').format(record.attendanceDate!) +
  //     "," +
  //     DateFormat('HH:mm').format(record.timeIn!) +
  //     "," +

  final fileName = "ExpoEpiDB" + DateTime.now().toString() + ".csv";

  // Encode the string as a List<int> of UTF-8 bytes
  var bytes = utf8.encode(fileContent);

  final stream = Stream.fromIterable(bytes);
  return download(stream, fileName);
}
