import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EstadoRecord extends FirestoreRecord {
  EstadoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "output" field.
  String? _output;
  String get output => _output ?? '';
  bool hasOutput() => _output != null;

  // "estadoref" field.
  String? _estadoref;
  String get estadoref => _estadoref ?? '';
  bool hasEstadoref() => _estadoref != null;

  // "vagasRef" field.
  int? _vagasRef;
  int get vagasRef => _vagasRef ?? 0;
  bool hasVagasRef() => _vagasRef != null;

  // "ordemEstado" field.
  String? _ordemEstado;
  String get ordemEstado => _ordemEstado ?? '';
  bool hasOrdemEstado() => _ordemEstado != null;

  void _initializeFields() {
    _output = snapshotData['output'] as String?;
    _estadoref = snapshotData['estadoref'] as String?;
    _vagasRef = castToType<int>(snapshotData['vagasRef']);
    _ordemEstado = snapshotData['ordemEstado'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('estado');

  static Stream<EstadoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EstadoRecord.fromSnapshot(s));

  static Future<EstadoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EstadoRecord.fromSnapshot(s));

  static EstadoRecord fromSnapshot(DocumentSnapshot snapshot) => EstadoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EstadoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EstadoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EstadoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EstadoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEstadoRecordData({
  String? output,
  String? estadoref,
  int? vagasRef,
  String? ordemEstado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'output': output,
      'estadoref': estadoref,
      'vagasRef': vagasRef,
      'ordemEstado': ordemEstado,
    }.withoutNulls,
  );

  return firestoreData;
}

class EstadoRecordDocumentEquality implements Equality<EstadoRecord> {
  const EstadoRecordDocumentEquality();

  @override
  bool equals(EstadoRecord? e1, EstadoRecord? e2) {
    return e1?.output == e2?.output &&
        e1?.estadoref == e2?.estadoref &&
        e1?.vagasRef == e2?.vagasRef &&
        e1?.ordemEstado == e2?.ordemEstado;
  }

  @override
  int hash(EstadoRecord? e) => const ListEquality()
      .hash([e?.output, e?.estadoref, e?.vagasRef, e?.ordemEstado]);

  @override
  bool isValidKey(Object? o) => o is EstadoRecord;
}
