import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // 1. The Dark Background Container
        Container(
          height: 200,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xFF131313), Color(0xFF313131)],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Location',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'West, Balurghat',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down, color: Colors.white70),
                    ],
                  ),
                  // User Profile Image
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://storyblok-cdn.photoroom.com/f/191576/1200x800/a3640fdc4c/profile_picture_maker_before.webp',
                        ), // Replace with your image
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        // 2. The Overlapping Search Bar
        Positioned(
          bottom: -20,
          left: 20,
          right: 20,
          child: Container(
            height: 55,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Icon(Icons.search),
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search coffee',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                // Filter Button
                Container(
                  margin: const EdgeInsets.all(4),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xFFC67C4E), // The tan/brown color
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.tune, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
