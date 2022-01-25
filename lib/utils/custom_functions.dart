import 'package:intl/intl.dart';

// format tiền tệ, example 200000 => $200,000
String formatConcurrency(num amount, {int decimalCount = 0}) {
  final formatConcurrency = NumberFormat.simpleCurrency(decimalDigits: decimalCount);
  return formatConcurrency.format(amount);
}