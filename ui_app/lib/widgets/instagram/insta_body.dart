import 'package:flutter/material.dart';
import 'package:ui_app/widgets/instagram/insta_new_feed.dart';
import 'package:ui_app/widgets/instagram/insta_stories.dart';

class InstaBody extends StatelessWidget {
  const InstaBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [InstaStories(), Divider(), InstaFeed()],
      ),
    );
  }
}
