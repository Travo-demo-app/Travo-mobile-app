import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';

class TripItem {
  int index;
  final String title;
  String subtitle;
  final String tag;
  final String stay;
  final String stayInfo;
  final IconData icon;
  final Color? iconColor;
  final String mapImage;
  String location;
  int nights;
  String priority;
  double budget;
  String aiSummary;
  double latitude;
  double longitude;

  TripItem({
    required this.index,
    required this.title,
    required this.subtitle,
    required this.tag,
    required this.stay,
    required this.stayInfo,
    required this.icon,
    this.iconColor,
    required this.mapImage,
    required this.location,
    required this.nights,
    required this.priority,
    required this.budget,
    required this.aiSummary,
    required this.latitude,
    required this.longitude,
  });
}

class SavedTrip {
  final int id;
  final String name;
  final String dates;
  final String duration;
  final String imageUrl;
  final int destinations;
  final List<TripItem> itinerary;

  SavedTrip({
    required this.id,
    required this.name,
    required this.dates,
    required this.duration,
    required this.imageUrl,
    required this.destinations,
    required this.itinerary,
  });
}

// Get all saved trips
List<SavedTrip> getAllTrips() {
  return [
    SavedTrip(
      id: 1,
      name: 'Sri Lanka Adventure',
      dates: 'Oct 12 - Oct 24, 2024',
      duration: '12 Days',
      imageUrl:
          'https://images.unsplash.com/photo-1566073771259-6a8506099945?fit=crop&w=400&h=300',
      destinations: 3,
      itinerary: getSriLankaItinerary(),
    ),
    SavedTrip(
      id: 2,
      name: 'Maldives Paradise',
      dates: 'Nov 5 - Nov 12, 2024',
      duration: '7 Days',
      imageUrl:
          'https://images.unsplash.com/photo-1514282401047-d79a71a590e8?fit=crop&w=400&h=300',
      destinations: 2,
      itinerary: getMaldivesItinerary(),
    ),
    SavedTrip(
      id: 3,
      name: 'India Heritage Tour',
      dates: 'Dec 1 - Dec 15, 2024',
      duration: '14 Days',
      imageUrl:
          'https://images.unsplash.com/photo-1524492412937-b28074a5d7da?fit=crop&w=400&h=300',
      destinations: 5,
      itinerary: getIndiaItinerary(),
    ),
  ];
}

