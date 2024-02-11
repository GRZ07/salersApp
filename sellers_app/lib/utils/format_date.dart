import 'package:intl/intl.dart';

String formatDate(String dateString) {
    final dateTime = DateTime.parse(dateString);
    final formattedDate = DateFormat('yyyy/M/d').format(dateTime);
    return formattedDate;
  }