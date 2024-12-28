import 'package:flutter/material.dart';

import 'destination.dart';

class DestinationCard extends StatelessWidget {
  final Destination destination;

  const DestinationCard({Key? key, required this.destination}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(4, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
            child: Image.network(
              destination.imageUrl,
              width: 101,
              height: 107,
              fit: BoxFit.cover,
              semanticLabel: 'Image of ${destination.name}',
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        destination.name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF2A2A2A),
                        ),
                      ),
                      Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/4f3ca2c6c3ee8c2fd453cdfbc14217190a05546b361e53c8695fa7ae71e49c85?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
                        width: 20,
                        height: 20,
                        semanticLabel: 'Favorite',
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/b46df5245c13876c2b20d32d6ba66c84921d38b6a59257c278f1794e80c102b7?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
                        width: 15,
                        height: 15,
                        color: const Color(0xFFF75D37),
                      ),
                      const SizedBox(width: 3),
                      Text(
                        destination.rating.toString(),
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF2A2A2A),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/5d5181dc7a18b50f851e076048ad9ae41f08584bd1574452e34b9c6c0ce74600?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
                        width: 13,
                        height: 13,
                      ),
                      const SizedBox(width: 2),
                      Text(
                        destination.location,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF9D9D9D),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${destination.price}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF2A2A2A),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // TODO: Implement booking functionality
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF75D37),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 6),
                        ),
                        child: const Text(
                          'Book Now',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}