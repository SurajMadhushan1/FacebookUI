import 'package:facebook_ui/models/post_model.dart';
import 'package:flutter/material.dart';

class PostCode extends StatelessWidget {
  PostCode({
    super.key,
    required this.profilePic,
  });

  final String profilePic;

  final List<PostModel> posts = [
    PostModel(
      post:
          "https://z-p3-scontent.fcmb9-1.fna.fbcdn.net/v/t39.30808-6/412674437_1428383798091753_2301287127529953428_n.jpg?stp=cp6_dst-jpg_s1080x2048&_nc_cat=106&ccb=1-7&_nc_sid=783fdb&_nc_eui2=AeFANvXNdoCQPehOjc0Yy0hqPiPiq4VzWDI-I-KrhXNYMnhZOibZ_Z19p1lRQDBwRRK36e3fYp7KVybW_1yOhhkl&_nc_ohc=oHnNKGGt3QMAX8hBi1_&_nc_zt=23&_nc_ht=z-p3-scontent.fcmb9-1.fna&oh=00_AfC33OJF2s1AhPvRX_GQn-GqU0msszjTforCKvCG2JQ11g&oe=6592197B",
      time: "7 h",
      caption: "New cover!",
      userImage:
          "https://z-p3-scontent.fcmb9-1.fna.fbcdn.net/v/t39.30808-6/367739148_1356784925251641_3511210706417171243_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeFCA9WOh-XdP81SCqdzWIa6pbXl0tsi7m-lteXS2yLub9iUENzxjjL6roP9T1gT6-DIZI1zLGJnOTK8NtIiM223&_nc_ohc=ulwPQTQe6twAX-jpshn&_nc_zt=23&_nc_ht=z-p3-scontent.fcmb9-1.fna&oh=00_AfBUNhh6VlWutZa2LeAUStSojR1EjZ_rHuw9VW2Hj4f5Sw&oe=6591780F",
      uid: "100",
      userName: "Suraj Madhushan",
      type: "updated cover photo",
    ),
    PostModel(
      post:
          "https://images.unsplash.com/photo-1529619768328-e37af76c6fe5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2l0eSUyMG5pZ2h0fGVufDB8fDB8fHww&w=1000&q=80",
      time: "5 days",
      caption: "Feeling blessed.",
      userImage: "https://randomuser.me/api/portraits/men/33.jpg",
      uid: "200",
      userName: "Robert Hudson",
      type: "updated profile photo",
    ),
    PostModel(
      post:
          "https://upload.wikimedia.org/wikipedia/commons/4/4c/Beauty_of_Sigiriya_by_Binuka.jpg",
      time: "1 month",
      caption: "Enjoying the moment.",
      userImage: "https://randomuser.me/api/portraits/women/5.jpg",
      uid: "300",
      userName: "Georgia Dixon",
      type: "at Los Angeles, CA",
    ),
    PostModel(
      post:
          "https://img.olympicchannel.com/images/image/private/t_s_w960/t_s_16_9_g_auto/f_auto/primary/peml11q6maltpwsohdmi",
      time: "2 h",
      caption: "Making memories.",
      userImage: "https://randomuser.me/api/portraits/men/11.jpg",
      uid: "400",
      userName: "Jon Reyes",
      type: "updated profile photo",
    ),
    PostModel(
      post:
          "https://assets.mspimages.in/wp-content/uploads/2021/09/Samsung-Galaxy-M52-5G-Brand-Story.png",
      time: "10 days",
      caption: "Life is great!",
      userImage: "https://randomuser.me/api/portraits/men/32.jpg",
      uid: "500",
      userName: "Jose Holt",
      type: "at Paris, France",
    ),
    PostModel(
      post:
          "https://images.unsplash.com/photo-1580483046931-aaba29b81601?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cnVzc2lhbiUyMGdpcmx8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      time: "3 months",
      caption: "Cherishing the day.",
      userImage: "https://randomuser.me/api/portraits/women/79.jpg",
      uid: "600",
      userName: "Jill Jacobs",
      type: "updated cover photo",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: posts.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                    child: Padding(
                      padding: const EdgeInsets.all(1.5),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(posts[index].userImage),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        posts[index].userName,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            height: 1),
                      ),
                      Text(
                        posts[index].type,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                      const Row(
                        children: [
                          Text(
                            "2h",
                            style: TextStyle(color: Colors.grey, fontSize: 11),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.public,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  const Icon(
                    Icons.more_horiz_outlined,
                    color: Colors.grey,
                  )
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  posts[index].caption,
                  style: const TextStyle(
                      color: Colors.white, fontSize: 15, height: 1),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Image(image: NetworkImage(posts[index].post)),
              const SizedBox(
                height: 3,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "650 Likes",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "240 Comments",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "10 Shares",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ActionButtons(
                    icon: Icons.thumb_up_alt_outlined,
                    text: "Like",
                  ),
                  ActionButtons(
                    icon: Icons.comment,
                    text: "Comment",
                  ),
                  ActionButtons(
                    icon: Icons.reply,
                    text: "Share",
                  ),
                ],
              ),
              Divider(
                height: 30,
                thickness: 5,
                color: Colors.grey.shade900,
              )
            ],
          );
        });
  }
}

class ActionButtons extends StatelessWidget {
  ActionButtons({super.key, required this.icon, required this.text});
  IconData icon;
  String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey,
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
