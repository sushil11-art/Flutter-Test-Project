// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InstaFeed extends StatelessWidget {
  const InstaFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Hello world",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )
                ],
              ),
              const Icon(Icons.more_vert)
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg'))),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 14, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.favorite_border_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.chat_bubble_outline),
                  SizedBox(width: 10),
                  Icon(Icons.share_outlined),
                ],
              ),
              Icon(Icons.save_alt_outlined)
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Liked by sushil and 44 others",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Add a comment ...",
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(14),
          child: Row(
            children: const [
              Text(
                "20 minutes ago",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }
}
