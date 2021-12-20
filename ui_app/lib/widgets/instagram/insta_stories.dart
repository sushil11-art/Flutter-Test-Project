import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:ui_app/dummy_data.dart';
import 'package:avatars/avatars.dart';

class InstaStories extends StatelessWidget {
  const InstaStories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var screenHeight = MediaQuery.of(context).size.height;
    // var appBarHeight = AppBar().preferredSize.height;
    // var bottomBarHeight=BottomAppBar().
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dummyStoryData.length,
              itemBuilder: (context, index) {
                return Stack(children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height,
                    margin: const EdgeInsets.only(left: 10),
                    child: const CircleAvatar(
                      backgroundColor: Colors.blue,
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg'),
                    ),
                  ),
                  index == 0
                      ? const Positioned(
                          right: 5,
                          top: 80,
                          child: CircleAvatar(
                            backgroundColor: Colors.blueAccent,
                            radius: 10.0,
                            child: Icon(
                              Icons.add,
                              size: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        )
                      : Container()
                ]);
              },
            ),
          ),
        )
      ],
    );
  }
}
