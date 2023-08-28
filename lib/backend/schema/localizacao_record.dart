import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocalizacaoRecord extends FirestoreRecord {
  LocalizacaoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "local" field.
  LatLng? _local;
  LatLng? get local => _local;
  bool hasLocal() => _local != null;

  void _initializeFields() {
    _local = snapshotData['local'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('localizacao');

  static Stream<LocalizacaoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocalizacaoRecord.fromSnapshot(s));

  static Future<LocalizacaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LocalizacaoRecord.fromSnapshot(s));

  static LocalizacaoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LocalizacaoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocalizacaoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocalizacaoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocalizacaoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LocalizacaoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLocalizacaoRecordData({
  LatLng? local,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'local': local,
    }.withoutNulls,
  );

  return firestoreData;
}

class LocalizacaoRecordDocumentEquality implements Equality<LocalizacaoRecord> {
  const LocalizacaoRecordDocumentEquality();

  @override
  bool equals(LocalizacaoRecord? e1, LocalizacaoRecord? e2) {
    return e1?.local == e2?.local;
  }

  @override
  int hash(LocalizacaoRecord? e) => const ListEquality().hash([e?.local]);

  @override
  bool isValidKey(Object? o) => o is LocalizacaoRecord;
}
