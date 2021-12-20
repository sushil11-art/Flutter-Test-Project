import 'package:flutter/material.dart';

class WhatsAppChatList extends StatelessWidget {
  const WhatsAppChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            const Icon(
              Icons.account_circle,
              size: 64,
              // color: Colors.white,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Sushil Phuyal",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                      Text(
                        "13/12/2021",
                        style: TextStyle(color: Colors.black45),
                      )
                    ],
                  ),
                  const Padding(
                      padding: EdgeInsets.all(2),
                      child: Text(
                        "hey i am using whats app",
                        style: TextStyle(color: Colors.black45, fontSize: 16),
                      )),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
