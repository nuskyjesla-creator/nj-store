import 'package:flutter/material.dart';
import 'theme.dart';
import 'navigation_wrapper.dart';
import 'screens/splash_screen.dart';
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/shop_screen.dart';
import 'screens/product_details_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/checkout_screen.dart';
import 'screens/order_confirmation_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/my_orders_screen.dart';

void main() {
  runApp(const NJStoreApp());
}

class NJStoreApp extends StatelessWidget {
  const NJStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NJ STORE',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/signin': (context) => const SignInScreen(),
        '/home': (context) => const NavigationWrapper(),
        '/shop': (context) => const ShopScreen(),
        '/product_details': (context) => const ProductDetailsScreen(),
        '/cart': (context) => const CartScreen(),
        '/checkout': (context) => const CheckoutScreen(),
        '/order_confirmation': (context) => const OrderConfirmationScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/orders': (context) => const MyOrdersScreen(),
        '/signup': (context) => const SignUpScreen(),
      },
    );
  }
}
