import 'package:flutter/material.dart';

class FoodCardList extends StatefulWidget {
  const FoodCardList({super.key});

  @override
  State<FoodCardList> createState() => _FoodCardListState();
}

class _FoodCardListState extends State<FoodCardList> {

  List<Map<String,dynamic>> foodList = [
    {"foodName" : "Delicious Sandwich", "foodDetails" : "Juicy beef patty, fresh lettuce, tomato, and cheese!", "price" : "\$8.99", "foodImage" : "https://images.unsplash.com/photo-1744970531074-4a130cd21cfc"},
    {"foodName" : "Yammy Cake", "foodDetails" : "Juicy beef patty, fresh lettuce, tomato, and cheese!", "price" : "\$15.99", "foodImage" : "https://plus.unsplash.com/premium_photo-1741194732460-bb17c8e8e62f"},
    {"foodName" : "Milky Drinks", "foodDetails" : "Juicy beef patty, fresh lettuce, tomato, and cheese!", "price" : "\$50", "foodImage" : "https://images.unsplash.com/photo-1743445976751-2883283dd2fc"},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Delivery Card'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
          itemCount: foodList.length,
          itemBuilder: (context,index)
          {
            return Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 8,
                          spreadRadius: 2
                      )
                    ]
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        foodList[index]["foodImage"],
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(foodList[index]["foodName"], style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold
                          ),),
                          SizedBox(height: 5,),
                          Text(foodList[index]["foodDetails"], style: TextStyle(
                              fontSize: 14, color: Colors.grey[600]
                          ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                foodList[index]["price"],
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orange),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                  child: Text('Buy'),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
      backgroundColor: Colors.grey.shade100,
    );
  }
}
