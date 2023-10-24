import 'package:firebase_todo/view/widgets/clickable_text.dart';
import 'package:firebase_todo/view/widgets/info_tile.dart';
import 'package:firebase_todo/view/widgets/user_name_tile.dart';
import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const UserNameTile(),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Spacer(),
                  const Icon(
                    Icons.edit_note_rounded,
                  ),
                  ClickableText(
                    title: 'Edit',
                    callback: () {},
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const InfoTile(
                title: 'City',
                value: 'Nagpur',
              ),
              const InfoTile(
                title: 'Pincode',
                value: 'Nagpur',
              ),
              const InfoTile(
                title: 'Social Media',
                value: 'Nagpur',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
