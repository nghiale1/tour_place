import 'package:flutter/material.dart';

import 'destination.dart';
import 'destination_card.dart';

class PlaceListScreen extends StatelessWidget {
  final List<Destination> destinations = [
    Destination(
      name: 'Tajhat Jamidarbari',
      rating: 4.8,
      location: 'Bangladesh',
      price: 120,
      imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/ccab92684c8a27a903ac7315f88ba9e60bc02c1de645e805d3e894b77a6a5f3d?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
    ),
    Destination(
      name: 'Lake Fond',
      rating: 4.9,
      location: 'India',
      price: 250,
      imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/da752af9f82f2f7e39d21534c314293657251ee480048e06769cd6e99e8129a7?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
    ),
    Destination(
      name: 'Venice',
      rating: 4.7,
      location: 'Italy',
      price: 400,
      imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/9e47b8f73855d4d2598458636e4b364091febbd95add766de5bbb38b0d4e84c5?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
    ),
    Destination(
      name: "Saint Martin's Island",
      rating: 4.5,
      location: "Cox's Bazar",
      price: 150,
      imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/9ecfc264e3ed9ab28adde041fbdea68569dce6c88d0e31e67804fa351c26b96a?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
    ),
    Destination(
      name: 'Kangchenjungha',
      rating: 5.0,
      location: 'India',
      price: 300,
      imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/7c69d78873011d78fb4d348318b87d6291eff9bd9246765eec91a14391d1195b?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
    ),
    Destination(
      name: 'Sajek Valley',
      rating: 4.6,
      location: 'Bangladesh',
      price: 140,
      imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/b76695cc8367751064e352ee8324ad4887db5e9cb03e4375704a2d9c0f281b62?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
    ),
  ];

  PlaceListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: const Color(0xFFFDFDFD),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 44, 16, 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/c2351ef45ab25877102050ea8614b9360071f042a06eec2381f6f9c653249af3?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
                    width: 24,
                    height: 24,
                    semanticLabel: 'Back button',
                  ),
                  const Text(
                    'Most Visited',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2A2A2A),
                    ),
                  ),
                  const SizedBox(width: 24), // For alignment
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: destinations.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                    child: DestinationCard(destination: destinations[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}