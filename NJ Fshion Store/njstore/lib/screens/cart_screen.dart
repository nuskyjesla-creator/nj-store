import 'package:flutter/material.dart';
import '../theme.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '3 Items in your cart',
              style: TextStyle(color: AppColors.onSurfaceVariant),
            ),
            const SizedBox(height: 24),
            
            // Cart Items
            _buildCartItem(
              'Essential Linen Shirt',
              '\$89.00',
              'Sand Beige • Size M',
              'https://lh3.googleusercontent.com/aida-public/AB6AXuAmGayP-6aTaWSakwwN2KBwJb8OZEy4TcZ5bHaokSit1uuNsM9P5Qv5Q_Z8RaBb5MPNrKfFQ5SveqR9_9NWGHv730feCsIAttdsnUrG5E4HbdkJv1ZjhOz3bm0EXFdcA62imKDZJKgiDvX5bhdHDS2F-oHuwM2iwtAqDNgOv-Gc96uqmK7IjKrjjPWeJhxio0aX7NuO7CReb1F2CsrOR5ChzL8VS3K4yRz1JfZ4xovFYnIfrnVSyozsxC5WaY3V-LNG4THzCa9glL8',
            ),
            _buildCartItem(
              'Petal Silk Scarf',
              '\$45.00',
              'Rosewood • One Size',
              'https://lh3.googleusercontent.com/aida-public/AB6AXuDumpbpjc1RWAdhasm0CiwPZQ24FbFJrmv38XjYojubBDqkfCneMBWSBedhX3Vy8H4XnEuJSVkJu-PXQBIQ0X5Yx40np81hZPCG_apP_xG4-YLbH2gT-PvJ2cTLAiU-zrkvnYatSJTNC8cTnCiORjq8wiHAeVNMfJ9n36OB3Eb3_Ww4g3WZABLh_kbLSDPzAjLT4LL54dNmAVDVrx3GDxUOhZlNgMFcQe4Uw0HRqbzgLDHv7Hbs_gNOxY7yQnOhRq4sWi3sI-VX5sA',
            ),
            _buildCartItem(
              'Sage Wide Trousers',
              '\$120.00',
              'Sage Green • Size S',
              'https://lh3.googleusercontent.com/aida-public/AB6AXuD8BJAlGgneZAHwSG8pP7yii2emNeHw02ebDoDa_T-e62Kfq69yehCz2H50-b2ivgWJr61qc6cYOwUMF8y4TEQl011yr410IIJMPetj-FFgKBjz6rSCROh9oli7oiYjTZab8dHPVEscoh1MLfobkDNTM4NShxkVvLNFeCzg-F0VgGuZSTiLQDCD2w7HDmkI4fhs5UZzcn2VDefPKkyhb_soA1S5lHwMcnKFx2wEw9wj6kccUt5DWt19zRsbTKJ_W5Simw5hABx_zlA',
            ),
            
            const SizedBox(height: 32),
            
            // Summary
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.surfaceContainerHigh.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Order Summary', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Subtotal', style: TextStyle(color: AppColors.onSurfaceVariant)),
                      Text('\$254.00', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Shipping', style: TextStyle(color: AppColors.onSurfaceVariant)),
                      Text('FREE', style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Total', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('\$254.00', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.primary)),
                    ],
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 32),
            
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/checkout'),
                child: const Text('PROCEED TO CHECKOUT'),
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  Widget _buildCartItem(String title, String price, String details, String imageUrl) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.primaryContainer.withValues(alpha: 0.1)),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(imageUrl, width: 80, height: 100, fit: BoxFit.cover),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    const Icon(Icons.close, size: 20, color: AppColors.onSurfaceVariant),
                  ],
                ),
                Text(details, style: const TextStyle(fontSize: 12, color: AppColors.onSurfaceVariant)),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.surfaceContainerLow,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.remove, size: 16),
                          SizedBox(width: 12),
                          Text('1', style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(width: 12),
                          Icon(Icons.add, size: 16),
                        ],
                      ),
                    ),
                    Text(price, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.primary)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
