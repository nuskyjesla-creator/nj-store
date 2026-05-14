import 'package:flutter/material.dart';
import '../theme.dart';

class OrderConfirmationScreen extends StatelessWidget {
  const OrderConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: AppColors.primaryContainer,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.check_circle, color: AppColors.primary, size: 64),
              ),
              const SizedBox(height: 32),
              const Text(
                'Thank You!',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Your order has been placed successfully.',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.onSurfaceVariant, fontSize: 16),
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: AppColors.surfaceContainer,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Text(
                  'ORDER #NJ-882910',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, letterSpacing: 1.0),
                ),
              ),
              const SizedBox(height: 48),
              _buildInfoRow(Icons.local_shipping_outlined, 'DELIVERY DETAILS', 'Arriving by Wed, 25 Oct\nExpress Premium Shipping'),
              const SizedBox(height: 24),
              _buildInfoRow(Icons.location_on_outlined, 'SHIPPING TO', 'Alex Sterling\n120 Boutique Lane, Suite 4\nNew York, NY 10012'),
              const SizedBox(height: 48),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false),
                  child: const Text('CONTINUE SHOPPING'),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('DOWNLOAD RECEIPT'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String title, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: AppColors.primary, size: 24),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: AppColors.primary, letterSpacing: 1.0)),
              const SizedBox(height: 4),
              Text(value, style: const TextStyle(height: 1.5)),
            ],
          ),
        ),
      ],
    );
  }
}
