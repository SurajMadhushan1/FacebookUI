import 'package:flutter/material.dart';

class IconBar extends StatelessWidget {
  const IconBar({
    super.key,
    required this.profilePic,
  });

  final String profilePic;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const TabIcon(
          icon: Icons.home,
        ),
        const TabIcon(
          icon: Icons.people,
        ),
        const TabIcon(
          icon: Icons.ondemand_video_outlined,
        ),
        const TabIcon(
          icon: Icons.notifications,
        ),
        Container(
          width: 35,
          height: 35,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color.fromARGB(238, 55, 128, 231)),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(profilePic),
                ),
                const Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 7,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class TabIcon extends StatelessWidget {
  const TabIcon({
    super.key,
    required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.white,
      size: 35,
    );
  }
}
