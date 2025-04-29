import 'package:flutter/material.dart';

class FoodDetailScreen extends StatelessWidget {
  final Map<String, dynamic> food;

  const FoodDetailScreen({required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(food['foodName'])),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.network(food['foodImage']),
            SizedBox(height: 20),
            Text(food['foodDetails'], style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            Text(food['price'], style: TextStyle(fontSize: 22, color: Colors.orange, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
