import 'package:flutter/material.dart';

class WhatsAppContactList extends StatelessWidget {
  const WhatsAppContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, top: 20),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.baseline,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Icon(Icons.account_circle_rounded),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            // width: MediaQuery.of(context).size.width * 0.1,
            // height: MediaQuery.of(context).size.height * 0.2,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),

            child: FittedBox(
              child: Icon(Icons.account_circle_rounded,
                  size: 30, color: Colors.white),
            ),
            // child: const CircleAvatar(
            //   backgroundImage: NetworkImage(
            //       'https://media.istockphoto.com/photos/self-management-is-a-freelancers-greatest-tool-picture-id1294442411'),
            // )
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("+9779861873263",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                Padding(
                  padding: EdgeInsets.only(top: 2),
                  child: Text("Hey,i am using whatsapp"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
