import 'package:flutter/material.dart';
import 'package:layout_ui/class/popular_foods.dart';

class FoodAppHomePage extends StatefulWidget {
  const FoodAppHomePage({super.key});

  @override
  State<FoodAppHomePage> createState() => _FoodAppHomePageState();
}

class _FoodAppHomePageState extends State<FoodAppHomePage> {
  PopularFoods popularFoods = PopularFoods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu, size: 25, color: Colors.black,)),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Badge(
                  child: Icon(Icons.notifications, size: 25, color: Colors.black,)
              )
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 5, right: 5,),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 5, right: 5,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Popular", style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold
                        ),),
                        Text("See All", style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[600]
                        ),)
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 300,
                      child: Expanded(child: ListView.builder(
                          itemCount: popularFoods.popularFoodList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index){
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                margin: EdgeInsets.only(bottom: 10),
                                width: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade300,
                                        blurRadius: 10,
                                        spreadRadius: 5
                                    )
                                  ]
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                        popularFoods.popularFoodList[index]["foodImage"],
                                        height: 150,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(popularFoods.popularFoodList[index]["name"], style: TextStyle(
                                                  fontSize: 20, fontWeight: FontWeight.bold
                                              ),),
                                              Text(popularFoods.popularFoodList[index]["price"], style: TextStyle(
                                                  fontSize: 15, fontWeight: FontWeight.bold, color: Colors.orange
                                              ),),
                                            ],
                                          ),
                                          Text(popularFoods.popularFoodList[index]["foodTag"], style: TextStyle(
                                              fontSize: 12
                                          ),),
                                          SizedBox(height: 10,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.orange,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                                  child: Text('Buy', style: TextStyle(
                                                      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18
                                                  ),),
                                                ),
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
                                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                                  child: Text('Cart', style: TextStyle(
                                                      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18
                                                  ),),
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
                          })),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5, right: 5,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Near you", style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold
                        ),),
                        Text("See All", style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[600]
                        ),)
                      ],
                    ),
                    SizedBox(
                      height: 200,
                      child: Expanded(
                        child: ListView.builder(itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: 150,
                              margin: EdgeInsets.only(bottom: 30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 10,
                                    )
                                  ]
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(
                                      popularFoods.nearYouFoodList[index]["foodImage"],
                                      width: double.infinity,
                                      height: 100,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(popularFoods.nearYouFoodList[index]["name"], style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold
                                        ),),
                                        Text(popularFoods.nearYouFoodList[index]["price"], style: TextStyle(
                                            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.orange
                                        ),),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                          itemCount: popularFoods.nearYouFoodList.length,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade100,
    );
  }
}
