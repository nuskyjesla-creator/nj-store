import 'package:flutter/material.dart';
import '../theme.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.primary),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined, color: AppColors.primary),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image Gallery
            AspectRatio(
              aspectRatio: 0.8,
              child: Stack(
                children: [
                  PageView(
                    children: [
                      _buildProductImage('assets/images/image_18.jpg'),
                      _buildProductImage('assets/images/image_19.jpg'),
                    ],
                  ),
                  Positioned(
                    bottom: 24,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(width: 24, height: 4, decoration: BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.circular(2))),
                        const SizedBox(width: 8),
                        Container(width: 8, height: 4, decoration: BoxDecoration(color: Colors.white70, borderRadius: BorderRadius.circular(2))),
                        const SizedBox(width: 8),
                        Container(width: 8, height: 4, decoration: BoxDecoration(color: Colors.white70, borderRadius: BorderRadius.circular(2))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            // Product Info
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'NEW COLLECTION',
                            style: TextStyle(color: AppColors.primary, fontSize: 12, fontWeight: FontWeight.bold, letterSpacing: 1.5),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Aria Linen Midi Dress',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '\$189.00',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.primary),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star, color: AppColors.primary, size: 20),
                          const Icon(Icons.star, color: AppColors.primary, size: 20),
                          const Icon(Icons.star, color: AppColors.primary, size: 20),
                          const Icon(Icons.star, color: AppColors.primary, size: 20),
                          const Icon(Icons.star_half, color: AppColors.primary, size: 20),
                          const SizedBox(width: 8),
                          Text('(48 Reviews)', style: Theme.of(context).textTheme.labelMedium),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  const Divider(),
                  const SizedBox(height: 24),
                  const Text('Product Description', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 12),
                  const Text(
                    'Crafted from 100% sustainably sourced European linen, the Aria Midi Dress features a relaxed silhouette that captures the essence of summer sophistication.',
                    style: TextStyle(color: AppColors.onSurfaceVariant, height: 1.6),
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // Size Selector
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Select Size', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      TextButton(onPressed: () {}, child: const Text('Size Guide')),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: ['XS', 'S', 'M', 'L', 'XL'].map((size) {
                      bool isSelected = size == 'S';
                      return Container(
                        margin: const EdgeInsets.only(right: 12),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        decoration: BoxDecoration(
                          color: isSelected ? AppColors.primaryContainer : Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: isSelected ? AppColors.primary : AppColors.outlineVariant),
                        ),
                        child: Text(
                          size,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: isSelected ? AppColors.onPrimaryContainer : AppColors.onSurfaceVariant,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // Color Selector
                  const Text('Color: Sage Mist', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      _buildColorOption(const Color(0xFFCBD5C0), isSelected: true),
                      _buildColorOption(const Color(0xFFF4E1D2)),
                      _buildColorOption(Colors.white),
                    ],
                  ),
                  
                  const SizedBox(height: 48),
                  
                  // Add to Cart Button
                  SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.shopping_basket_outlined),
                          SizedBox(width: 12),
                          Text('Add to Cart', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 48),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductImage(String url) {
    return Image.asset(url, fit: BoxFit.cover);
  }

  Widget _buildColorOption(Color color, {bool isSelected = false}) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? AppColors.primary : AppColors.outlineVariant, width: isSelected ? 2 : 1),
        boxShadow: isSelected ? [BoxShadow(color: AppColors.primary.withValues(alpha: 0.2), blurRadius: 8, spreadRadius: 2)] : null,
      ),
    );
  }
}
