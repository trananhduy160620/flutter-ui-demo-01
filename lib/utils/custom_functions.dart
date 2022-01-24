import 'package:intl/intl.dart';

String formatConcurrency(num amount, {int decimalCount = 0}) {
  final formatConcurrency = NumberFormat.simpleCurrency(decimalDigits: decimalCount);
  return formatConcurrency.format(amount);
}