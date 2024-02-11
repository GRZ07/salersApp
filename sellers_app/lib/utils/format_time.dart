import 'package:intl/intl.dart';

String formatTime(String timeString) {
    final dateTime = DateTime.parse(timeString);
    final formattedTime = DateFormat('h:mm a').format(dateTime);
    return formattedTime;
  }
