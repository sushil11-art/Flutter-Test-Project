import 'package:flutter/material.dart';
import 'package:ui_app/widgets/whatsapp/wa_contact_list.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Select contact',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 21),
              ),
              Text(
                '126 contact',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 15),
              )
            ],
          ),
          backgroundColor: const Color.fromRGBO(18, 140, 126, 5),
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 20), child: Icon(Icons.search)),
            Padding(
                padding: EdgeInsets.only(right: 18),
                child: Icon(Icons.more_vert))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 20),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.baseline,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(8),
                      // width: MediaQuery.of(context).size.width * 0.1,
                      // height: MediaQuery.of(context).size.height * 0.2,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(18, 140, 126, 5)),
                      child: const Icon(
                        Icons.group_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: const [
                          Text("New Group",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 20),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.baseline,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(8),
                      // width: MediaQuery.of(context).size.width * 0.1,
                      // height: MediaQuery.of(context).size.height * 0.2,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(18, 140, 126, 5)),
                      child: const Icon(
                        Icons.person_add_alt_1_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: const [
                          Text("New Contact",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              WhatsAppContactList(),
              WhatsAppContactList(),
              WhatsAppContactList(),
            ],
          ),
        ));
  }
}
