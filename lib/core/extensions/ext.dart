import 'package:intl/intl.dart';

extension StringExtension on String {
  String capitalize() {
    if (isNotEmpty) {
      return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
    }
    return '';
  }

  String toTitleCase() {
    if (isNotEmpty) {
      return replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.capitalize()).join(' ');
    }
    return '';
  }

  String formatToIdr(
    num? value, {
    int decimalDigits = 0,
    String? whenNullValue,
    bool showZero = true,
  }) {
    if (value == null) {
      if (whenNullValue != null) {
        return '-';
      }
    }
    if (showZero == false && (value ?? 0.0).toDouble() == 0.0) {
      return '-';
    }
    return NumberFormat.simpleCurrency(
      locale: 'id_ID',
      decimalDigits: decimalDigits,
      name: "Rp ",
    ).format(
      value ?? 0,
    );
  }
}
