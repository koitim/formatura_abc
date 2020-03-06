import 'package:formatura_abc/core/redux/quota/quota_state.dart';
import 'package:meta/meta.dart';

@immutable
class AppState {

  final QuotaState quotaState;
  AppState({
    @required this.quotaState,
  });

  factory AppState.initial() => AppState(
      quotaState: QuotaState.initial(),
  );

  AppState copyWith({
    QuotaState quotaState,
  }) {
    return AppState(
      quotaState: quotaState ?? this.quotaState,
    );
  }

  @override
  int get hashCode =>
      quotaState.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is AppState &&
              runtimeType == other.runtimeType &&
              quotaState == other.quotaState;
}
