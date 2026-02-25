import 'destination_model.dart';

// Nearby places for different locations
final Map<String, List<Destination>> nearbyPlacesMap = {
  'Mirissa Beach': [
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1598135753163-6167c1a1ad65?fit=crop&w=400&h=300",
      title: "Galle Fort",
      location: "Galle, 30km away",
      rating: 4.7,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1591176931577-ff6a3d37dbc1?fit=crop&w=400&h=300",
      title: "Yala National Park",
      location: "Hambantota, 85km away",
      rating: 4.6,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1580837119756-563d608dd119?fit=crop&w=400&h=300",
      title: "Unawatuna Beach",
      location: "Galle, 35km away",
      rating: 4.5,
    ),
  ],
  'Sigiriya Rock Fortress': [
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1608140223577-c3c6b4b1e1d3?fit=crop&w=400&h=300",
      title: "Temple of the Tooth",
      location: "Kandy, 60km away",
      rating: 4.8,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1577717903315-1691ae25ab3f?fit=crop&w=400&h=300",
      title: "Dambulla Cave Temple",
      location: "Dambulla, 15km away",
      rating: 4.7,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1544735716-392fe2489ffa?fit=crop&w=400&h=300",
      title: "Minneriya National Park",
      location: "Polonnaruwa, 40km away",
      rating: 4.6,
    ),
  ],
  'Ella Nine Arch Bridge': [
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1605640840605-14ac1855827b?fit=crop&w=400&h=300",
      title: "Little Adam's Peak",
      location: "Ella, 2km away",
      rating: 4.8,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1587974928442-77dc3e0dba72?fit=crop&w=400&h=300",
      title: "Ravana Falls",
      location: "Ella, 6km away",
      rating: 4.5,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1559827260-dc66d52bef19?fit=crop&w=400&h=300",
      title: "Lipton's Seat",
      location: "Haputale, 25km away",
      rating: 4.7,
    ),
  ],
  'Yala National Park': [
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1598135753163-6167c1a1ad65?fit=crop&w=400&h=300",
      title: "Galle Fort",
      location: "Galle, 150km away",
      rating: 4.7,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1580837119756-563d608dd119?fit=crop&w=400&h=300",
      title: "Unawatuna Beach",
      location: "Galle, 140km away",
      rating: 4.5,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1519046904884-53103b34b206?fit=crop&w=400&h=300",
      title: "Bundala National Park",
      location: "Hambantota, 25km away",
      rating: 4.6,
    ),
  ],
  'Galle Fort': [
    const Destination(
      imageUrl: "https://lh3.googleusercontent.com/aida-public/AB6AXuACWWMzHvuZzWYuq1tXXagREhlC4eFYSN67pYXS1Fh-VIgi6E_iPGL79hIZXhrE7lRYANDqW7dxWoVzHWUWMN8nvJ7aHZu472KTY3xe-ksoaxHVwSeO27EeQTYQLijcQfYBD0R2qEhZ4JTESoYvPdC23iDE6HENi4130TKKzIw5DS9CbqPObBVyAX7j6S083Uji6qqVfwyoatBAz0uEusqmgAu5djpbNoLH3KI5m2kNqFOuF6xw8Ig8nVX-ImTw1qacVTo0MGyqyJY",
      title: "Mirissa Beach",
      location: "Mirissa, 40km away",
      rating: 4.8,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1580837119756-563d608dd119?fit=crop&w=400&h=300",
      title: "Unawatuna Beach",
      location: "Galle, 5km away",
      rating: 4.5,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1544735716-392fe2489ffa?fit=crop&w=400&h=300",
      title: "Hikkaduwa Beach",
      location: "Hikkaduwa, 20km away",
      rating: 4.6,
    ),
  ],
  'Temple of the Tooth': [
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1566073771259-6a8506099945?fit=crop&w=400&h=300",
      title: "Sigiriya Rock Fortress",
      location: "Matale, 60km away",
      rating: 4.9,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1519046904884-53103b34b206?fit=crop&w=400&h=300",
      title: "Royal Botanical Gardens",
      location: "Peradeniya, 6km away",
      rating: 4.7,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1544735716-392fe2489ffa?fit=crop&w=400&h=300",
      title: "Kandy Lake",
      location: "Kandy, 1km away",
      rating: 4.5,
    ),
  ],
  'Yala Safari Experience': [
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1519046904884-53103b34b206?fit=crop&w=400&h=300",
      title: "Bundala National Park",
      location: "Hambantota, 25km away",
      rating: 4.6,
    ),
    const Destination(
      imageUrl: "https://lh3.googleusercontent.com/aida-public/AB6AXuACWWMzHvuZzWYuq1tXXagREhlC4eFYSN67pYXS1Fh-VIgi6E_iPGL79hIZXhrE7lRYANDqW7dxWoVzHWUWMN8nvJ7aHZu472KTY3xe-ksoaxHVwSeO27EeQTYQLijcQfYBD0R2qEhZ4JTESoYvPdC23iDE6HENi4130TKKzIw5DS9CbqPObBVyAX7j6S083Uji6qqVfwyoatBAz0uEusqmgAu5djpbNoLH3KI5m2kNqFOuF6xw8Ig8nVX-ImTw1qacVTo0MGyqyJY",
      title: "Mirissa Beach",
      location: "Mirissa, 85km away",
      rating: 4.8,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1544735716-392fe2489ffa?fit=crop&w=400&h=300",
      title: "Kataragama Temple",
      location: "Kataragama, 30km away",
      rating: 4.7,
    ),
  ],
  'Unawatuna Beach': [
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1598135753163-6167c1a1ad65?fit=crop&w=400&h=300",
      title: "Galle Fort",
      location: "Galle, 5km away",
      rating: 4.7,
    ),
    const Destination(
      imageUrl: "https://lh3.googleusercontent.com/aida-public/AB6AXuACWWMzHvuZzWYuq1tXXagREhlC4eFYSN67pYXS1Fh-VIgi6E_iPGL79hIZXhrE7lRYANDqW7dxWoVzHWUWMN8nvJ7aHZu472KTY3xe-ksoaxHVwSeO27EeQTYQLijcQfYBD0R2qEhZ4JTESoYvPdC23iDE6HENi4130TKKzIw5DS9CbqPObBVyAX7j6S083Uji6qqVfwyoatBAz0uEusqmgAu5djpbNoLH3KI5m2kNqFOuF6xw8Ig8nVX-ImTw1qacVTo0MGyqyJY",
      title: "Mirissa Beach",
      location: "Mirissa, 35km away",
      rating: 4.8,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1544735716-392fe2489ffa?fit=crop&w=400&h=300",
      title: "Jungle Beach",
      location: "Unawatuna, 2km away",
      rating: 4.6,
    ),
  ],
  "Little Adam's Peak": [
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1562781736-e6c0f33d5b1e?fit=crop&w=400&h=300",
      title: "Ella Nine Arch Bridge",
      location: "Ella, 2km away",
      rating: 4.8,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1587974928442-77dc3e0dba72?fit=crop&w=400&h=300",
      title: "Ravana Falls",
      location: "Ella, 5km away",
      rating: 4.5,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1519046904884-53103b34b206?fit=crop&w=400&h=300",
      title: "Ella Rock",
      location: "Ella, 3km away",
      rating: 4.7,
    ),
  ],
  'Dambulla Cave Temple': [
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1566073771259-6a8506099945?fit=crop&w=400&h=300",
      title: "Sigiriya Rock Fortress",
      location: "Matale, 15km away",
      rating: 4.9,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1544735716-392fe2489ffa?fit=crop&w=400&h=300",
      title: "Minneriya National Park",
      location: "Polonnaruwa, 50km away",
      rating: 4.6,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1519046904884-53103b34b206?fit=crop&w=400&h=300",
      title: "Golden Temple",
      location: "Dambulla, 1km away",
      rating: 4.7,
    ),
  ],
  'Ravana Falls': [
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1562781736-e6c0f33d5b1e?fit=crop&w=400&h=300",
      title: "Ella Nine Arch Bridge",
      location: "Ella, 6km away",
      rating: 4.8,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1605640840605-14ac1855827b?fit=crop&w=400&h=300",
      title: "Little Adam's Peak",
      location: "Ella, 5km away",
      rating: 4.7,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1519046904884-53103b34b206?fit=crop&w=400&h=300",
      title: "Ella Rock",
      location: "Ella, 7km away",
      rating: 4.7,
    ),
  ],
  "Lipton's Seat": [
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1562781736-e6c0f33d5b1e?fit=crop&w=400&h=300",
      title: "Ella Nine Arch Bridge",
      location: "Ella, 25km away",
      rating: 4.8,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1519046904884-53103b34b206?fit=crop&w=400&h=300",
      title: "Dambatenne Tea Factory",
      location: "Haputale, 5km away",
      rating: 4.6,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1544735716-392fe2489ffa?fit=crop&w=400&h=300",
      title: "Adisham Monastery",
      location: "Haputale, 8km away",
      rating: 4.5,
    ),
  ],
  'Minneriya National Park': [
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1566073771259-6a8506099945?fit=crop&w=400&h=300",
      title: "Sigiriya Rock Fortress",
      location: "Matale, 40km away",
      rating: 4.9,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1577717903315-1691ae25ab3f?fit=crop&w=400&h=300",
      title: "Dambulla Cave Temple",
      location: "Dambulla, 50km away",
      rating: 4.7,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1519046904884-53103b34b206?fit=crop&w=400&h=300",
      title: "Kaudulla National Park",
      location: "Polonnaruwa, 20km away",
      rating: 4.6,
    ),
  ],
  'Royal Botanical Gardens': [
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1608140223577-c3c6b4b1e1d3?fit=crop&w=400&h=300",
      title: "Temple of the Tooth",
      location: "Kandy, 6km away",
      rating: 4.8,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1544735716-392fe2489ffa?fit=crop&w=400&h=300",
      title: "Kandy Lake",
      location: "Kandy, 5km away",
      rating: 4.5,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1519046904884-53103b34b206?fit=crop&w=400&h=300",
      title: "Bahiravokanda Vihara Buddha Statue",
      location: "Kandy, 4km away",
      rating: 4.6,
    ),
  ],
  'Kandy Lake': [
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1608140223577-c3c6b4b1e1d3?fit=crop&w=400&h=300",
      title: "Temple of the Tooth",
      location: "Kandy, 1km away",
      rating: 4.8,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1519046904884-53103b34b206?fit=crop&w=400&h=300",
      title: "Royal Botanical Gardens",
      location: "Peradeniya, 5km away",
      rating: 4.7,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1544735716-392fe2489ffa?fit=crop&w=400&h=300",
      title: "Udawattakele Forest Reserve",
      location: "Kandy, 2km away",
      rating: 4.6,
    ),
  ],
  'Bundala National Park': [
    const Destination(
      imageUrl: "https://lh3.googleusercontent.com/aida-public/AB6AXuD2c69Wp7sacY9G9gy1jwH_POZYVbH6oyyvf8uuFoU3xpGRt660cs9FGG7pYqMnyv-Rw5YDB_s0EG0U4EpzlAoD6ScxS6yZtwWJ37y8h13Bk1qVXl8r7xI7s9C87qpY4giQ7JKdtFucyzdAGQUxj34a0xFZ2CDFQCewdqCzNPMiBaycTtfSiLjwG6RvOcfW6FcMSw9NuGee3wiNJlTD3UqrVEOmlemjLSxOJuia7ZfDkm778EDEr2hh-MCTmYa2HkLCZvH3Fo2JJ8w",
      title: "Yala National Park",
      location: "Hambantota, 25km away",
      rating: 4.5,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1591176931577-ff6a3d37dbc1?fit=crop&w=400&h=300",
      title: "Yala Safari Experience",
      location: "Yala, 25km away",
      rating: 4.6,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1544735716-392fe2489ffa?fit=crop&w=400&h=300",
      title: "Tissamaharama Raja Maha Vihara",
      location: "Tissamaharama, 10km away",
      rating: 4.5,
    ),
  ],
  'Kataragama Temple': [
    const Destination(
      imageUrl: "https://lh3.googleusercontent.com/aida-public/AB6AXuD2c69Wp7sacY9G9gy1jwH_POZYVbH6oyyvf8uuFoU3xpGRt660cs9FGG7pYqMnyv-Rw5YDB_s0EG0U4EpzlAoD6ScxS6yZtwWJ37y8h13Bk1qVXl8r7xI7s9C87qpY4giQ7JKdtFucyzdAGQUxj34a0xFZ2CDFQCewdqCzNPMiBaycTtfSiLjwG6RvOcfW6FcMSw9NuGee3wiNJlTD3UqrVEOmlemjLSxOJuia7ZfDkm778EDEr2hh-MCTmYa2HkLCZvH3Fo2JJ8w",
      title: "Yala National Park",
      location: "Hambantota, 30km away",
      rating: 4.5,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1519046904884-53103b34b206?fit=crop&w=400&h=300",
      title: "Bundala National Park",
      location: "Hambantota, 40km away",
      rating: 4.6,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1544735716-392fe2489ffa?fit=crop&w=400&h=300",
      title: "Sithulpawwa Rock Temple",
      location: "Kataragama, 18km away",
      rating: 4.4,
    ),
  ],
  'Hikkaduwa Beach': [
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1598135753163-6167c1a1ad65?fit=crop&w=400&h=300",
      title: "Galle Fort",
      location: "Galle, 20km away",
      rating: 4.7,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1580837119756-563d608dd119?fit=crop&w=400&h=300",
      title: "Unawatuna Beach",
      location: "Galle, 25km away",
      rating: 4.5,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1519046904884-53103b34b206?fit=crop&w=400&h=300",
      title: "Tsunami Honganji Temple",
      location: "Hikkaduwa, 2km away",
      rating: 4.3,
    ),
  ],
  'Jungle Beach': [
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1580837119756-563d608dd119?fit=crop&w=400&h=300",
      title: "Unawatuna Beach",
      location: "Unawatuna, 2km away",
      rating: 4.5,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1598135753163-6167c1a1ad65?fit=crop&w=400&h=300",
      title: "Galle Fort",
      location: "Galle, 7km away",
      rating: 4.7,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1519046904884-53103b34b206?fit=crop&w=400&h=300",
      title: "Rumassala",
      location: "Unawatuna, 1km away",
      rating: 4.6,
    ),
  ],
  'Ella Rock': [
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1562781736-e6c0f33d5b1e?fit=crop&w=400&h=300",
      title: "Ella Nine Arch Bridge",
      location: "Ella, 3km away",
      rating: 4.8,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1605640840605-14ac1855827b?fit=crop&w=400&h=300",
      title: "Little Adam's Peak",
      location: "Ella, 3km away",
      rating: 4.7,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1587974928442-77dc3e0dba72?fit=crop&w=400&h=300",
      title: "Ravana Falls",
      location: "Ella, 6km away",
      rating: 4.5,
    ),
  ],
  'Golden Temple': [
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1577717903315-1691ae25ab3f?fit=crop&w=400&h=300",
      title: "Dambulla Cave Temple",
      location: "Dambulla, 1km away",
      rating: 4.7,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1566073771259-6a8506099945?fit=crop&w=400&h=300",
      title: "Sigiriya Rock Fortress",
      location: "Matale, 20km away",
      rating: 4.9,
    ),
    const Destination(
      imageUrl: "https://images.unsplash.com/photo-1519046904884-53103b34b206?fit=crop&w=400&h=300",
      title: "Rangiri Dambulla Stadium",
      location: "Dambulla, 3km away",
      rating: 4.2,
    ),
  ],
};

// Default nearby places when specific location is not found
final List<Destination> defaultNearbyPlaces = [
  const Destination(
    imageUrl: "https://images.unsplash.com/photo-1566073771259-6a8506099945?fit=crop&w=400&h=300",
    title: "Sigiriya Rock Fortress",
    location: "Matale, Central Province",
    rating: 4.9,
  ),
  const Destination(
    imageUrl: "https://images.unsplash.com/photo-1562781736-e6c0f33d5b1e?fit=crop&w=400&h=300",
    title: "Ella Nine Arch Bridge",
    location: "Ella, Uva Province",
    rating: 4.8,
  ),
  const Destination(
    imageUrl: "https://images.unsplash.com/photo-1598135753163-6167c1a1ad65?fit=crop&w=400&h=300",
    title: "Galle Fort",
    location: "Galle, Southern Province",
    rating: 4.7,
  ),
];
