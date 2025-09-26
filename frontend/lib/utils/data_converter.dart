import 'package:intl/intl.dart';

class DataConverter {
  /// Converts DateTime → ISO 8601 string
  static String dateTimeToString(DateTime dateTime) {
    return dateTime.toIso8601String();
  }

  /// Converts ISO 8601 string → DateTime
  static DateTime stringToDateTime(String dateTimeStr) {
    return DateTime.parse(dateTimeStr);
  }

  /// Converts a double amount to a formatted currency string
  static String doubleToCurrency(
    double amount, {
    String currencyCode = 'USD',
    String locale = 'en_US',
  }) {
    final format = NumberFormat.currency(
      locale: locale,
      name: currencyCode,
    );
    return format.format(amount);
  }
}