import 'package:flutter/material.dart';

class BookNowButton extends StatelessWidget {
  const BookNowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          'https://cdn.builder.io/api/v1/image/assets/TEMP/5fb0224094a7b6d4cbc3b0512403187f3f7783d94cfe291ea369a9b663b420d5?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
          width: 48,
          height: 48,
        ),
        SizedBox(width: 10),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              // TODO: Implement booking functionality
            },
            child: Text(
              'Book Now',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFF75D37),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.symmetric(vertical: 17),
            ),
          ),
        ),
      ],
    );
  }
}