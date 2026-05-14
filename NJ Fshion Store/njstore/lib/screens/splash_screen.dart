import 'package:flutter/material.dart';
import '../theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Mesh Background
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(-1.0, -1.0),
                radius: 1.5,
                colors: [
                  Color(0xFFBDD9C1),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(1.0, 1.0),
                radius: 1.5,
                colors: [
                  Color(0xFFFFDAD8),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.background.withValues(alpha: 0.4),
            ),
          ),
          
          // Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(height: 1, width: 48, color: AppColors.primary),
                      const SizedBox(width: 24),
                      Text(
                        'EST. 2024',
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: AppColors.primary,
                          letterSpacing: 2.0,
                        ),
                      ),
                      const SizedBox(width: 24),
                      Container(height: 1, width: 48, color: AppColors.primary),
                    ],
                  ),
                  
                  // Brand Identity
                  Column(
                    children: [
                      Text(
                        'NJ STORE',
                        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontSize: 48,
                          color: const Color(0xFF064E3B), // emerald-900
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Curating timeless elegance and contemporary luxury.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.onSurfaceVariant,
                          height: 1.6,
                        ),
                      ),
                      const SizedBox(height: 48),
                      // Image Card
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          // Floating circles
                          Positioned(
                            bottom: -20,
                            right: -20,
                            child: Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                color: AppColors.primaryContainer.withValues(alpha: 0.3),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Positioned(
                            top: -20,
                            left: -20,
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: AppColors.secondaryContainer.withValues(alpha: 0.3),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          // Main Image
                          Container(
                            width: 240,
                            height: 300,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.primary.withValues(alpha: 0.08),
                                  blurRadius: 50,
                                  offset: const Offset(0, 20),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: Image.network(
                                'https://lh3.googleusercontent.com/aida-public/AB6AXuB5SuxItZd2D9oT1yYL0JucOmN6O3kswaj4fBUCmvC31K5qEwicPN8ZOJ_Ly4fu1SV_ys9iZjK4j41fep-0eaI75XKHIjCfYgLXKYDxuTUB64Z6VLQxaw8NYmvnM5ETQrkIfDauYbDG910aBKxoowM7zBoMPvURwtvTYfpohN7YBhch7IBSdxlNj5zerIYzKWnqdFMiZlH0VZyUHWS5Mb5GHtjEX9QcwhdABOpgGxbmXe9LlEhUmop8zWFHZdEdQg6IIqYMluYDTUU',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  
                  // CTA
                  Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/signin');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            padding: const EdgeInsets.symmetric(vertical: 20),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Enter Boutique'),
                              SizedBox(width: 8),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.pushNamed(context, '/signin'),
                            child: const Text(
                              'Sign In',
                              style: TextStyle(color: AppColors.onSurfaceVariant),
                            ),
                          ),
                          const SizedBox(width: 48),
                          GestureDetector(
                            onTap: () => Navigator.pushNamed(context, '/signup'),
                            child: const Text(
                              'Create Account',
                              style: TextStyle(color: AppColors.onSurfaceVariant),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
