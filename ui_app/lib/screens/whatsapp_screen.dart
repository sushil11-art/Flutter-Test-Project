import 'package:flutter/material.dart';
import 'package:ui_app/widgets/whatsapp/wa_chat_widget.dart';
import 'package:get/get.dart';

// import 'package:ui_app/widgets/whatsapp/wa_tab_bar.dart';

class WhatsAppScreen extends StatelessWidget {
  const WhatsAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 2,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(18, 140, 126, 5),
          onPressed: () => Get.toNamed('/contact-page'),
          child: Icon(Icons.chat),
        ),
        appBar: AppBar(
            title: const Text(
              "WhatsApp",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
            actions: const [
              Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.search)),
              Padding(
                  padding: EdgeInsets.only(right: 18),
                  child: Icon(Icons.more_vert))
            ],
            backgroundColor: const Color.fromRGBO(18, 140, 126, 5),
            bottom: const TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text("CHATS"),
                ),
                Tab(
                  child: Text('STATUS'),
                ),
                Tab(
                  child: Text('CALLS'),
                )
              ],
            )),
        body: TabBarView(
          children: [
            Text("camera screen"),
            ChatScreen(),
            Text("Status Screen"),
            Text("calls scrreen")
          ],
        ),
      ),
    );
  }
}
