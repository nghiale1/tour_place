import 'package:flutter/material.dart';
import 'package:tour_place/features/chat_room/room_item.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: const [
        ChatItem(
          imagePath: 'assets/people/ishtiaq_zaman.png',
          name: 'Ishtiaq Zaman',
          message: 'Hello Raju How are you?',
          time: '20 Sep 2022',
          isUnread: true,
        ),
        ChatItem(
          imagePath: 'assets/people/ferdous_hossein.png',
          name: 'Ferdous Hossein',
          message: 'Whats up?',
          time: '19 Sep 2022',
          isUnread: false,
        ),
        ChatItem(
          imagePath: 'assets/people/hasan_ali.png',
          name: 'Hasan Ali',
          message: 'Thank you.',
          time: '18 Sep 2022',
          isUnread: false,
        ),
        ChatItem(
          imagePath: 'assets/people/majharul_alom.png',
          name: 'Majharul Alom',
          message: 'Can we meet tomorrow?',
          time: '17 Sep 2022',
          isUnread: true,
        ),
        ChatItem(
          imagePath: 'assets/people/raju_ahamed.png',
          name: 'Raju Ahamed',
          message: "Let's go to a trip?",
          time: '16 Sep 2022',
          isUnread: false,
        ),
        ChatItem(
          imagePath: 'assets/people/khalid_hossein.png',
          name: 'Khalid Hossein',
          message: 'Hey Raju, nice to meet you.',
          time: '15 Sep 2022',
          isUnread: false,
        ),
        ChatItem(
          imagePath: 'assets/people/kamal_khan.png',
          name: 'Kamal Khan',
          message: 'Hello Raju How are you?',
          time: '14 Sep 2022',
          isUnread: false,
        ),
        ChatItem(
          imagePath: 'assets/people/fardin_hasan.png',
          name: 'Fardin Hasan',
          message: '',
          time: '13 Sep 2022',
          isUnread: false,
        ),
      ],
    );
  }
}
