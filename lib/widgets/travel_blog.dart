import 'package:flutter/material.dart';
import '/models/travel.dart';

class TravelBlog extends StatelessWidget {
  final _list = Travel.getTravelBlog();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_,index) => SizedBox(width: 10,) ,
      scrollDirection: Axis.horizontal,
      itemCount: _list.length,
      itemBuilder: (context, index) {
        var travel = _list[index];
        return Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                travel.url,
                fit: BoxFit.cover,
                width: 150,
              ),
            ),
            Positioned(child: Column(
              children: [
                Text(travel.name),
              ],
            ),),
          ],
        );
      },
    );
  }
}
