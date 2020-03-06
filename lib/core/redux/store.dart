import 'package:formatura_abc/core/networking/abc_graduation_api.dart';
import 'package:formatura_abc/core/redux/app/app_reducer.dart';
import 'package:formatura_abc/core/redux/app/app_state.dart';
import 'package:formatura_abc/core/redux/quota/quota_middleware.dart';
import 'package:redux/redux.dart';

Store<AppState> createStore() {

  final abcGraduationApi = ABCGraduationApi();

  return Store(
    appReducer,
    initialState: AppState.initial(),
    distinct: true,
    middleware: [
      QuotaMiddleware(abcGraduationApi),
    ],
  );
}
