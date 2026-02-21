import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';

class TransportationPage extends StatelessWidget {
  const TransportationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            _header(context),
            Expanded(child: _content(context)),
          ],
        ),
      ),
      bottomNavigationBar: _bottomAIBar(context),
    );
  }

  // ---------------- HEADER ----------------
  Widget _header(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.surface.withValues(alpha: 0.95),
        border: Border(bottom: BorderSide(color: AppColors.divider)),
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () => Navigator.pop(context),
          ),
          const SizedBox(width: 6),
          const Expanded(
            child: Text(
              'Transportation',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Save',
              style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ---------------- CONTENT ----------------
  Widget _content(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          _placesSection(context),
          const Divider(height: 24),
          _routeSection(),
        ],
      ),
    );
  }

  // ---------------- PLACES SECTION ----------------
  Widget _placesSection(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // ✅ STANDARD CARD SIZE
    final cardWidth = (screenWidth * 0.78).clamp(260.0, 320.0);
    const cardHeight = 360.0;

    final places = [
      {
        'title': 'Yala National Park',
        'subtitle': 'Southern Sri Lanka',
        'imageUrl':
            'https://lh3.googleusercontent.com/aida-public/AB6AXuA5X8QjUkNLCMg00ftHnWovTNai-W6-1i44wRdEXVZZF7I1zfHgcxi_SQ-nG4fRDjsO4O0O4f_pLa0oVm-JUpfPVFsSMQNdZX6Jk_2hzJjiZDHH1hC0gT3xUlsCg-v5xR3X5PtCglnkfWVV9rWUGSmBjinJSCAJ7d--tetcrA-FA90AduISZvqyZREvvlnjeF9dWvO_iB94j9CioGosdHrs0JLlgkY7NW3vzdAW2npN0kLoZm6zHd4PtyxEOGlq1arIuUztHUW7OZc',
      },
      {
        'title': 'Mirissa Beach',
        'subtitle': 'Southern Sri Lanka',
        'imageUrl':
            'https://lh3.googleusercontent.com/aida-public/AB6AXuBDjZ3BsdtxDLdebcpX5d8jyXoQllW_w7Nmjq2N17tD3O2qGO7k0fHcy0coP9K6bpLE63JH2nAjr0h-LsX1xkhVZ5S7YMS6uxXoqfJuclwiICIxMzHgyhSODqUmb4xB6zzCtyQ7tXySlsZ3kcb_XNWc-4Exmtft1S0mGHTCPoaIA4Hmux7Umm_-NO2B4NASwwB3gaz3TJ8lCswt-e9Wxh5J22k4vPdvXIJo9WO2oK_WTyjI-DYhlNVE77dbNSKPd6kNq1BknSkYyXM',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Places you visit',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                '2 Destinations',
                style: TextStyle(fontSize: 12, color: AppColors.textSecondary),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: cardHeight,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: places.length,
            itemBuilder: (context, index) {
              final place = places[index];
              return _PlaceCard(
                width: cardWidth,
                height: cardHeight,
                title: place['title']!,
                subtitle: place['subtitle']!,
                imageUrl: place['imageUrl']!,
              );
            },
          ),
        ),
      ],
    );
  }

  // ---------------- ROUTE SECTION ----------------
  Widget _routeSection() {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Route Itinerary',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          _RouteItem(title: 'Colombo', subtitle: 'Start Point'),
          _RouteItem(title: 'Mirissa', subtitle: 'Stay 2 days'),
          _RouteItem(title: 'Yala National Park', subtitle: 'Stay 2 days'),
        ],
      ),
    );
  }

  // ---------------- BOTTOM BAR ----------------
  Widget _bottomAIBar(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
        decoration: BoxDecoration(
          color: AppColors.surface,
          border: Border(top: BorderSide(color: AppColors.divider)),
        ),
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.mic, color: AppColors.primary),
              onPressed: () {},
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: AppColors.inputFill,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Describe changes you want...',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_upward, color: Colors.white),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ================= PLACE CARD =================
class _PlaceCard extends StatelessWidget {
  final double width;
  final double height;
  final String title;
  final String subtitle;
  final String imageUrl;

  const _PlaceCard({
    required this.width,
    required this.height,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: AppColors.divider),
        ),
        child: Column(
          children: [
            // ✅ IMAGE (FIXED, SAFE)
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(24)),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // ✅ DETAILS (NO OVERFLOW)
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(14, 10, 14, 12),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        subtitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const _RowField(label: 'Duration', value: '2 Days'),
                      const _RowField(label: 'Priority', value: 'High'),
                      const _RowField(label: 'Budget', value: '\$250'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ================= ROW FIELD =================
class _RowField extends StatelessWidget {
  final String label;
  final String value;

  const _RowField({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: const TextStyle(color: AppColors.textSecondary)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.border),
            ),
            child: Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

// ================= ROUTE ITEM =================
class _RouteItem extends StatelessWidget {
  final String title;
  final String subtitle;

  const _RouteItem({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: const BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                    fontSize: 12, color: AppColors.textSecondary),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
