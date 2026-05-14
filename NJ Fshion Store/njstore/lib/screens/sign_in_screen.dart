import 'package:flutter/material.dart';
import '../theme.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Decorative Elements
          Positioned(
            top: -50,
            left: -50,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: AppColors.primaryContainer.withValues(alpha: 0.2),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: -50,
            right: -50,
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                color: AppColors.secondaryContainer.withValues(alpha: 0.2),
                shape: BoxShape.circle,
              ),
            ),
          ),
          
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const SizedBox(height: 48),
                  // Brand Identity
                  Column(
                    children: [
                      Container(
                        width: 64,
                        height: 64,
                        decoration: const BoxDecoration(
                          color: AppColors.primaryContainer,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.shopping_bag_outlined,
                          color: AppColors.primary,
                          size: 32,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'NJ STORE',
                        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontSize: 32,
                          letterSpacing: -1,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Welcome back to your sanctuary of style.',
                        style: TextStyle(
                          color: AppColors.onSurfaceVariant,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 48),
                  
                  // Form
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 16, bottom: 8),
                        child: Text(
                          'EMAIL ADDRESS',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                            color: AppColors.onSurfaceVariant,
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'hello@njstore.com',
                          filled: true,
                          fillColor: AppColors.surfaceContainerLowest,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: const BorderSide(color: AppColors.outlineVariant),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: const BorderSide(color: AppColors.outlineVariant),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: const BorderSide(color: AppColors.primary),
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 24),
                      
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'PASSWORD',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5,
                                color: AppColors.onSurfaceVariant,
                              ),
                            ),
                            Text(
                              'FORGOT PASSWORD?',
                              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                color: AppColors.primary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: '••••••••',
                          filled: true,
                          fillColor: AppColors.surfaceContainerLowest,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: const BorderSide(color: AppColors.outlineVariant),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: const BorderSide(color: AppColors.outlineVariant),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: const BorderSide(color: AppColors.primary),
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 32),
                      
                      SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/home');
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Sign In'),
                              SizedBox(width: 8),
                              Icon(Icons.arrow_forward, size: 18),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: OutlinedButton(
                          onPressed: () => Navigator.pushNamed(context, '/signup'),
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: AppColors.primary),
                          ),
                          child: const Text('Sign Up', style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // Divider
                  Row(
                    children: [
                      Expanded(child: Divider(color: AppColors.outlineVariant.withValues(alpha: 0.5))),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'OR CONTINUE WITH',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.outline,
                          ),
                        ),
                      ),
                      Expanded(child: Divider(color: AppColors.outlineVariant.withValues(alpha: 0.5))),
                    ],
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // Social Login
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: const StadiumBorder(),
                            side: const BorderSide(color: AppColors.outlineVariant),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                'https://lh3.googleusercontent.com/aida-public/AB6AXuDH1QCiYXsF-B6pxV7zddUGcWzs9DPX6Ib4sYg9mRtQOYaeYSMzjkw4VjN0hlfeoftJTHqbib6Jj3o_sfFZfUZH0nJpbx5DrXhNGo6XVmb9TZ5WtZQKaV8bsa6Y72sahW9anozSVv-vyHjcdF1WEUllm89Q-b-3EqLZQcoQZJ5soKppojl-lt99bmMSohE14nqnAVRJSJXS6n_Wkf0yl_TbB-MiJvw9QQgHz1CuJ7Hi07xaqFM7bg9lwHADWf6pVLAsgieVMnZAyGo',
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(width: 8),
                              const Text('GOOGLE', style: TextStyle(color: AppColors.onSurface, fontSize: 12)),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: const StadiumBorder(),
                            side: const BorderSide(color: AppColors.outlineVariant),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.apple, color: AppColors.onSurface, size: 20),
                              SizedBox(width: 8),
                              Text('APPLE', style: TextStyle(color: AppColors.onSurface, fontSize: 12)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 48),
                  
                  // Footer
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account? ",
                        style: TextStyle(color: AppColors.onSurfaceVariant),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/signup'),
                        child: Text(
                          'Sign Up',
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        ),
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
