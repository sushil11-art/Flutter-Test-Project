import 'package:flutter/material.dart';
import 'package:ui_app/widgets/whatsapp/wa_chat_list.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return Column(
          children: const [
            WhatsAppChatList(),
            WhatsAppChatList(),
            WhatsAppChatList()
          ],
        );
      },
    );
  }
}
