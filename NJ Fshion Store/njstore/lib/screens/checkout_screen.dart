import 'package:flutter/material.dart';
import '../theme.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Shipping Address',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _buildTextField('Full Name', 'Alexandra Sterling'),
            const SizedBox(height: 12),
            _buildTextField('Street Address', '124 Boutique Lane'),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(child: _buildTextField('City', 'Paris')),
                const SizedBox(width: 12),
                Expanded(child: _buildTextField('Postal Code', '75001')),
              ],
            ),
            
            const SizedBox(height: 32),
            
            const Text(
              'Payment Method',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.primaryContainer.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.primary),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                    child: const Icon(Icons.credit_card, color: AppColors.primary),
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Credit Card', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('**** **** **** 4242', style: TextStyle(fontSize: 12, color: AppColors.onSurfaceVariant)),
                      ],
                    ),
                  ),
                  const Icon(Icons.check_circle, color: AppColors.primary),
                ],
              ),
            ),
            
            const SizedBox(height: 32),
            
            const Text(
              'Order Summary',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _buildSummaryRow('Subtotal', '\$280.00'),
            _buildSummaryRow('Shipping', 'Free', isFree: true),
            const Divider(height: 32),
            _buildSummaryRow('Total', '\$280.00', isTotal: true),
            
            const SizedBox(height: 48),
            
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/order_confirmation'),
                child: const Text('PLACE ORDER'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.onSurfaceVariant)),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            hintText: hint,
            filled: true,
            fillColor: AppColors.surfaceContainerLowest,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: const BorderSide(color: AppColors.outlineVariant),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          ),
        ),
      ],
    );
  }

  Widget _buildSummaryRow(String label, String value, {bool isFree = false, bool isTotal = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: isTotal ? 18 : 14, fontWeight: isTotal ? FontWeight.bold : FontWeight.normal, color: isTotal ? AppColors.onSurface : AppColors.onSurfaceVariant)),
          Text(value, style: TextStyle(fontSize: isTotal ? 18 : 14, fontWeight: FontWeight.bold, color: isFree ? AppColors.primary : (isTotal ? AppColors.primary : AppColors.onSurface))),
        ],
      ),
    );
  }
}
