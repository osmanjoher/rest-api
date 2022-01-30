import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class pageStory extends StatefulWidget {
  const pageStory({Key? key}) : super(key: key);

  @override
  _pageStoryState createState() => _pageStoryState();
}

class _pageStoryState extends State<pageStory> {
  final StoryController Controller = StoryController();

  get onVerticalSwipeComplete => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryView(
          controller: Controller,
        storyItems: [
          StoryItem.pageImage(
              url: "https://www.coxsbazarcity.com/wp-content/uploads/2019/12/Coxs-Bazar-Exclusive-picture-coxsbazarcity.com-21.jpg",
              controller: Controller),
          StoryItem.pageImage(
              url: "https://images6.fanpop.com/image/photos/41700000/Cox-s-Bazar-Bangladesh-bangladesh-41724937-1920-1080.jpg",
              controller: Controller),
          StoryItem.pageImage(
              url: "https://i.pinimg.com/originals/63/ba/1b/63ba1b23703a041474b48188d2945115.jpg",
              controller: Controller),
          StoryItem.pageImage(
              url: "https://i.pinimg.com/originals/63/ba/1b/63ba1b23703a041474b48188d2945115.jpg",
              controller: Controller),
        ],
          onComplete: (){
            Navigator.pop(context);
          },

      ),
    );
  }
}
