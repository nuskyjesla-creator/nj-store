import 'package:flutter/material.dart';
import '../theme.dart';
import '../widgets/product_card.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NJ STORE'),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.shopping_bag_outlined), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'New Collection',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, letterSpacing: -1),
            ),
            const Text(
              'Curated minimalist essentials.',
              style: TextStyle(color: AppColors.onSurfaceVariant),
            ),
            const SizedBox(height: 24),
            
            // Filters
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildFilterChip('Filters', Icons.tune, isPrimary: true),
                  _buildFilterChip('All Clothing', null),
                  _buildFilterChip('Dresses', null),
                  _buildFilterChip('Outerwear', null),
                ],
              ),
            ),
            
            const SizedBox(height: 32),
            
            // Product Grid
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 24,
              crossAxisSpacing: 20,
              childAspectRatio: 0.65,
              children: [
                const ProductCard(
                  title: 'Silk Blend Knit',
                  price: '\$189.00',
                  /*imageUrl*/ 'assets/images/image_21.jpg',
                ),
                const ProductCard(
                  title: 'Overcoat',
                  price: '\$450.00',
                  /*imageUrl*/ 'assets/images/image_22.jpg',
                ),
                const ProductCard(
                  title: 'Pleated Trouser',
                  price: '\$210.00',
                  /*imageUrl*/ 'assets/images/image_23.jpg',
                ),
                const ProductCard(
                  title: 'Flora Midi',
                  price: '\$295.00',
                  /*imageUrl*/ 'assets/images/image_24.jpg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterChip(String label, IconData? icon, {bool isPrimary = false}) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isPrimary ? AppColors.primary : AppColors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(100),
        border: isPrimary ? null : Border.all(color: AppColors.outlineVariant.withValues(alpha: 0.3)),
      ),
      child: Row(
        children: [
          if (icon != null) ...[
            Icon(icon, size: 18, color: isPrimary ? Colors.white : AppColors.onSurfaceVariant),
            const SizedBox(width: 8),
          ],
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: isPrimary ? Colors.white : AppColors.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
