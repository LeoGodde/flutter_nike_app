import 'package:intl/intl.dart';

extension ToMoney on int {
  String toMoney() {
    //adicionar intl
    return NumberFormat.currency(
            name: 'BRL',
            symbol: 'R\$', //explicar o uso do $ com '\'
            locale: 'pt_BR')
        .format(this);
  }
}
