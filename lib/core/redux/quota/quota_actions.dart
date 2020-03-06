
import 'package:formatura_abc/core/models/quota.dart';

class RequestingQuotasAction {}

class ReceivedQuotasAction {
  ReceivedQuotasAction(this.quotas);
  final List<Quota> quotas;
}

class ErrorLoadingQuotasAction {}
