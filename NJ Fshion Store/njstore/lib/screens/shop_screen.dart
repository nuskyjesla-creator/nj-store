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
                  imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuCRmp49_HBuTJnFSAtk0PjSUg__k7A-3gqmJzR_Tv0qLLrYLRMSM8Wa1pv8-FZHSsio27f3Mp4GIY86RwPiOeO9pWWAZDSQz8wtEiNzdoDKRcnsTUQ4y20yuykml9BQ0h8u1xBkTrsFtXMMcAjFoO3IqNjCr6redSUY6vWmGx63t_b-rlQXv50FV-uFEO_uU5lYrj25qvN0M-NKyB83H-SR0XeQuwCubp-6rbknxx_JU2lQgXuVa7L4KmKvpXHr6HyZr7RO1JsCaSs',
                ),
                const ProductCard(
                  title: 'Overcoat',
                  price: '\$450.00',
                  imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuCCh3BkWpSxkA4MhVXMLY-5tZ6s0cFgpIm02URg4_D9syX2h03YGQSSyuxDj7iAfByfdFCIYhe_SQ7uVgh3_OIAU0PgToJeNJC6U_IkjiDvk4wDJzoNndzS9di43Q0V-0Q0lvghWdz0HPp84uK2J_9GbCevx89e41QMTBjwx6MPy9Lh3VkDZs4cx8zZSJrhWgge3YuIwFnrlyucQlme8M29dlhq5gkCDJ8-tRleLLK_RtLZK99yzQdgsyPiLDb3geSfIdiKKLjuR3E',
                ),
                const ProductCard(
                  title: 'Pleated Trouser',
                  price: '\$210.00',
                  imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuCsyzOLpeubVOYoRiweoUhRNsapHIjaQun_I11Nn2wfAqRrAksReCjIo3o6N54BTMabe89qAKSTBJ06wcvO2ftGiUj2JYwbFa82MrZkSnVs9rCvTo-SiF7sp-CbO8cpzZS6LyEoUwcHAFnHpjF9m4H5EHwHuiM4z3JlIgZ3PgVNzerjcDL0cjN7eEphJPV8gqXk_HH0x6REyydGRkR5N7ISBAho5aemz6yCwPJGx5PguC_AskepnMBNdMAr427J7-sY90EE-7U23k8',
                ),
                const ProductCard(
                  title: 'Flora Midi',
                  price: '\$295.00',
                  imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuDpfGZXtpxJBqTu5go9zJhujiV-6KZ4TnR5lUwiOUjfhlQcv4l4aFq8p2D8lDFmFg36J9ci3g7oaHhXKdgqQXGWjwEA7RukHR5h_c_HY3cwOW734icy15j5TA9RiHSpO4UoIL7kP60ffB7yci46B8piMe2iHGkgIPrT5fQKZmUkhh4A7EQw6igSh1vhUWVePhwld1hnqs-OH_BCU62E9VGJa9aUpDr1xbRuXYnHqiiSt5gaJ38YitpuJg14X4pDcIuEl9vXDgZItuk',
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
