import 'package:formatura_abc/core/models/loading_status.dart';
import 'package:formatura_abc/core/redux/quota/quota_actions.dart';
import 'package:formatura_abc/core/redux/quota/quota_state.dart';

QuotaState quotaReducer(QuotaState state, dynamic action) {
  if (action is RequestingQuotasAction) {
    return state.copyWith(loadingQuotasStatus: LoadingStatus.loading);
  } else if (action is ReceivedQuotasAction) {
    return state.copyWith(
      loadingQuotasStatus: LoadingStatus.success,
      quotas: action.quotas,
    );
  } else if (action is ErrorLoadingQuotasAction) {
    return state.copyWith(loadingQuotasStatus: LoadingStatus.error);
  }
  return state;
}
