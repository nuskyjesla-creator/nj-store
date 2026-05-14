import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
                          image: NetworkImage(
                            'https://lh3.googleusercontent.com/aida-public/AB6AXuDzOaGa476oTfGXafqi-3pE6sQeAqHoKcJdzCfhj5iUCmwE-kKe0vhGWg64M42Dsvbe_HYaOUfPSuCxNSPF2ARJ8hLgzgc5WTPxrBcJniqFtk_WneTB-OPO5zkgO-79Codf7N3lpPVVl7o1NtfXQDo3E9Mm34YkpatglNIKhTMif42urDKF3XISlODG9QB_SA2CGPI6lr4JLXa4bC4Xn7hdhGGaVmrC1wLo7_QV7_zrcIBqdKyHNhO2DWlQx7ekV0n95tMzxKwx7mc',
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
                      _buildCategoryItem('Dresses', 'https://lh3.googleusercontent.com/aida-public/AB6AXuBZldysS5sQBYMzq4F1q_ov5citwyKP2CjhVm1IR-jqdz456WosWAt5aGuRmrL8PMUxfPvjq-G0UdikAcvoO1PFVB_xCSCJqXfp3w67mVng-l4IejeyAzBDeciJjuzadKouhnZ71WkHFcbel6NSc1cAh6sH22IZJct2st9KvVXjoSS9eKjy9AVldQVRE2tc5YvR9QFGPStfnGtekM1wJXk2coE1iP0GAY29onFD89WdGr45tV3XIWvid40WlZItHLEJ48yZWdO9ILo'),
                      _buildCategoryItem('Bags', 'https://lh3.googleusercontent.com/aida-public/AB6AXuAdFM-MwGX8s5iH-A4t-5L-n4eu3GCvRBKqQCG1fY1Q_W_IIfyFu39zK7Crpw_WmEQu5Dkr59NGwjPfM109N13Np9R9Qe55OepwJElCbYeDuvWKX_YP9tGUSxJ0QdPL8e4vasLPSNjPZafL2NfE231GnfnlpgTOQx5zhp9ilCn5EhGj8AMz92GXHgGjPCz5Gsdm3-emBs8zBp8NbfL7gPh1m6nfCjROiigwlvgXUkvwZ0nwi25f6-aDQN4DvSG8bwnNjNV9VigabRM'),
                      _buildCategoryItem('Shoes', 'https://lh3.googleusercontent.com/aida-public/AB6AXuDNXP8EzYPj9kxziUSy5pu9aXDLGSlng2SRUHeIQ2a9RN6VSAnsYJNsDsl48WPBOOXBJdRsv1o8y1T_5SGtLaZuwB8RYCtIfbxgZ-LB-BYt4vx01jUThXjEQ2VPnYwD6y88xqA-AM30usySIpwOtF4mOs2B37syZFhXTb5rY1eGaDtLywYpJ5KLF1IeTVdFuVSk0C6P8X9EPxznM6DMwJr6pAxKART43cFfdvgTIFchaNrRpbeJOEGMwigEmgLfYPt5JaEH-Uavsgg'),
                      _buildCategoryItem('Jewelry', 'https://lh3.googleusercontent.com/aida-public/AB6AXuCVljfasrdyVXnajQSeV_zxdApx_dkUFS5X5_9-fE7TLGCPkFIfO9Fw1k00ZZsm_2gmrHZy0dmmLeaufW8zuWc1BvLZ-HHggQkD_fKffZT6wNtcKJAbkufs1sPWwVkrVm3zyqZl7nv9DEYWUB5M0_7-WifQ6UIJNwpVo5D_3rk7MPqvy0cQeabf-nunY69XV7_byylE6sc3udWrmLLMcggHTuD6tyDyXYpqGn_l3nvPugR8qzEVRS1Nn4R-7sFbio42HvEdv9NJeUE'),
                      _buildCategoryItem('Tops', 'https://lh3.googleusercontent.com/aida-public/AB6AXuDBzfK8ZS7xwM172IhI_kbwDgUeBT5XZrTFag7uMn_hsg_ZwpLk_XTtoE1F0OlyQwVk5q-Jtxfv4AXbvfioffPlUBpCCjPBeSBi85qdsuRsnoCDtsetESDD3_8OJxIAHf_CxPUbUDZyPE4m2hiAJ01NHlmhrSFXbC8QHAfCxyq_HnCwilvCND4nm504KDUWweEUZEaDvpMDGLBJ7IYWskCj7DVmri44zNCqV23xq8_Sv27i_DGZcd-s1rU527gDT3ozZoxefM7Kykk'),
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
                        imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuAx65SIddIujnilKrSIk71v2JxTuvWVd5Tk0H76u94XqfQsEJbjcK7Jt2P0RL4xzXd72C3xMplGm82s2gJ23qXXMmb1C4DFlrdfjTaOiqyzVkIQcWEOFQjs3UU4hRyU4qo55_dRYRzut0k9iy0VSfu57YrkhcrsLW5ejWH0nWMxJ6v4iylj00kq0o1-u24LDhaP9IRM3Iec0j2KjEQ7qvEtNaY_a-HM8EDi1xxOlYLZTtaEFxCvwGOTqlAmohM1Aewswp4FvvSRQPk',
                        colors: [Colors.brown, Color(0xFFE4BDBB)],
                      ),
                      const ProductCard(
                        title: 'Sculpted Mini Bag',
                        price: '\$185.00',
                        imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuAVxUuvBBOQrczS9ZRojDoME75rEYoaMjt0F_dqpl__hsUL-GKrlDOC0mxbfUMW4wYEY05CdeG88Bu3VxVCmCbq7P-5axyMr8ZFZKNKUZzmhSoJjxZ5Kn8Y0BQ8d-fuOLm4i2W1HoPGwOsgJaKreoM6etY_2WZeJrcByAWyInuEAriNyQfglQkGRtoM8xxWk8xA1YuIHgrzYS9WYn__RZyjSwMdDAYuQ6NKuZzJQBe5ttyuEwRE96lLGd1ZtFzeQ-BVaFbz3-JEigI',
                      ),
                      const ProductCard(
                        title: 'Eco-Knit Runners',
                        price: '\$120.00',
                        imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuDSZIerNMWqVjCNAHeLmiauqBR7SOUz9XzZG7hK3zl4b8nEA37vrydcWaNcBGVjUP9CwuFB165rFVYMA5h5MArXgpsrYegdtaQomO7HLwpMC1OvMQJjFNQ5fVkc3DeUR2fQeft8MUgu-cM_XrzXk81knvSJv2Er59ZRjVJ7H7hSUYPCMbBTBV6jn85fTQKPmzPzYpHP3vBH2-fo1xWbvU-ktUc1lFYmqfrApf595eiGu3pht1Lv8Xi9_wcEP9zRJA9iAS_Sz9uRfag',
                      ),
                      const ProductCard(
                        title: 'Silk Camisole',
                        price: '\$89.00',
                        imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuAdipe-J5q7y_R2P9qfmnbQCCG7mtdARHaBIRnmQEXLlF5aVsvNenPk-GfRLKywKiPuU0CQBqso45K4l_UsVPiHUunqtie7O8kbCbD-SZceAsS_LVk3o3ZfN6G-vfcooQ7EbQfhbfxvqGpe23ikedMJ3WZrgFcqiSaFum9Q_73iQd-JZuRD4LmsB2DCrPNJ1mSDk1bAOuWqCrc5zKkVLnqpBp59yT34s3yBxNIx29ErphtSEQ-odOCAWaDINg8bLHDxEvoZk8GsZTA',
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
              child: CachedNetworkImage(
                imageUrl: imageUrl,
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
