import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriaCitasRecord extends FirestoreRecord {
  CategoriaCitasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "especialidad" field.
  String? _especialidad;
  String get especialidad => _especialidad ?? '';
  bool hasEspecialidad() => _especialidad != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  void _initializeFields() {
    _especialidad = snapshotData['especialidad'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _bio = snapshotData['bio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CategoriaCitas');

  static Stream<CategoriaCitasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoriaCitasRecord.fromSnapshot(s));

  static Future<CategoriaCitasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoriaCitasRecord.fromSnapshot(s));

  static CategoriaCitasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoriaCitasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoriaCitasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoriaCitasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoriaCitasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoriaCitasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoriaCitasRecordData({
  String? especialidad,
  String? imagen,
  String? bio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'especialidad': especialidad,
      'imagen': imagen,
      'bio': bio,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoriaCitasRecordDocumentEquality
    implements Equality<CategoriaCitasRecord> {
  const CategoriaCitasRecordDocumentEquality();

  @override
  bool equals(CategoriaCitasRecord? e1, CategoriaCitasRecord? e2) {
    return e1?.especialidad == e2?.especialidad &&
        e1?.imagen == e2?.imagen &&
        e1?.bio == e2?.bio;
  }

  @override
  int hash(CategoriaCitasRecord? e) =>
      const ListEquality().hash([e?.especialidad, e?.imagen, e?.bio]);

  @override
  bool isValidKey(Object? o) => o is CategoriaCitasRecord;
}
