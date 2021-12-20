import 'package:flutter/material.dart';
import 'package:ui_app/widgets/instagram/insta_body.dart';

class InstagramScreen extends StatelessWidget {
  const InstagramScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      backgroundColor: Colors.white,
      title: SizedBox(
          height: AppBar().preferredSize.height * 0.75,
          child: Image.asset("assets/images/instagram.png")),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: Icon(
            Icons.favorite_border_outlined,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: Icon(Icons.send, color: Colors.black),
        )
      ],
    );
    return Scaffold(
      appBar: appBar,
      backgroundColor: Colors.white,
      body: InstaBody(),
      bottomNavigationBar: Container(
        // alignment: Alignment.center,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.home, size: 30)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search_outlined, size: 30)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_box_outlined,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shop_outlined,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person,
                    size: 30,
                  ))
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 0,
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home)),
      //     BottomNavigationBarItem(icon: Icon(Icons.search)),
      //     BottomNavigationBarItem(icon: Icon(Icons.add_box)),
      //     BottomNavigationBarItem(icon: Icon(Icons.shop)),
      //     BottomNavigationBarItem(icon: Icon(Icons.person))
      //   ],
      // ),
    );
  }
}
