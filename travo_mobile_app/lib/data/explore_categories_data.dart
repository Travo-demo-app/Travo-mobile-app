class ExploreItem {
  final String title;
  final String imageUrl;
  final double rating;
  final String? priceRange;
  final String? distance;

  const ExploreItem({
    required this.title,
    required this.imageUrl,
    required this.rating,
    this.priceRange,
    this.distance,
  });
}

class ExploreCategoryData {
  final String categoryName;
  final String headerTitle;
  final String headerSubtitle;
  final String headerImageUrl;
  final String section1Title;
  final List<ExploreItem> section1Items;
  final String section2Title;
  final List<ExploreItem> section2Items;

  const ExploreCategoryData({
    required this.categoryName,
    required this.headerTitle,
    required this.headerSubtitle,
    required this.headerImageUrl,
    required this.section1Title,
    required this.section1Items,
    required this.section2Title,
    required this.section2Items,
  });
}

// Food & Dining Data
final foodDiningData = ExploreCategoryData(
  categoryName: 'Food',
  headerTitle: 'Local Dining',
  headerSubtitle: 'Traditional Flavors',
  headerImageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuCTkH8r72U4822Oo5KKbhV7JaZqL4ZoJsFzGEH1SthikJlRao9RgnGe6WB6eZS-UmHBUQqXwp5YOVFX-dva4wJ08MHrkSrOeuJmbei7LRHE6nMgzqrFd9_0YSAOoCbAf6Qm7EIBhyjJwvH4EKy9XzKk3ssVua-Ml03ZaFTf6nQ33EhC3Mp_tQoxlizt-mSwpAUwiyDBP3aY-2yXc8vBaOv7Wi7WYgN_aFb-ti_6hTTPQt0k54h_nltGJJ7m8NXRm5w1BqaWvF6fW90',
  section1Title: 'Local Flavors',
  section1Items: [
    const ExploreItem(
      title: 'Riverside Spice',
      imageUrl: 'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?fit=crop&w=400&h=300',
      rating: 4.8,
      priceRange: '\$\$',
    ),
    const ExploreItem(
      title: 'Cloud Kitchen',
      imageUrl: 'https://images.unsplash.com/photo-1552566626-52f8b828add9?fit=crop&w=400&h=300',
      rating: 4.6,
      priceRange: '\$\$\$',
    ),
    const ExploreItem(
      title: 'Tekerghat Grill',
      imageUrl: 'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?fit=crop&w=400&h=300',
      rating: 4.9,
      priceRange: '\$',
    ),
  ],
  section2Title: 'Must-Try Dishes',
  section2Items: [
    const ExploreItem(
      title: 'Limestone Seafood Platter',
      imageUrl: 'https://images.unsplash.com/photo-1559339352-11d035aa65de?fit=crop&w=400&h=300',
      rating: 4.9,
    ),
    const ExploreItem(
      title: 'Hilly Green Curry',
      imageUrl: 'https://images.unsplash.com/photo-1455619452474-d2be8b1e70cd?fit=crop&w=400&h=300',
      rating: 4.7,
    ),
    const ExploreItem(
      title: 'Niladri Blue Mocktail',
      imageUrl: 'https://images.unsplash.com/photo-1546171753-97d7676e4602?fit=crop&w=400&h=300',
      rating: 4.6,
    ),
  ],
);

// Stays Data
final staysData = ExploreCategoryData(
  categoryName: 'Stays',
  headerTitle: 'Accommodation',
  headerSubtitle: 'Rest & Relax',
  headerImageUrl: 'https://images.unsplash.com/photo-1566073771259-6a8506099945?fit=crop&w=800&h=400',
  section1Title: 'Featured Hotels',
  section1Items: [
    const ExploreItem(
      title: 'Mountain View Resort',
      imageUrl: 'https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?fit=crop&w=400&h=300',
      rating: 4.8,
      priceRange: '\$\$\$',
    ),
    const ExploreItem(
      title: 'Lakeside Villa',
      imageUrl: 'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?fit=crop&w=400&h=300',
      rating: 4.7,
      priceRange: '\$\$',
    ),
    const ExploreItem(
      title: 'Heritage Boutique',
      imageUrl: 'https://images.unsplash.com/photo-1566665797739-1674de7a421a?fit=crop&w=400&h=300',
      rating: 4.9,
      priceRange: '\$\$\$\$',
    ),
  ],
  section2Title: 'Budget Friendly',
  section2Items: [
    const ExploreItem(
      title: 'Cozy Homestay',
      imageUrl: 'https://images.unsplash.com/photo-1587381420270-3e1a5b9e6904?fit=crop&w=400&h=300',
      rating: 4.5,
      priceRange: '\$',
    ),
    const ExploreItem(
      title: 'Backpacker Haven',
      imageUrl: 'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?fit=crop&w=400&h=300',
      rating: 4.4,
      priceRange: '\$',
    ),
    const ExploreItem(
      title: 'Hill View Guest House',
      imageUrl: 'https://images.unsplash.com/photo-1564501049412-61c2a3083791?fit=crop&w=400&h=300',
      rating: 4.6,
      priceRange: '\$',
    ),
  ],
);

