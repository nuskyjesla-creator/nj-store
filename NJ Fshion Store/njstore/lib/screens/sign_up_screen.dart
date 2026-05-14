import 'package:flutter/material.dart';
import '../theme.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.primary),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('NJ STORE', style: TextStyle(letterSpacing: 2.0, fontWeight: FontWeight.bold, fontSize: 16)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 24),
            Text(
              'NJ STORE',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: AppColors.primary,
                  ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Join our boutique',
              style: TextStyle(color: AppColors.onSurfaceVariant, fontSize: 16),
            ),
            const SizedBox(height: 48),
            
            // Form
            Column(
              children: [
                _buildTextField('Full Name', Icons.person_outline),
                const SizedBox(height: 16),
                _buildTextField('Email Address', Icons.email_outlined),
                const SizedBox(height: 16),
                _buildTextField('Password', Icons.lock_outline, isPassword: true),
                const SizedBox(height: 16),
                _buildTextField('Confirm Password', Icons.lock_reset_outlined, isPassword: true),
              ],
            ),
            
            const SizedBox(height: 32),
            
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: const Text('CREATE ACCOUNT'),
              ),
            ),
            
            const SizedBox(height: 32),
            
            // Divider
            Row(
              children: [
                Expanded(child: Divider(color: AppColors.outlineVariant.withValues(alpha: 0.3))),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'OR CONTINUE WITH',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: AppColors.outline, letterSpacing: 1.0),
                  ),
                ),
                Expanded(child: Divider(color: AppColors.outlineVariant.withValues(alpha: 0.3))),
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
                          'https://lh3.googleusercontent.com/aida-public/AB6AXuA2q52g1hy_FVVvK3MXxDKnoKvN_sjTOtXgvOtuiJsdD2vskTIlh6U4Ditu-FU0BLetJKtinPaZ1bs0qa-kDngX6b0mfVHDwiWHVfLNNY0eMiTeOdRzPc7II59jU1cClpeY6P3JecC3Sf45bPW9D09RbI4s8VNZlKj_N2tDn9OYyAIfjZKQGAko47nsa5X-3a66klUDcFCbR_-V0LBQgC_RqPDmAX8FB9P_S2jk65aMgGRSZnn9D26LerLNHcB77_f7NpsgSkh_xoQ',
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
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.onSurface,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.apple, size: 20),
                        SizedBox(width: 8),
                        Text('APPLE', style: TextStyle(fontSize: 12)),
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
                  'Already have an account? ',
                  style: TextStyle(color: AppColors.onSurfaceVariant),
                ),
                GestureDetector(
                  onTap: () => Navigator.pushReplacementNamed(context, '/signin'),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 48),
            
            // Boutique Image
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.network(
                'https://lh3.googleusercontent.com/aida-public/AB6AXuBVqhqTaxAOWocLnMGsKBvViFmii5seM1ILzycAneXKjA0a6Z-OiR215_BGdyW_8YsB1YVwW2r_HInp9m-9oQuMoBAMexZpM06bgw-YX3sx9heQHXYM7NPeYLbU392PdEh331bWbt5hK7Vj-rNWJCRFXIN-VHvMHT5s0YKv0SuXv4Wq1gTrSZ4qE847ljeklSHpWarU_SYprdcwe7WhdGSNPaWJ7iHveuWk3gNLG1WXVyx8QfKqBL_WBlCSfFMBKXb0NTjYfBEtHoc',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, IconData icon, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon, color: AppColors.outline, size: 20),
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
    );
  }
}
