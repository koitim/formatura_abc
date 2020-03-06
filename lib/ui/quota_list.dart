import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:formatura_abc/core/models/quota.dart';
import 'package:formatura_abc/core/redux/app/app_state.dart';
import 'package:formatura_abc/core/viewmodels/financial_situation_page_view_model.dart';
import 'package:formatura_abc/ui/payment_history_line.dart';
import 'package:formatura_abc/ui/totalizing_line.dart';

class QuotaList extends StatelessWidget {
  /*@override
  Widget build(BuildContext context) {
    return AppLoading(builder: (context, loading) {
      return loading
          ? LoadingIndicator(key: ABCGraduationKeys.quotasLoading)
          : _buildView();
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, FinancialSituationPageViewModel>(
      distinct: true,
      //onInit: (store) => store.dispatch(action),
      converter: (store) => FinancialSituationPageViewModel.fromStore(store),
      builder: (_, viewModel) => FinancialSituationPageContent(viewModel),
    );
  }
}

class FinancialSituationPageContent extends StatelessWidget {
  final FinancialSituationPageViewModel viewModel;

  FinancialSituationPageContent(
    this.viewModel,
  );

  @override
  Widget build(BuildContext context) {
    final quotas = viewModel.quotas;
    final totalPago = quotas
        .map((quota) =>
            quota.status == QuotaListStatus.quotaPaid ? quota.value : 0)
        .reduce((v, e) => v + e);
    print(totalPago.toString());
    final totalAtrasado = quotas
        .map((quota) =>
            quota.status == QuotaListStatus.quotaOverdue ? quota.value : 0)
        .reduce((v, e) => v + e);
    print(totalAtrasado.toString());
    final totalAVencer = quotas
        .map((quota) =>
            quota.status == QuotaListStatus.quotaDue ? quota.value : 0)
        .reduce((v, e) => v + e);
    print(totalAVencer.toString());
    final totalPendenteConfirmacao = quotas
        .map((quota) => quota.status == QuotaListStatus.quotaPendingConfirmation
            ? quota.value
            : 0)
        .reduce((v, e) => v + e);
    print(totalPendenteConfirmacao.toString());

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DefaultTextStyle(
        style: _descTextStyle,
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black38),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(8))),
                  child: Column(
                    children: <Widget>[
                      TotalizingLine(
                          'Total:',
                          'RS ${(totalPago + totalAVencer + totalAtrasado + totalPendenteConfirmacao).toString()}',
                          Colors.black),
                      TotalizingLine(
                          'A pagar:',
                          'RS ${(totalAVencer + totalAtrasado + totalPendenteConfirmacao).toString()}',
                          Colors.red),
                      TotalizingLine(
                          'Pago:', 'RS ${totalPago.toString()}', Colors.green),
                      TotalizingLine(
                          'A confirmar:',
                          'RS ${totalPendenteConfirmacao.toString()}',
                          Colors.orange),
                    ],
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(0, 8.0, 0, 0),
                padding: const EdgeInsets.all(4.0),
                height: 421,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black38),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(8))),
                child: ListView(
                  children: viewModel.quotas.where((quota) {
                    return quota.status !=
                        QuotaListStatus.quotaPendingConfirmation;
                  }).map((quota) {
                    return PaymentHistoryLine(quota);
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final _descTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    fontFamily: 'Roboto',
    letterSpacing: 0.5,
    fontSize: 18,
    height: 2,
  );
}
