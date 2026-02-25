class RecommendationItem {
  final String imageUrl;
  final String title;
  final String location;
  final double rating;

  const RecommendationItem({
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.rating,
  });
}

final List<RecommendationItem> recommendationsData = [
  const RecommendationItem(
    imageUrl:
        'https://lh3.googleusercontent.com/aida-public/AB6AXuACWWMzHvuZzWYuq1tXXagREhlC4eFYSN67pYXS1Fh-VIgi6E_iPGL79hIZXhrE7lRYANDqW7dxWoVzHWUWMN8nvJ7aHZu472KTY3xe-ksoaxHVwSeO27EeQTYQLijcQfYBD0R2qEhZ4JTESoYvPdC23iDE6HENi4130TKKzIw5DS9CbqPObBVyAX7j6S083Uji6qqVfwyoatBAz0uEusqmgAu5djpbNoLH3KI5m2kNqFOuF6xw8Ig8nVX-ImTw1qacVTo0MGyqyJY',
    title: 'Mirissa Beach',
    location: 'Galle Road, Mirissa',
    rating: 4.8,
  ),
  const RecommendationItem(
    imageUrl:
        'https://lh3.googleusercontent.com/aida-public/AB6AXuD2c69Wp7sacY9G9gy1jwH_POZYVbH6oyyvf8uuFoU3xpGRt660cs9FGG7pYqMnyv-Rw5YDB_s0EG0U4EpzlAoD6ScxS6yZtwWJ37y8h13Bk1qVXl8r7xI7s9C87qpY4giQ7JKdtFucyzdAGQUxj34a0xFZ2CDFQCewdqCzNPMiBaycTtfSiLjwG6RvOcfW6FcMSw9NuGee3wiNJlTD3UqrVEOmlemjLSxOJuia7ZfDkm778EDEr2hh-MCTmYa2HkLCZvH3Fo2JJ8w',
    title: 'Yala National Park',
    location: 'Hambantota, Southern Province',
    rating: 4.5,
  ),
  const RecommendationItem(
    imageUrl:
        'https://images.unsplash.com/photo-1566073771259-6a8506099945?fit=crop&w=400&h=300',
    title: 'Sigiriya Rock Fortress',
    location: 'Matale, Central Province',
    rating: 4.9,
  ),
  const RecommendationItem(
    imageUrl:
        'https://images.unsplash.com/photo-1562781736-e6c0f33d5b1e?fit=crop&w=400&h=300',
    title: 'Ella Nine Arch Bridge',
    location: 'Ella, Uva Province',
    rating: 4.8,
  ),
  const RecommendationItem(
    imageUrl:
        'https://images.unsplash.com/photo-1598135753163-6167c1a1ad65?fit=crop&w=400&h=300',
    title: 'Galle Fort',
    location: 'Galle, Southern Province',
    rating: 4.7,
  ),
  const RecommendationItem(
    imageUrl:
        'https://images.unsplash.com/photo-1608140223577-c3c6b4b1e1d3?fit=crop&w=400&h=300',
    title: 'Temple of the Tooth',
    location: 'Kandy, Central Province',
    rating: 4.8,
  ),
  const RecommendationItem(
    imageUrl:
        'https://images.unsplash.com/photo-1591176931577-ff6a3d37dbc1?fit=crop&w=400&h=300',
    title: 'Yala Safari Experience',
    location: 'Yala National Park',
    rating: 4.6,
  ),
  const RecommendationItem(
    imageUrl:
        'https://images.unsplash.com/photo-1580837119756-563d608dd119?fit=crop&w=400&h=300',
    title: 'Unawatuna Beach',
    location: 'Galle District',
    rating: 4.5,
  ),
  const RecommendationItem(
    imageUrl:
        'https://images.unsplash.com/photo-1605640840605-14ac1855827b?fit=crop&w=400&h=300',
    title: "Little Adam's Peak",
    location: 'Ella, Uva Province',
    rating: 4.7,
  ),
  const RecommendationItem(
    imageUrl:
        'https://images.unsplash.com/photo-1577717903315-1691ae25ab3f?fit=crop&w=400&h=300',
    title: 'Dambulla Cave Temple',
    location: 'Dambulla, Central Province',
    rating: 4.7,
  ),
];
