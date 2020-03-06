
import 'package:formatura_abc/core/models/loading_status.dart';
import 'package:formatura_abc/core/models/quota.dart';
import 'package:meta/meta.dart';

@immutable
class QuotaState {
  QuotaState({
    @required this.loadingQuotasStatus,
    @required this.quotas,
  });

  final LoadingStatus loadingQuotasStatus;
  final List<Quota> quotas;

  factory QuotaState.initial() {
    return QuotaState(
      loadingQuotasStatus: LoadingStatus.idle,
      quotas: [],
    );
  }

  QuotaState copyWith({
    LoadingStatus loadingQuotasStatus,
    List<Quota> quotas,
  }) {
    return QuotaState(
      loadingQuotasStatus: loadingQuotasStatus ?? this.loadingQuotasStatus,
      quotas: quotas ?? this.quotas,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is QuotaState &&
              runtimeType == other.runtimeType &&
              loadingQuotasStatus == other.loadingQuotasStatus &&
              quotas == other.quotas;

  @override
  int get hashCode =>
      loadingQuotasStatus.hashCode ^
      quotas.hashCode;
}
