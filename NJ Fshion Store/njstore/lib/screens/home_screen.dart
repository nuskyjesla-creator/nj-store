import 'package:flutter/material.dart';

import '../theme.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // App Bar
          SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: 0,
            surfaceTintColor: Colors.transparent,
            backgroundColor: AppColors.background.withValues(alpha: 0.8),
            title: Text(
              'NJ STORE',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    letterSpacing: -1,
                    color: const Color(0xFF064E3B),
                  ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search, color: AppColors.primary),
                onPressed: () {},
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.shopping_bag_outlined, color: AppColors.primary),
                    onPressed: () => Navigator.pushNamed(context, '/cart'),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        color: AppColors.secondary,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 8),
            ],
            leading: IconButton(
              icon: const Icon(Icons.menu, color: AppColors.primary),
              onPressed: () {},
            ),
          ),
          
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Hero Banner
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/image_4.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              gradient: LinearGradient(
                                colors: [Colors.black.withValues(alpha: 0.4), Colors.transparent],
                                stops: const [0, 0.6],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(32),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryContainer,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Text(
                                    'NEW SEASON',
                                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                          color: AppColors.onPrimaryContainer,
                                        ),
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  'Luminous Minimal',
                                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                                        color: Colors.white,
                                        fontSize: 28,
                                      ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Elevate your daily ritual with essentials.',
                                  style: TextStyle(color: Colors.white70),
                                ),
                                const SizedBox(height: 24),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    foregroundColor: AppColors.onSurface,
                                  ),
                                  child: const Text('SHOP COLLECTION'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                
                // Categories
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Discover Categories',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              color: AppColors.primary,
                            ),
                      ),
                      Text(
                        'VIEW ALL',
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                              color: AppColors.onSurfaceVariant,
                            ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      _buildCategoryItem('Dresses', 'assets/images/image_5.jpg'),
                      _buildCategoryItem('Bags', 'assets/images/image_6.jpg'),
                      _buildCategoryItem('Shoes', 'assets/images/image_7.jpg'),
                      _buildCategoryItem('Jewelry', 'assets/images/image_8.jpg'),
                      _buildCategoryItem('Tops', 'assets/images/image_9.jpg'),
                    ],
                  ),
                ),
                
                // Curated For You
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Curated for You',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              color: AppColors.primary,
                            ),
                      ),
                      const Text(
                        'Limited editions and seasonal favorites.',
                        style: TextStyle(color: AppColors.onSurfaceVariant),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.65,
                    children: [
                      const ProductCard(
                        title: 'Oversized Cashmere Coat',
                        price: '\$450.00',
                        /*imageUrl*/ 'assets/images/image_10.jpg',
                        colors: [Colors.brown, Color(0xFFE4BDBB)],
                      ),
                      const ProductCard(
                        title: 'Sculpted Mini Bag',
                        price: '\$185.00',
                        /*imageUrl*/ 'assets/images/image_11.jpg',
                      ),
                      const ProductCard(
                        title: 'Eco-Knit Runners',
                        price: '\$120.00',
                        /*imageUrl*/ 'assets/images/image_12.jpg',
                      ),
                      const ProductCard(
                        title: 'Silk Camisole',
                        price: '\$89.00',
                        /*imageUrl*/ 'assets/images/image_13.jpg',
                      ),
                    ],
                  ),
                ),
                
                // Newsletter
                const SizedBox(height: 48),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    padding: const EdgeInsets.all(32),
                    decoration: BoxDecoration(
                      color: AppColors.primaryContainer.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: AppColors.primaryContainer.withValues(alpha: 0.3)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Join the Inner Circle',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF064E3B),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Receive early access to new collections and exclusive editorial content.',
                          style: TextStyle(color: Color(0xFF065F46)),
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Email Address',
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                              ),
                              child: const Text('JOIN'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String title, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.outlineVariant, width: 2),
            ),
            padding: const EdgeInsets.all(4),
            child: ClipOval(
              child: CachedAssetImage(
                /*imageUrl*/ imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title.toUpperCase(),
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
              color: AppColors.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
