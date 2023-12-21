import 'package:checkout_app/Feauters/checkout/presentation/views/my_cart_view.dart';
import 'package:checkout_app/Feauters/checkout/presentation/views/payment_details_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String kPaymentDetailsView = '/paymentDetailsView';
  static GoRouter routes = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyCartView(),
    ),
    GoRoute(
      path: kPaymentDetailsView,
      builder: (context, state) => const PaymentDetailsView(),
    ),
  ]);
}
