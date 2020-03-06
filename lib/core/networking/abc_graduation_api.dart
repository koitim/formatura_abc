import 'package:formatura_abc/core/models/quota.dart';

class ABCGraduationApi {
  
  Future<List<Quota>> fetchQuotas() async {
    //TODO: Implementar busca dos dados no Firebase
    List<Quota> list = [];
    list.add(Quota(DateTime(2019, 02, 02), 500, status: QuotaListStatus.quotaPaid));
    list.add(Quota(DateTime(2019, 03, 02), 500, status: QuotaListStatus.quotaPaid));
    list.add(Quota(DateTime(2019, 04, 02), 350, status: QuotaListStatus.quotaPaid));
    list.add(Quota(DateTime(2019, 05, 02), 650, status: QuotaListStatus.quotaPaid));
    list.add(Quota(DateTime(2019, 06, 02), 300, status: QuotaListStatus.quotaOverdue));
    list.add(Quota(DateTime(2019, 06, 02), 200, status: QuotaListStatus.quotaPendingConfirmation));
    list.add(Quota(DateTime(2019, 07, 02), 500, status: QuotaListStatus.quotaDue));
    list.add(Quota(DateTime(2019, 08, 02), 500, status: QuotaListStatus.quotaDue));
    list.add(Quota(DateTime(2019, 09, 02), 500, status: QuotaListStatus.quotaDue));
    list.add(Quota(DateTime(2019, 10, 02), 500, status: QuotaListStatus.quotaDue));
    list.add(Quota(DateTime(2019, 11, 02), 500, status: QuotaListStatus.quotaDue));
    return list;
  }
}