import 'package:flutter/material.dart';

class ToolBar extends StatelessWidget {
  const ToolBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Text(
            "facebook",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const Spacer(flex: 1),
          CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            radius: 17,
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            radius: 15,
            child: const Icon(
              Icons.messenger,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
