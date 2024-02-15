import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    final userData = await fetchUserData();
    final Map<String, dynamic> userMap = json.decode(userData);
    final userId = userMap['id'];

    final userOrdersData = await fetchUserOrders(userId);
    final List<dynamic> userOrders = json.decode(userOrdersData);

    double total = 0.0;

    for (var order in userOrders) {
      final productPriceData = await fetchProductPrice(order);
      final double productPrice = double.parse(productPriceData);
      total += productPrice;
    }

    return total;
  } catch (error) {
    return -1;
  }
}
