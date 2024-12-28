import 'package:flutter/material.dart';

class PlaceInfo extends StatelessWidget {
  const PlaceInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Saint Martin's Island",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2A2A2A),
              ),
            ),
            Text(
              '\$150',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2A2A2A),
              ),
            ),
          ],
        ),
        SizedBox(height: 6),
        Row(
          children: [
            Image.network(
              'https://cdn.builder.io/api/v1/image/assets/TEMP/5b6bd54c7a0d10e29a2a7108069ce8e136f93796988d48e6086c5388c826ed2b?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
              width: 16,
              height: 16,
            ),
            SizedBox(width: 2),
            Text(
              "Cox's Bazar, Bangladesh",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF9D9D9D),
              ),
            ),
          ],
        ),
        SizedBox(height: 6),
        Row(
          children: [
            Image.network(
              'https://cdn.builder.io/api/v1/image/assets/TEMP/b46df5245c13876c2b20d32d6ba66c84921d38b6a59257c278f1794e80c102b7?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
              width: 15,
              height: 14,
            ),
            SizedBox(width: 3),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF9D9D9D),
                ),
                children: [
                  TextSpan(text: '4.8 '),
                  TextSpan(
                    text: '(150 Reviews)',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}