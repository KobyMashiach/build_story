import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final StoryController controller = StoryController();
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          height: 300,
          child: StoryView(
            controller: controller,
            storyItems: [
              StoryItem.text(
                title:
                    "Koby's Story!\nMy first Story app, Flutter is awesome!. \n\nTap!",
                backgroundColor: Colors.orange,
                roundedTop: true,
              ),
              StoryItem.inlineImage(
                url:
                    "https://www.weber.co.il/wp-content/uploads/2018/01/steak-2936531_1920.jpg",
                controller: controller,
                caption: Text(
                  "Steak is the best!.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.black54,
                    fontSize: 17,
                  ),
                ),
              ),
              StoryItem.inlineImage(
                url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
                controller: controller,
                caption: Text(
                  "Hektas, sektas and skatad",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.black54,
                    fontSize: 17,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
