import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SenhaCadastroRecord extends FirestoreRecord {
  SenhaCadastroRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "senha1" field.
  String? _senha1;
  String get senha1 => _senha1 ?? '';
  bool hasSenha1() => _senha1 != null;

  void _initializeFields() {
    _senha1 = snapshotData['senha1'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('senhaCadastro');

  static Stream<SenhaCadastroRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SenhaCadastroRecord.fromSnapshot(s));

  static Future<SenhaCadastroRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SenhaCadastroRecord.fromSnapshot(s));

  static SenhaCadastroRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SenhaCadastroRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SenhaCadastroRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SenhaCadastroRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SenhaCadastroRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SenhaCadastroRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSenhaCadastroRecordData({
  String? senha1,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'senha1': senha1,
    }.withoutNulls,
  );

  return firestoreData;
}

class SenhaCadastroRecordDocumentEquality
    implements Equality<SenhaCadastroRecord> {
  const SenhaCadastroRecordDocumentEquality();

  @override
  bool equals(SenhaCadastroRecord? e1, SenhaCadastroRecord? e2) {
    return e1?.senha1 == e2?.senha1;
  }

  @override
  int hash(SenhaCadastroRecord? e) => const ListEquality().hash([e?.senha1]);

  @override
  bool isValidKey(Object? o) => o is SenhaCadastroRecord;
}
