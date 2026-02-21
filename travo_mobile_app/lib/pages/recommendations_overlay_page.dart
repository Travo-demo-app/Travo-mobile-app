import 'dart:ui';

import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';
import '../data/recommendations_data.dart';
import 'place_details_page.dart';

class TravoRecommendationsPage extends StatelessWidget {
  const TravoRecommendationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          _backgroundLayer(context),
          _blurLayer(),
          _bottomSheet(context),
        ],
      ),
    );
  }

  // ---------------- BACKGROUND ----------------
  Widget _backgroundLayer(BuildContext context) {
    return SafeArea(
      child: Opacity(
        opacity: 0.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(color: AppColors.shadow, blurRadius: 4),
                      ],
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 14,
                          backgroundImage: NetworkImage(
                            'https://lh3.googleusercontent.com/aida-public/AB6AXuCG3UOLWg26o_TIuKGuIvWvhqMqja6VDIIPKFWZ-yprXF4WK_XuR_Jslcjt_k-hTZE179ozJTBFB14kX2BCFO5-r4wuDHRZ5O9zTck61IMIfy_hGjRkqRHoU_6Pu9Law4Rw64KIPmrHQfBjB3CaXHFi5wfChMRVQ7BM852gbWWk9jP2pxy5Oe7ddZftciWOIjBut-7Lha46YJQLjJNQq-pSSpuQX8q1hGA7MZbcDvTu0_gPF1-P2MIEszGpDmEim3jDXVVN-I1ooW0',
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Leonardo',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.surface,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(color: AppColors.shadow, blurRadius: 4),
                          ],
                        ),
                        child: const Icon(
                          Icons.notifications_none,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: AppColors.warning,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Explore the\n',
                      style: TextStyle(
                        fontSize: 36,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const TextSpan(
                      text: 'Beautiful ',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const TextSpan(
                      text: 'world!',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: AppColors.accent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Container(
                height: 220,
                decoration: BoxDecoration(
                  color: AppColors.surfaceLight,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ---------------- BLUR ----------------
  Widget _blurLayer() {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
      child: Container(color: AppColors.textPrimary.withValues(alpha: 0.4)),
    );
  }

  // ---------------- BOTTOM SHEET ----------------
  Widget _bottomSheet(BuildContext context) {
    return _DraggableRecommendationsSheet();
  }
}

class _DraggableRecommendationsSheet extends StatefulWidget {
  const _DraggableRecommendationsSheet();

  @override
  State<_DraggableRecommendationsSheet> createState() =>
      _DraggableRecommendationsSheetState();
}

class _DraggableRecommendationsSheetState
    extends State<_DraggableRecommendationsSheet> {
  bool _isDismissing = false;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<DraggableScrollableNotification>(
      onNotification: (notification) {
        if (notification.extent <= 0.3 && !_isDismissing && mounted) {
          _isDismissing = true;
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted && Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          });
        }
        return true;
      },
      child: DraggableScrollableSheet(
        initialChildSize: 0.88,
        minChildSize: 0.1,
        maxChildSize: 0.88,
        snap: false,
        builder: (context, scrollController) {
          return Container(
            decoration: const BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 12, bottom: 12),
                  color: Colors.transparent,
                  width: double.infinity,
                  child: Center(
                    child: Container(
                      width: 40,
                      height: 6,
                      decoration: BoxDecoration(
                        color: AppColors.divider,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Top Picks for You',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            const SizedBox(height: 6),
                            const Text(
                              'Based on your recent interests',
                              style: TextStyle(color: AppColors.textSecondary),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: AppColors.surfaceLight,
                        child: const Icon(
                          Icons.tune,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    controller: scrollController,
                    padding: const EdgeInsets.fromLTRB(24, 12, 24, 140),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 1.0,
                    ),
                    itemCount: recommendationsData.length,
                    itemBuilder: (_, index) {
                      final item = recommendationsData[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TravoPlaceDetailsPage(
                                title: item.title,
                                location: item.location,
                                imageUrl: item.imageUrl,
                                rating: item.rating,
                              ),
                            ),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      item.imageUrl,
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: double.infinity,
                                    ),
                                  ),
                                  Positioned(
                                    top: 8,
                                    right: 8,
                                    child: CircleAvatar(
                                      backgroundColor:
                                          AppColors.textPrimary.withValues(
                                        alpha: 0.25,
                                      ),
                                      child: const Icon(
                                        Icons.favorite_border,
                                        color: AppColors.textOnPrimary,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 8,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color:
                                            AppColors.surface.withValues(alpha: 0.85),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            size: 14,
                                            color: AppColors.warning,
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            item.rating.toString(),
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.textPrimary,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              item.title,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  size: 14,
                                  color: AppColors.textSecondary,
                                ),
                                const SizedBox(width: 4),
                                Expanded(
                                  child: Text(
                                    item.location,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: AppColors.textSecondary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
