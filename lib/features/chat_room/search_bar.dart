import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xFFD1D1D1)),
      ),
      child: Row(
        children: [
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/1282b6c4b0939a67eee2abab647fef8243222d3ffa869043b4586576b1e47f37?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
            width: 24,
            height: 24,
            semanticLabel: 'Search icon',
          ),
          const SizedBox(width: 10),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search any chats...',
                hintStyle: TextStyle(
                  color: Color(0xFF9D9D9D),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}