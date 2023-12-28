import 'package:facebook_ui/models/story_models.dart';
import 'package:flutter/material.dart';

class StoryListView extends StatelessWidget {
  StoryListView({
    super.key,
    required this.profilePic,
  });

  final String profilePic;
  final List<StoryModel> stories = [
    StoryModel(
        story: "story",
        uid: "uid",
        userImage: "userImage",
        userName: "userName"),
    StoryModel(
      story:
          "https://cdn.shopify.com/s/files/1/0344/2586/4328/articles/persons_hand_delivering_a_vibrant_bouquet_from_Tooka_Flo_6616f8fb-b2ff-4071-bc7c-d3e32b7ba9e2_1024x1024.png?v=1686679475",
      uid: "100",
      userImage: "https://randomuser.me/api/portraits/women/60.jpg",
      userName: "Gina Bowman",
    ),
    StoryModel(
      story:
          "https://images.unsplash.com/photo-1529619768328-e37af76c6fe5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2l0eSUyMG5pZ2h0fGVufDB8fDB8fHww&w=1000&q=80",
      uid: "200",
      userImage: "https://randomuser.me/api/portraits/men/33.jpg",
      userName: "Robert Hudson",
    ),
    StoryModel(
      story:
          "https://upload.wikimedia.org/wikipedia/commons/4/4c/Beauty_of_Sigiriya_by_Binuka.jpg",
      uid: "300",
      userImage: "https://randomuser.me/api/portraits/women/5.jpg",
      userName: "Georgia Dixon",
    ),
    StoryModel(
      story:
          "https://img.olympicchannel.com/images/image/private/t_s_w960/t_s_16_9_g_auto/f_auto/primary/peml11q6maltpwsohdmi",
      uid: "400",
      userImage: "https://randomuser.me/api/portraits/men/11.jpg",
      userName: "Jon Reyes",
    ),
    StoryModel(
      story:
          "https://assets.mspimages.in/wp-content/uploads/2021/09/Samsung-Galaxy-M52-5G-Brand-Story.png",
      uid: "500",
      userImage: "https://randomuser.me/api/portraits/men/32.jpg",
      userName: "Jose Holt",
    ),
    StoryModel(
      story:
          "https://images.unsplash.com/photo-1580483046931-aaba29b81601?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cnVzc2lhbiUyMGdpcmx8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      uid: "600",
      userImage: "https://randomuser.me/api/portraits/women/79.jpg",
      userName: "Jill Jacobs",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 176,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: stories.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 160,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    color: Colors.grey.shade600),
                child: index == 0
                    ? Stack(
                        children: [
                          Container(
                            height: 110,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(profilePic),
                                  fit: BoxFit.cover),
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  topLeft: Radius.circular(15)),
                            ),
                          ),
                          Positioned(
                            bottom: 38,
                            left: 1,
                            right: 1,
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 27, 129, 253),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Create\n story",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 14),
                            ),
                          )
                        ],
                      )
                    : Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 160,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(stories[index].story),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.25),
                                        BlendMode.darken)),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          Positioned(
                            top: 4,
                            left: 4,
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.blue),
                              child: Padding(
                                padding: const EdgeInsets.all(1.5),
                                child: CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(stories[index].userImage),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8, right: 35),
                              child: Text(
                                stories[index].userName,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13),
                              ),
                            ),
                          )
                        ],
                      ),
              ),
            );
          }),
    );
  }
}
