import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UnidadeRecord extends FirestoreRecord {
  UnidadeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "output" field.
  String? _output;
  String get output => _output ?? '';
  bool hasOutput() => _output != null;

  // "ordemUnidade" field.
  String? _ordemUnidade;
  String get ordemUnidade => _ordemUnidade ?? '';
  bool hasOrdemUnidade() => _ordemUnidade != null;

  void _initializeFields() {
    _output = snapshotData['output'] as String?;
    _ordemUnidade = snapshotData['ordemUnidade'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('unidade');

  static Stream<UnidadeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UnidadeRecord.fromSnapshot(s));

  static Future<UnidadeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UnidadeRecord.fromSnapshot(s));

  static UnidadeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UnidadeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UnidadeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UnidadeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UnidadeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UnidadeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUnidadeRecordData({
  String? output,
  String? ordemUnidade,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'output': output,
      'ordemUnidade': ordemUnidade,
    }.withoutNulls,
  );

  return firestoreData;
}

class UnidadeRecordDocumentEquality implements Equality<UnidadeRecord> {
  const UnidadeRecordDocumentEquality();

  @override
  bool equals(UnidadeRecord? e1, UnidadeRecord? e2) {
    return e1?.output == e2?.output && e1?.ordemUnidade == e2?.ordemUnidade;
  }

  @override
  int hash(UnidadeRecord? e) =>
      const ListEquality().hash([e?.output, e?.ordemUnidade]);

  @override
  bool isValidKey(Object? o) => o is UnidadeRecord;
}
