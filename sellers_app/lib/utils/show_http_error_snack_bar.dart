import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

import './show_error_snack_bar.dart';

void showHttpErrorSnackBar({
  required BuildContext ctx,
  required Object err,
  required bool showServerError,
}) {
  if (ScaffoldMessenger.maybeOf(ctx) != null) {
    ScaffoldMessenger.maybeOf(ctx)!.hideCurrentSnackBar();

    if (err is TimeoutException || err is SocketException) {
      showErrorSnackBar(ctx, 'تحقق من اتصالك بالشبكة');
    } else if (showServerError) {
      showErrorSnackBar(ctx, err.toString());
    } else {
      showErrorSnackBar(ctx, 'فشلت العملية، حدث خطأ ما في النظام');
    }
  }
}
