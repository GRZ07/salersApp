String getOrderStatus(String status) {
    switch (status) {
      case "awaiting":
        return "جاري الانتظار";
      case "confirming":
        return "قيد التأكيد";
      case "done":
        return "تم الانتهاء";
      case "confirmed":
        return "تم التأكيد";
      case "testing":
        return "جاري الاختبار";
      case "canceled":
        return "تم الإلغاء";
      case "returningItem":
        return "مسترجع";
      default:
        return "غير معروف"; // You can customize this message
    }
  }