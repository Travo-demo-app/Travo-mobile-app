import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';
import '../data/place_reviews_data.dart';

class PlaceReviewsPage extends StatelessWidget {
  final String placeName;
  final double placeRating;

  const PlaceReviewsPage({
    super.key,
    required this.placeName,
    required this.placeRating,
  });

  @override
  Widget build(BuildContext context) {
    final reviewsData = getPlaceReviews(placeName, placeRating);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context),
          SliverToBoxAdapter(
            child: Column(
              children: [
                _buildRatingSummary(reviewsData),
                const Divider(height: 1),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => _buildReviewCard(reviewsData.reviews[index]),
                childCount: reviewsData.reviews.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.surface,
      elevation: 0,
      pinned: true,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back_ios_new),
      ),
      title: const Text(
        'Reviews',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.filter_list),
        ),
      ],
    );
  }

  Widget _buildRatingSummary(PlaceReviewsData data) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Average rating
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Text(
                  data.averageRating.toStringAsFixed(1),
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    return Icon(
                      index < data.averageRating.floor()
                          ? Icons.star
                          : (index < data.averageRating ? Icons.star_half : Icons.star_border),
                      color: AppColors.warning,
                      size: 20,
                    );
                  }),
                ),
                const SizedBox(height: 8),
                Text(
                  '${data.totalReviews.toString()} reviews',
                  style: const TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          // Rating distribution
          Expanded(
            flex: 3,
            child: Column(
              children: List.generate(5, (index) {
                final star = 5 - index;
                final count = data.ratingDistribution[star] ?? 0;
                final percentage = count / data.totalReviews;
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    children: [
                      Text(
                        '$star',
                        style: const TextStyle(fontSize: 12),
                      ),
                      const SizedBox(width: 4),
                      const Icon(Icons.star, size: 14, color: AppColors.warning),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: LinearProgressIndicator(
                            value: percentage,
                            backgroundColor: AppColors.divider,
                            valueColor: const AlwaysStoppedAnimation<Color>(AppColors.warning),
                            minHeight: 6,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      SizedBox(
                        width: 35,
                        child: Text(
                          count.toString(),
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReviewCard(PlaceReview review) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 0,
      color: AppColors.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: AppColors.divider),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User info
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(review.userAvatar),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        review.userName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        review.timeAgo,
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert, size: 20),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Rating
            Row(
              children: List.generate(5, (index) {
                return Icon(
                  index < review.rating.floor()
                      ? Icons.star
                      : (index < review.rating ? Icons.star_half : Icons.star_border),
                  color: AppColors.warning,
                  size: 18,
                );
              }),
            ),
            const SizedBox(height: 12),
            // Review text
            Text(
              review.reviewText,
              style: const TextStyle(
                fontSize: 14,
                height: 1.5,
                color: AppColors.textPrimary,
              ),
            ),
            // Photos
            if (review.photos.isNotEmpty) ...[
              const SizedBox(height: 12),
              SizedBox(
                height: 80,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: review.photos.length,
                  separatorBuilder: (context, index) => const SizedBox(width: 8),
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        review.photos[index],
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ],
            const SizedBox(height: 12),
            // Actions
            Row(
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_up_outlined, size: 16),
                  label: Text('Helpful (${review.likes})'),
                  style: TextButton.styleFrom(
                    foregroundColor: AppColors.textSecondary,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.share_outlined, size: 16),
                  label: const Text('Share'),
                  style: TextButton.styleFrom(
                    foregroundColor: AppColors.textSecondary,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
