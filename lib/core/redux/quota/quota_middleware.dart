import 'package:formatura_abc/core/networking/abc_graduation_api.dart';
import 'package:formatura_abc/core/redux/_common/common_actions.dart';
import 'package:formatura_abc/core/redux/app/app_state.dart';
import 'package:formatura_abc/core/redux/quota/quota_actions.dart';
import 'package:redux/redux.dart';

class QuotaMiddleware extends MiddlewareClass<AppState> {

  final ABCGraduationApi api;
  QuotaMiddleware(this.api);

  @override
  Future<void> call(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is InitAction) {
      await _fetchQuotas(next);
    }
  }

  Future<void> _fetchQuotas(NextDispatcher next) async {
    next(RequestingQuotasAction());
    try {
      final quotas = await api.fetchQuotas();
      next(ReceivedQuotasAction(quotas));
    } catch (e) {
      next(ErrorLoadingQuotasAction());
    }
  }

}