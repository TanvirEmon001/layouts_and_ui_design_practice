import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("👤 This is your profile", style: TextStyle(fontSize: 24)),
    );
  }
}
