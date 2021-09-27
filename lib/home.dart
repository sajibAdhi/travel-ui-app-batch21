import 'package:flutter/material.dart';
import 'package:travel_app_batch21/widgets/travel_blog.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              "Travel Blog",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: TravelBlog(),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Most Popular",
                  style: TextStyle(
                    fontSize: 26,
                  ),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                    fontSize: 26,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Placeholder(),
          ),
        ],
      ),
    );
  }
}
