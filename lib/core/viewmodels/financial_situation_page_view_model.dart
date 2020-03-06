import 'package:formatura_abc/core/models/loading_status.dart';
import 'package:formatura_abc/core/models/quota.dart';
import 'package:formatura_abc/core/redux/app/app_state.dart';
import 'package:formatura_abc/core/redux/quota/quota_state.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

class FinancialSituationPageViewModel {

  final LoadingStatus status;
  final List<Quota> quotas;

  FinancialSituationPageViewModel({
    @required this.status,
    @required this.quotas,
  });

  static FinancialSituationPageViewModel fromStore(
      Store<AppState> store,
  ) {
      final QuotaState quotaState = store.state.quotaState;
      return FinancialSituationPageViewModel(
          status: quotaState.loadingQuotasStatus,
          quotas: quotaState.quotas,
      );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is FinancialSituationPageViewModel &&
              runtimeType == other.runtimeType &&
              status == other.status &&
              quotas == other.quotas;

  @override
  int get hashCode => status.hashCode ^ quotas.hashCode;
}