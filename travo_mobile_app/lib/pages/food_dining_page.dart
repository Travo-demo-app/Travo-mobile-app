import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';

class FoodDiningPage extends StatelessWidget {
  const FoodDiningPage({super.key});

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
                _buildLocalFlavors(),
                const SizedBox(height: 30),
                _buildMustTry(),
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
            'https://lh3.googleusercontent.com/aida-public/AB6AXuCTkH8r72U4822Oo5KKbhV7JaZqL4ZoJsFzGEH1SthikJlRao9RgnGe6WB6eZS-UmHBUQqXwp5YOVFX-dva4wJ08MHrkSrOeuJmbei7LRHE6nMgzqrFd9_0YSAOoCbAf6Qm7EIBhyjJwvH4EKy9XzKk3ssVua-Ml03ZaFTf6nQ33EhC3Mp_tQoxlizt-mSwpAUwiyDBP3aY-2yXc8vBaOv7Wi7WYgN_aFb-ti_6hTTPQt0k54h_nltGJJ7m8NXRm5w1BqaWvF6fW90',
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
        const Positioned(
          bottom: 20,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Local Dining',
                style: TextStyle(
                  color: AppColors.textOnPrimary,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.restaurant, color: Colors.white, size: 16),
                  SizedBox(width: 6),
                  Text(
                    'Traditional Flavors',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
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

  Widget _buildLocalFlavors() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Local Flavors',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              _foodCard('Riverside Spice', '4.8', '\$\$'),
              _foodCard('Cloud Kitchen', '4.6', '\$\$\$'),
              _foodCard('Tekerghat Grill', '4.9', '\$'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _foodCard(String title, String rate, String price) {
    return SizedBox(
      width: 140,
      child: Padding(
        padding: const EdgeInsets.only(right: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                'https://picsum.photos/300',
                height: 120,
                width: 140,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            Row(
              children: [
                const Icon(Icons.star, size: 14, color: AppColors.warning),
                const SizedBox(width: 4),
                Text(rate),
                const Spacer(),
                Text(price),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMustTry() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Must-Try Dishes',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          _dishTile('Limestone Seafood Platter'),
          _dishTile('Hilly Green Curry'),
          _dishTile('Niladri Blue Mocktail'),
        ],
      ),
    );
  }

  Widget _dishTile(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              'https://picsum.photos/200',
              height: 70,
              width: 70,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
        ),
        child: Row(
          children: [
            const Icon(Icons.auto_awesome, color: AppColors.primary),
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
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Icon(Icons.send, color: AppColors.textOnPrimary),
            ),
          ],
        ),
      ),
    );
  }
}