// Activities Data
final activitiesData = ExploreCategoryData(
  categoryName: 'Activities',
  headerTitle: 'Adventures',
  headerSubtitle: 'Thrilling Experiences',
  headerImageUrl: 'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?fit=crop&w=800&h=400',
  section1Title: 'Popular Activities',
  section1Items: [
    const ExploreItem(
      title: 'Rock Climbing',
      imageUrl: 'https://images.unsplash.com/photo-1522163182402-834f871fd851?fit=crop&w=400&h=300',
      rating: 4.8,
      priceRange: '\$\$',
    ),
    const ExploreItem(
      title: 'Zip Lining',
      imageUrl: 'https://images.unsplash.com/photo-1473163928189-364b2c4e1135?fit=crop&w=400&h=300',
      rating: 4.9,
      priceRange: '\$\$\$',
    ),
    const ExploreItem(
      title: 'White Water Rafting',
      imageUrl: 'https://images.unsplash.com/photo-1501785888041-af3ef285b470?fit=crop&w=400&h=300',
      rating: 4.7,
      priceRange: '\$\$',
    ),
  ],
  section2Title: 'Cultural Experiences',
  section2Items: [
    const ExploreItem(
      title: 'Traditional Dance Show',
      imageUrl: 'https://images.unsplash.com/photo-1544551763-46a013bb70d5?fit=crop&w=400&h=300',
      rating: 4.6,
      priceRange: '\$',
    ),
    const ExploreItem(
      title: 'Cooking Class',
      imageUrl: 'https://images.unsplash.com/photo-1556910103-1c02745aae4d?fit=crop&w=400&h=300',
      rating: 4.7,
      priceRange: '\$\$',
    ),
    const ExploreItem(
      title: 'Temple Tour',
      imageUrl: 'https://images.unsplash.com/photo-1609137144813-7d9921338f24?fit=crop&w=400&h=300',
      rating: 4.8,
      priceRange: '\$',
    ),
  ],
);

// Transportation Data
final transportationData = ExploreCategoryData(
  categoryName: 'Transport',
  headerTitle: 'Transportation',
  headerSubtitle: 'Getting Around',
  headerImageUrl: 'https://images.unsplash.com/photo-1544620347-c4fd4a3d5957?fit=crop&w=800&h=400',
  section1Title: 'Rental Options',
  section1Items: [
    const ExploreItem(
      title: 'Car Rental',
      imageUrl: 'https://images.unsplash.com/photo-1449965408869-eaa3f722e40d?fit=crop&w=400&h=300',
      rating: 4.7,
      priceRange: '\$\$',
    ),
    const ExploreItem(
      title: 'Scooter Hire',
      imageUrl: 'https://images.unsplash.com/photo-1558981806-ec527fa84c39?fit=crop&w=400&h=300',
      rating: 4.6,
      priceRange: '\$',
    ),
    const ExploreItem(
      title: 'Bicycle Tours',
      imageUrl: 'https://images.unsplash.com/photo-1507035895480-2b3156c31fc8?fit=crop&w=400&h=300',
      rating: 4.8,
      priceRange: '\$',
    ),
  ],
  section2Title: 'Public Transport',
  section2Items: [
    const ExploreItem(
      title: 'Local Buses',
      imageUrl: 'https://images.unsplash.com/photo-1570125909232-eb263c188f7e?fit=crop&w=400&h=300',
      rating: 4.3,
    ),
    const ExploreItem(
      title: 'Tuk Tuk Service',
      imageUrl: 'https://images.unsplash.com/photo-1570125909232-eb263c188f7e?fit=crop&w=400&h=300',
      rating: 4.5,
    ),
    const ExploreItem(
      title: 'Train Routes',
      imageUrl: 'https://images.unsplash.com/photo-1570125909232-eb263c188f7e?fit=crop&w=400&h=300',
      rating: 4.9,
    ),
  ],
);

// Map of all categories
final Map<String, ExploreCategoryData> exploreCategoriesMap = {
  'Food': foodDiningData,
  'Stays': staysData,
  'Activities': activitiesData,
  'Transport': transportationData,
};
