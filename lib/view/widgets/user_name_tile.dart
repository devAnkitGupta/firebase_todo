
import 'package:firebase_todo/view/app/theme/app_color.dart';
import 'package:firebase_todo/view/app/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class UserNameTile extends StatelessWidget {
  const UserNameTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColor.black,
            ),
          ),
          padding: const EdgeInsets.all(4),
          child: const CircleAvatar(
            maxRadius: 50,
            child: Icon(
              Icons.person,
              size: 90,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Name'),
            Text(
              'User Profile Screen',
              style: AppTextTheme.bodyLarge,
            ),
          ],
        ),
      ],
    );
  }
}
