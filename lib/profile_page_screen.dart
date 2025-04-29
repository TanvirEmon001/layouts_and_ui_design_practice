import 'package:flutter/material.dart';

class ProfilePageScreen extends StatelessWidget {
  const ProfilePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://cdn.bio.link/uploads/profile_pictures/2023-07-12/AgGaKWrpdNCHhyaM3lxMag6NpZ3xCNpB.png'),
            ),
            SizedBox(height: 15,),
            Text("Tanvir Emon"),
            SizedBox(height: 5,),
            Text("Flutter Developer"),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Follow'),
                ),
                SizedBox(width: 16),
                OutlinedButton(
                  onPressed: () {},
                  child: Text('Message'),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'About Me',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'I am a passionate Flutter developer with 2 years of experience building beautiful mobile applications.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
