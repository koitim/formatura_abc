import 'package:formatura_abc/core/redux/app/app_state.dart';
import 'package:formatura_abc/core/redux/quota/quota_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    quotaState: quotaReducer(state.quotaState, action),
  );
}