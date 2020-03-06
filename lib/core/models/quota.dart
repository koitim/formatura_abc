import 'package:formatura_abc/core/uuid.dart';

enum QuotaListStatus {
  quotaDue,
  quotaOverdue,
  quotaPaid,
  quotaPendingConfirmation,
}

class Quota {

  final String id;
  final QuotaListStatus status;
  final DateTime date;
  final double value;

  Quota(
      this.date, this.value, {this.status = QuotaListStatus.quotaDue, String id})
      : id = id ?? Uuid().generateV4();

  // TODO: Verificar a necessidade de implementar o copyWith
  Quota copyWith({String id, QuotaListStatus status, DateTime date, double value}) {
    return Quota(
      date ?? this.date,
      value ?? this.value,
      status: status ?? this.status,
      id: id ?? this.id,
    );
  }

  @override
  int get hashCode =>
      status.hashCode ^ date.hashCode ^ value.hashCode ^ id.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Quota &&
              runtimeType == other.runtimeType &&
              status == other.status &&
              date == other.date &&
              value == other.value &&
              id == other.id;

  @override
  String toString() {
    return 'Quota{status: $status, data: $date, valor: $value}';
  }

// TODO: Verificar a necessidade de implementar o entity
/*
  QuotaEntity toEntity() {
    return QuotaEntity(task, id, note, complete);
  }

  static Quota fromEntity(QuotaEntity entity) {
    return Quota(
      entity.task,
      complete: entity.complete ?? false,
      note: entity.note,
      id: entity.id ?? Uuid().generateV4(),
    );
  }
 */
}