// Sri Lanka itinerary
List<TripItem> getSriLankaItinerary() {
  return [
    TripItem(
      index: 1,
      title: 'Colombo',
      subtitle: 'Oct 12 - Oct 15 • 3 Nights',
      tag: 'Flight',
      stay: 'Hikkaduwa Beach',
      stayInfo: 'Check-in 3 PM',
      icon: Icons.hotel,
      mapImage:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuA8o2AuZ9rX6RorwCZNpmbdkpnduZ4zKgBIcavJqcd0eszDorReta7xe5txeEZgIIdLVcYtjUlepyiv1dcmXooXzfSnX0BmZt0ErW_G2Z1d0OCsAgvfds0wlmV1wsux5Z6mfq2sBVJwUh66wKgoevl8xQ-alDJ0fh2TAwl2v98oE0zjjRmtNmOnRUhJQ3_fGbAwf9FXa1M7oFYSfVTc58LlBvcMFrrjLHec21FkdcW2ZWO3cE8QvjpAmmKa-Sqp_GND5cIAicN1vs',
      location: 'Western Province, Sri Lanka',
      nights: 3,
      priority: 'High',
      budget: 450.0,
      aiSummary: 'Colombo is the vibrant capital city offering a mix of colonial architecture, bustling markets, and modern shopping. Perfect for acclimatization and exploring Sri Lankan culture.',
      latitude: 6.9271,
      longitude: 79.8612,
    ),
    TripItem(
      index: 2,
      title: 'Galle',
      subtitle: 'Oct 15 - Oct 19 • 4 Nights',
      tag: 'Train',
      stay: 'Galle Fort',
      stayInfo: '4.8 Rating • Luxury',
      icon: Icons.star,
      iconColor: AppColors.warning,
      mapImage:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuDm1yuBYmTDFQXSdJ5oY7adXaSdEprS3H9b7yNhf1y7_Mw3x00_qDGva_Skiyd5rRa9h3U6lvn14dhkfx49cq6hZgNq7cBfk0ak9WeqeBBOIzui84rUaUb_j2RUC6WOMNVdZuuSzgaD2RYlKIPwcn385JP3IAnuWjjCXTaiunUApJvrqctasDDPoXw7idoU4cDnheMlwepmJgKMKMIm-BFY7rG8RpukrHI1yYJegoUusEmfvKNB86lhXHLo8yv7_2OpJIL5JJO3ap4',
      location: 'Southern Sri Lanka',
      nights: 4,
      priority: 'High',
      budget: 600.0,
      aiSummary: 'Galle Fort is a UNESCO World Heritage site with stunning colonial architecture, charming cafes, and beautiful beaches. Ideal for history lovers and relaxation by the ocean.',
      latitude: 6.0535,
      longitude: 80.2210,
    ),
    TripItem(
      index: 3,
      title: 'Yala Park',
      subtitle: 'Oct 19 - Oct 22 • 3 Nights',
      tag: 'Bus',
      stay: 'Yala Safari',
      stayInfo: 'Breakfast Included',
      icon: Icons.restaurant,
      mapImage:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuDHFLKxxt40evY_6SUhDldGSvg4u2kQLD5NoIGPcCmQwMEzG89kuh8-rHzKH5YKRzkeITCAuGh7r_se4dQClJQQaJ61euxF3QuUPvqCFFiSIoEjdP6-PNBcEzzIIPfxfz6pG8VL48Ed9nq-lKCPlksh3oDHY0SJohpO4GycNQQmfMWSCWltssq9BNrdOkJ6MzIaHI7E6aSpow98cF73wsMoUXxbryDm3NLsIRb68i2HbXnmve9CCk8_lC0J5ewSms2DMTteIRfT3e8',
      location: 'Southern Sri Lanka',
      nights: 3,
      priority: 'Medium',
      budget: 350.0,
      aiSummary: 'Yala National Park is famous for having the highest leopard density in the world. Experience thrilling wildlife safaris, diverse bird species, and scenic natural landscapes.',
      latitude: 6.3724,
      longitude: 81.5185,
    ),
  ];
}

// Maldives itinerary
List<TripItem> getMaldivesItinerary() {
  return [
    TripItem(
      index: 1,
      title: 'Malé',
      subtitle: 'Nov 5 - Nov 7 • 2 Nights',
      tag: 'Flight',
      stay: 'Hulhule Island Hotel',
      stayInfo: 'Airport Transfer Included',
      icon: Icons.flight_land,
      mapImage:
          'https://images.unsplash.com/photo-1514282401047-d79a71a590e8?fit=crop&w=400&h=300',
      location: 'Malé, Maldives',
      nights: 2,
      priority: 'Medium',
      budget: 300.0,
      aiSummary: 'Malé is the bustling capital offering colorful markets, historic mosques, and local Maldivian cuisine. A great introduction to island culture before heading to resorts.',
      latitude: 4.1755,
      longitude: 73.5093,
    ),
    TripItem(
      index: 2,
      title: 'Resort Island',
      subtitle: 'Nov 7 - Nov 12 • 5 Nights',
      tag: 'Boat',
      stay: 'Paradise Resort & Spa',
      stayInfo: 'All Inclusive',
      icon: Icons.star,
      iconColor: AppColors.warning,
      mapImage:
          'https://images.unsplash.com/photo-1573843981267-be1999ff37cd?fit=crop&w=400&h=300',
      location: 'South Malé Atoll, Maldives',
      nights: 5,
      priority: 'High',
      budget: 1250.0,
      aiSummary: 'Luxury overwater villa experience with pristine beaches, crystal clear waters, and world-class snorkeling. Perfect for water sports, diving with manta rays, and ultimate relaxation.',
      latitude: 3.8594,
      longitude: 73.3866,
    ),
  ];
}

