import 'package:flutter/material.dart';
import 'chat_list.dart';
import 'conversation_tab.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDFD),
      body: SafeArea(
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
                    semanticLabel: 'Chat icon',
                  ),
                  const Text(
                    'Chat',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2A2A2A),
                    ),
                  ),
                  const SizedBox(width: 24),
                ],
              ),
            ),
            const ConversationTab(),
            const SearchBar(),
            const Expanded(child: ChatList()),
          ],
        ),
      ),
    );
  }
}