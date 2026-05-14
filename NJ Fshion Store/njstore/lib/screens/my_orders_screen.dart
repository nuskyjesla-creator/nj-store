import 'package:flutter/material.dart';
import '../theme.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Orders'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Recent Orders',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            
            _buildOrderCard(
              context,
              '#NJ-8821',
              'Delivered',
              'Oct 12, 2023',
              '\$245.00',
              ['assets/images/image_14.jpg', 'assets/images/image_15.jpg'],
            ),
            _buildOrderCard(
              context,
              '#NJ-8754',
              'Shipped',
              'Oct 08, 2023',
              '\$1,120.00',
              ['assets/images/image_16.jpg'],
              isNew: true,
            ),
            _buildOrderCard(
              context,
              '#NJ-8690',
              'Delivered',
              'Sep 24, 2023',
              '\$89.00',
              ['assets/images/image_17.jpg'],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderCard(BuildContext context, String id, String status, String date, String total, List<String> images, {bool isNew = false}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.primaryContainer.withValues(alpha: 0.1)),
        boxShadow: [
          BoxShadow(color: AppColors.primary.withValues(alpha: 0.05), blurRadius: 20, offset: const Offset(0, 4)),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('ORDER $id', style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: AppColors.onSurfaceVariant, letterSpacing: 1.0)),
                      if (isNew) ...[
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(color: AppColors.secondaryContainer, borderRadius: BorderRadius.circular(4)),
                          child: const Text('NEW', style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold, color: AppColors.secondary)),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(status, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: status == 'Shipped' ? AppColors.primary : AppColors.onSurface)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(total, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.primary)),
                  Text(date, style: const TextStyle(fontSize: 12, color: AppColors.onSurfaceVariant)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 48,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 8),
                        width: 48,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                          image: DecorationImage(image: AssetImage(images[index]), fit: BoxFit.cover),
                        ),
                      );
                    },
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Text('VIEW DETAILS', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                    Icon(Icons.chevron_right, size: 16),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
