import 'package:flutter/material.dart';

import 'chat_input.dart';
import 'message_bubble.dart';

class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back_ios)),
        title: Text(
          'Ishtiaq Zaman',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF2A2A2A),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: const Color(0xFFFDFDFD),
          ),
          constraints: const BoxConstraints(maxWidth: 480),
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: const [
                    MessageBubble(
                      text:
                          'Hello Raju, How are you? Want to know your experience.',
                      isMe: false,
                      time: '12:45 PM',
                    ),
                    MessageBubble(
                      text:
                          "hey, I'm fine & you? that was a very nice place. The place was excellent and my experience was really good.",
                      isMe: true,
                      time: '12:44 PM',
                    ),
                    MessageBubble(
                      text:
                          'Lorem ipsum dolor sit amet consectetur. Non non sed tellus tellus et fringilla consequat donec. Non etiam feugiat ut in sed.',
                      isMe: false,
                      time: '12:43 PM',
                    ),
                    MessageBubble(
                      text: 'Lorem ipsum dolor sit amet conse ctetur.',
                      isMe: true,
                      time: '12:35 PM',
                    ),
                  ],
                ),
              ),
              const ChatInput(),
            ],
          ),
        ),
      ),
    );
  }
}
