import 'package:flutter/material.dart';

class Food {
  final String name;
  final String image;

  Food(this.name, this.image);
}

class MyApp extends StatelessWidget {
  final List<Food> foods = [
    Food('Pizza', 'assets/pizza.jpg'),
    Food('Burger', 'assets/burger.jpg'),
    Food('Sushi', 'assets/sushi.jpg'),
    // Add more food items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Horizontal Food List'),
        ),
        body: Container(
          height: 200, // Adjust height as needed
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: foods.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(8),
                width: 160, // Adjust width as needed
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      foods[index].image,
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8),
                    Text(
                      foods[index].name,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
