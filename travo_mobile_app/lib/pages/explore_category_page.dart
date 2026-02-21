import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';
import '../data/explore_categories_data.dart';

class ExploreCategoryPage extends StatelessWidget {
  final ExploreCategoryData categoryData;

  const ExploreCategoryPage({
    super.key,
    required this.categoryData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                _buildHeader(context),
                const SizedBox(height: 20),
                _buildSection1(),
                const SizedBox(height: 30),
                _buildSection2(),
                const SizedBox(height: 120),
              ],
            ),
          ),
          _buildBottomBar(),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final headerHeight = MediaQuery.of(context).size.height * 0.32;

    return Stack(
      children: [
        SizedBox(
          height: headerHeight,
          width: double.infinity,
          child: Image.network(
            categoryData.headerImageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: headerHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.black.withValues(alpha: 0.7), Colors.transparent],
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _circleBtn(
                    Icons.arrow_back_ios_new,
                    onTap: () => Navigator.pop(context),
                  ),
                  Row(
                    children: [
                      _circleBtn(Icons.share, onTap: () {}),
                      const SizedBox(width: 10),
                      _circleBtn(Icons.favorite_border, onTap: () {}),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categoryData.headerTitle,
                style: const TextStyle(
                  color: AppColors.textOnPrimary,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Icon(_getCategoryIcon(), color: Colors.white, size: 16),
                  const SizedBox(width: 6),
                  Text(
                    categoryData.headerSubtitle,
                    style: const TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  IconData _getCategoryIcon() {
    switch (categoryData.categoryName) {
      case 'Food':
        return Icons.restaurant;
      case 'Stays':
        return Icons.bed;
      case 'Activities':
        return Icons.kayaking;
      case 'Transport':
        return Icons.commute;
      default:
        return Icons.explore;
    }
  }

  Widget _circleBtn(IconData icon, {VoidCallback? onTap}) {
    return Material(
      color: Colors.white.withValues(alpha: 0.15),
      shape: const CircleBorder(),
      child: InkWell(
        onTap: onTap,
        customBorder: const CircleBorder(),
        child: SizedBox(
          width: 42,
          height: 42,
          child: Icon(icon, color: Colors.white, size: 20),
        ),
      ),
    );
  }

  Widget _buildSection1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            categoryData.section1Title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: categoryData.section1Items.length,
            separatorBuilder: (context, index) => const SizedBox(width: 14),
            itemBuilder: (context, index) {
              final item = categoryData.section1Items[index];
              return _itemCard(
                item.title,
                item.imageUrl,
                item.rating.toString(),
                item.priceRange ?? '',
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _itemCard(String title, String imageUrl, String rate, String price) {
    return SizedBox(
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              imageUrl,
              height: 120,
              width: 140,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            children: [
              const Icon(Icons.star, size: 14, color: AppColors.warning),
              const SizedBox(width: 4),
              Text(rate),
              const Spacer(),
              if (price.isNotEmpty) Text(price),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSection2() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            categoryData.section2Title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ...categoryData.section2Items.map((item) => _listTile(
                item.title,
                item.imageUrl,
                item.rating.toString(),
                item.priceRange,
              )),
        ],
      ),
    );
  }

  Widget _listTile(String title, String imageUrl, String rating, String? price) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl,
              height: 70,
              width: 70,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.star, size: 14, color: AppColors.warning),
                    const SizedBox(width: 4),
                    Text(rating),
                    if (price != null && price.isNotEmpty) ...[
                      const SizedBox(width: 8),
                      Text(price, style: const TextStyle(color: AppColors.textSecondary)),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBar() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.surface,
          border: Border(top: BorderSide(color: AppColors.divider)),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Row(
          children: [
            const Icon(Icons.mic_outlined, color: AppColors.primary),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Ask AI...',
                  hintStyle: const TextStyle(color: AppColors.textDisabled),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              width: 46,
              height: 46,
              decoration: const BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.send, color: AppColors.textOnPrimary, size: 20),
            ),
          ],
        ),
      ),
    );
  }
}