// India Heritage Tour itinerary
List<TripItem> getIndiaItinerary() {
  return [
    TripItem(
      index: 1,
      title: 'Delhi',
      subtitle: 'Dec 1 - Dec 4 • 3 Nights',
      tag: 'Flight',
      stay: 'Taj Palace Hotel',
      stayInfo: '5-Star Luxury',
      icon: Icons.hotel,
      mapImage:
          'https://images.unsplash.com/photo-1587474260584-136574528ed5?fit=crop&w=400&h=300',
      location: 'New Delhi, India',
      nights: 3,
      priority: 'High',
      budget: 400.0,
      aiSummary: 'India\'s capital blends ancient and modern with Red Fort, India Gate, and Qutub Minar. Explore bustling markets, sample street food, and discover Mughal heritage.',
      latitude: 28.6139,
      longitude: 77.2090,
    ),
    TripItem(
      index: 2,
      title: 'Agra',
      subtitle: 'Dec 4 - Dec 7 • 3 Nights',
      tag: 'Train',
      stay: 'ITC Mughal',
      stayInfo: 'Taj View',
      icon: Icons.star,
      iconColor: AppColors.warning,
      mapImage:
          'https://images.unsplash.com/photo-1564507592333-c60657eea523?fit=crop&w=400&h=300',
      location: 'Agra, Uttar Pradesh',
      nights: 3,
      priority: 'High',
      budget: 450.0,
      aiSummary: 'Home to the iconic Taj Mahal, one of the Seven Wonders of the World. Visit Agra Fort and witness stunning sunrise views of this marble masterpiece.',
      latitude: 27.1767,
      longitude: 78.0081,
    ),
    TripItem(
      index: 3,
      title: 'Jaipur',
      subtitle: 'Dec 7 - Dec 10 • 3 Nights',
      tag: 'Bus',
      stay: 'Rambagh Palace',
      stayInfo: 'Heritage Property',
      icon: Icons.castle,
      mapImage:
          'https://images.unsplash.com/photo-1599661046289-e31897846e41?fit=crop&w=400&h=300',
      location: 'Jaipur, Rajasthan',
      nights: 3,
      priority: 'High',
      budget: 500.0,
      aiSummary: 'The Pink City enchants with Amber Fort, Hawa Mahal, and City Palace. Experience royal heritage, vibrant bazaars, and traditional Rajasthani cuisine.',
      latitude: 26.9124,
      longitude: 75.7873,
    ),
    TripItem(
      index: 4,
      title: 'Udaipur',
      subtitle: 'Dec 10 - Dec 13 • 3 Nights',
      tag: 'Flight',
      stay: 'Taj Lake Palace',
      stayInfo: 'Floating Palace',
      icon: Icons.water,
      iconColor: Colors.blue,
      mapImage:
          'https://images.unsplash.com/photo-1609920658906-8223bd289001?fit=crop&w=400&h=300',
      location: 'Udaipur, Rajasthan',
      nights: 3,
      priority: 'Medium',
      budget: 550.0,
      aiSummary: 'The City of Lakes offers romantic palaces, boat rides on Lake Pichola, and stunning sunset views. Stay in the iconic floating palace hotel.',
      latitude: 24.5854,
      longitude: 73.7125,
    ),
    TripItem(
      index: 5,
      title: 'Mumbai',
      subtitle: 'Dec 13 - Dec 15 • 2 Nights',
      tag: 'Flight',
      stay: 'Taj Mahal Palace',
      stayInfo: 'Sea View',
      icon: Icons.restaurant,
      mapImage:
          'https://images.unsplash.com/photo-1570168007204-dfb528c6958f?fit=crop&w=400&h=300',
      location: 'Mumbai, Maharashtra',
      nights: 2,
      priority: 'Medium',
      budget: 350.0,
      aiSummary: 'India\'s financial capital offers Bollywood glamour, Gateway of India, Marine Drive, and diverse street food. Experience the fast-paced cosmopolitan culture.',
      latitude: 19.0760,
      longitude: 72.8777,
    ),
  ];
}
