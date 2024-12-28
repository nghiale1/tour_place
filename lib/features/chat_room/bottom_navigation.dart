import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 15, 16, 0),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x1A000000),
            blurRadius: 15,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 5),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage('https://cdn.builder.io/api/v1/image/assets/TEMP/071698cd1b2a2f59d302a939abd78a6e6a8e1fb599e82ea54430baaf9d4b18b9?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'Hello Raju How are you?',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF9D9D9D),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                '12:45 PM',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF9D9D9D),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem('Home', false),
              _buildNavItem('Saved', false),
              _buildNavItem('Notification', false),
              _buildNavItem('Chat', true),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage('https://cdn.builder.io/api/v1/image/assets/TEMP/7335bb5ed8506e649cfc4fdb571f0aca1c23457064268310c53b3277e1111387?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772'),
              ),
              const SizedBox(width: 8),
              const Text(
                'Ishtiaq Zaman',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2A2A2A),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(String label, bool isActive) {
    return Text(
      label,
      style: TextStyle(
        fontSize: 10,
        fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
        color: isActive ? const Color(0xFFF75D37) : const Color(0xFF9D9D9D),
      ),
    );
  }
}