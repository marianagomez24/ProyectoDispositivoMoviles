import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReservacionesRecord extends FirestoreRecord {
  ReservacionesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "especialidadCita" field.
  String? _especialidadCita;
  String get especialidadCita => _especialidadCita ?? '';
  bool hasEspecialidadCita() => _especialidadCita != null;

  // "nombreUsuario" field.
  String? _nombreUsuario;
  String get nombreUsuario => _nombreUsuario ?? '';
  bool hasNombreUsuario() => _nombreUsuario != null;

  // "especialidadImagen" field.
  String? _especialidadImagen;
  String get especialidadImagen => _especialidadImagen ?? '';
  bool hasEspecialidadImagen() => _especialidadImagen != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "hora" field.
  String? _hora;
  String get hora => _hora ?? '';
  bool hasHora() => _hora != null;

  // "email_usuario" field.
  String? _emailUsuario;
  String get emailUsuario => _emailUsuario ?? '';
  bool hasEmailUsuario() => _emailUsuario != null;

  // "idCita" field.
  int? _idCita;
  int get idCita => _idCita ?? 0;
  bool hasIdCita() => _idCita != null;

  void _initializeFields() {
    _especialidadCita = snapshotData['especialidadCita'] as String?;
    _nombreUsuario = snapshotData['nombreUsuario'] as String?;
    _especialidadImagen = snapshotData['especialidadImagen'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _hora = snapshotData['hora'] as String?;
    _emailUsuario = snapshotData['email_usuario'] as String?;
    _idCita = castToType<int>(snapshotData['idCita']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reservaciones');

  static Stream<ReservacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReservacionesRecord.fromSnapshot(s));

  static Future<ReservacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReservacionesRecord.fromSnapshot(s));

  static ReservacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReservacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReservacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReservacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReservacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReservacionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReservacionesRecordData({
  String? especialidadCita,
  String? nombreUsuario,
  String? especialidadImagen,
  DateTime? fecha,
  String? hora,
  String? emailUsuario,
  int? idCita,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'especialidadCita': especialidadCita,
      'nombreUsuario': nombreUsuario,
      'especialidadImagen': especialidadImagen,
      'fecha': fecha,
      'hora': hora,
      'email_usuario': emailUsuario,
      'idCita': idCita,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReservacionesRecordDocumentEquality
    implements Equality<ReservacionesRecord> {
  const ReservacionesRecordDocumentEquality();

  @override
  bool equals(ReservacionesRecord? e1, ReservacionesRecord? e2) {
    return e1?.especialidadCita == e2?.especialidadCita &&
        e1?.nombreUsuario == e2?.nombreUsuario &&
        e1?.especialidadImagen == e2?.especialidadImagen &&
        e1?.fecha == e2?.fecha &&
        e1?.hora == e2?.hora &&
        e1?.emailUsuario == e2?.emailUsuario &&
        e1?.idCita == e2?.idCita;
  }

  @override
  int hash(ReservacionesRecord? e) => const ListEquality().hash([
        e?.especialidadCita,
        e?.nombreUsuario,
        e?.especialidadImagen,
        e?.fecha,
        e?.hora,
        e?.emailUsuario,
        e?.idCita
      ]);

  @override
  bool isValidKey(Object? o) => o is ReservacionesRecord;
}
