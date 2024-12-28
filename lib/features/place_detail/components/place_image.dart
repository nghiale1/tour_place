import 'package:flutter/material.dart';

class PlaceImage extends StatelessWidget {
  const PlaceImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://cdn.builder.io/api/v1/image/assets/TEMP/9a05c50d57f324ca3b9145dab1e88604a3cadd15c8392f01ddbd9cbe85e9bc01?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
          height: 300,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 44,
          left: 16,
          child: Row(
            children: [
              Image.network(
                'https://cdn.builder.io/api/v1/image/assets/TEMP/f4363c9ed87a91e5c10c26d08872c2c80a0d4e7ea98c1c5fec4f5399e63c1d5c?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
                width: 24,
                height: 24,
              ),
              SizedBox(width: 20),
              Text(
                'Place Details',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 26,
          left: 0,
          right: 0,
          child: Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/925ff657764d1fcda954e56540ad725e3d27c31966c11670361bb81828a2ad23?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
            width: 76,
            height: 10,
          ),
        ),
      ],
    );
  }
}