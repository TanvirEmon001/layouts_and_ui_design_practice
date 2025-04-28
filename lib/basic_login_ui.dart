import 'package:flutter/material.dart';

class BasicLoginUi extends StatelessWidget {
  const BasicLoginUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Login Page"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Welcome! Please Login.."),
                SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                    label: Text("Name"),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2, color: Colors.cyanAccent
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2, color: Colors.blueAccent
                      )
                    )
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      label: Text("Email"),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2, color: Colors.cyanAccent
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2, color: Colors.blueAccent
                          )
                      )
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      label: Text("Password"),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2, color: Colors.cyanAccent
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2, color: Colors.blueAccent
                          )
                      )
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
