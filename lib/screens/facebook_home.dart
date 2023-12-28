import 'package:facebook_ui/widgets/icon_bar.dart';
import 'package:facebook_ui/widgets/new_post_bar.dart';
import 'package:facebook_ui/widgets/post_code.dart';
import 'package:facebook_ui/widgets/story_list.dart';
import 'package:facebook_ui/widgets/tool_bar.dart';
import 'package:flutter/material.dart';

class FacebookHome extends StatefulWidget {
  const FacebookHome({super.key});

  @override
  State<FacebookHome> createState() => _FacebookHomeState();
}

class _FacebookHomeState extends State<FacebookHome> {
  String profilePic =
      "https://z-p3-scontent.fcmb9-1.fna.fbcdn.net/v/t39.30808-6/367739148_1356784925251641_3511210706417171243_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeFCA9WOh-XdP81SCqdzWIa6pbXl0tsi7m-lteXS2yLub9iUENzxjjL6roP9T1gT6-DIZI1zLGJnOTK8NtIiM223&_nc_ohc=ulwPQTQe6twAX-jpshn&_nc_zt=23&_nc_ht=z-p3-scontent.fcmb9-1.fna&oh=00_AfBUNhh6VlWutZa2LeAUStSojR1EjZ_rHuw9VW2Hj4f5Sw&oe=6591780F";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Column(
          children: [
            const ToolBar(),
            IconBar(profilePic: profilePic),
            const Divider(
              thickness: 0.7,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    newPostBar(profilePic: profilePic),
                    const Divider(
                      thickness: 8,
                      color: Colors.black38,
                    ),
                    StoryListView(profilePic: profilePic),
                    const Divider(
                      thickness: 8,
                      color: Colors.black38,
                    ),
                    PostCode(profilePic: profilePic)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
