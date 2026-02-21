class PlaceReview {
  final String userName;
  final String userAvatar;
  final double rating;
  final String timeAgo;
  final String reviewText;
  final List<String> photos;
  final int likes;

  const PlaceReview({
    required this.userName,
    required this.userAvatar,
    required this.rating,
    required this.timeAgo,
    required this.reviewText,
    this.photos = const [],
    this.likes = 0,
  });
}

class PlaceReviewsData {
  final String placeName;
  final double averageRating;
  final int totalReviews;
  final Map<int, int> ratingDistribution; // star -> count
  final List<PlaceReview> reviews;

  const PlaceReviewsData({
    required this.placeName,
    required this.averageRating,
    required this.totalReviews,
    required this.ratingDistribution,
    required this.reviews,
  });
}

// Generate reviews for any place
PlaceReviewsData getPlaceReviews(String placeName, double baseRating) {
  final reviews = [
    PlaceReview(
      userName: 'Emma Johnson',
      userAvatar: 'https://i.pravatar.cc/150?img=10',
      rating: 5.0,
      timeAgo: '2 weeks ago',
      reviewText: 'Absolutely stunning! One of the most beautiful places I\'ve ever visited. The scenery is breathtaking and the atmosphere is so peaceful. Highly recommend visiting during sunrise for the best experience.',
      photos: [
        'https://picsum.photos/seed/$placeName-1/400/300',
        'https://picsum.photos/seed/$placeName-2/400/300',
      ],
      likes: 124,
    ),
    PlaceReview(
      userName: 'John Smith',
      userAvatar: 'https://i.pravatar.cc/150?img=11',
      rating: 4.0,
      timeAgo: '1 month ago',
      reviewText: 'Great place with amazing views. Can get a bit crowded during peak season, but still worth the visit. The local guides are very knowledgeable and friendly.',
      photos: [],
      likes: 87,
    ),
    PlaceReview(
      userName: 'Maria Garcia',
      userAvatar: 'https://i.pravatar.cc/150?img=13',
      rating: 5.0,
      timeAgo: '3 weeks ago',
      reviewText: 'A must-visit destination! The natural beauty is incredible and the cultural significance makes it even more special. Don\'t forget to try the local cuisine nearby!',
      photos: ['https://picsum.photos/seed/$placeName-3/400/300'],
      likes: 156,
    ),
    PlaceReview(
      userName: 'James Wilson',
      userAvatar: 'https://i.pravatar.cc/150?img=14',
      rating: 4.5,
      timeAgo: '2 months ago',
      reviewText: 'Beautiful location with rich history. The climb was challenging but the view from the top made it all worthwhile. Bring comfortable shoes and plenty of water!',
      photos: [],
      likes: 92,
    ),
    PlaceReview(
      userName: 'Sophie Martin',
      userAvatar: 'https://i.pravatar.cc/150?img=15',
      rating: 5.0,
      timeAgo: '1 week ago',
      reviewText: 'This place exceeded all my expectations! The photography opportunities are endless. I spent the whole day here and still didn\'t want to leave. Already planning my next visit!',
      photos: [
        'https://picsum.photos/seed/$placeName-4/400/300',
        'https://picsum.photos/seed/$placeName-5/400/300',
        'https://picsum.photos/seed/$placeName-6/400/300',
      ],
      likes: 203,
    ),
    PlaceReview(
      userName: 'David Lee',
      userAvatar: 'https://i.pravatar.cc/150?img=17',
      rating: 4.0,
      timeAgo: '3 months ago',
      reviewText: 'Very nice place with good facilities. The ticket price is reasonable considering what you get to see. Would recommend booking in advance during holidays.',
      photos: [],
      likes: 64,
    ),
    PlaceReview(
      userName: 'Olivia Brown',
      userAvatar: 'https://i.pravatar.cc/150?img=18',
      rating: 5.0,
      timeAgo: '4 days ago',
      reviewText: 'Words cannot describe how magical this place is! The sunset view was absolutely spectacular. The staff were incredibly helpful and made our visit even better.',
      photos: ['https://picsum.photos/seed/$placeName-7/400/300'],
      likes: 178,
    ),
    PlaceReview(
      userName: 'Robert Taylor',
      userAvatar: 'https://i.pravatar.cc/150?img=19',
      rating: 4.5,
      timeAgo: '2 weeks ago',
      reviewText: 'Excellent experience overall. The guided tour was informative and engaging. Perfect for families and solo travelers alike. Will definitely return!',
      photos: [],
      likes: 95,
    ),
  ];

  final totalReviews = 1847 + placeName.length * 12; // Dynamic count
  
  return PlaceReviewsData(
    placeName: placeName,
    averageRating: baseRating,
    totalReviews: totalReviews,
    ratingDistribution: {
      5: (totalReviews * 0.68).round(),
      4: (totalReviews * 0.20).round(),
      3: (totalReviews * 0.08).round(),
      2: (totalReviews * 0.03).round(),
      1: (totalReviews * 0.01).round(),
    },
    reviews: reviews,
  );
}
