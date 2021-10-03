import 'package:flutter/material.dart';
import '/models/travel.dart';
import 'text_shadow_widget.dart';

class TravelBlog extends StatelessWidget {
  final _list = Travel.getTravelBlog();
  final _pgCtrl = PageController(viewportFraction: 0.9);
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return ListView.separated(
      controller: _pgCtrl,
      separatorBuilder: (_, index) => SizedBox(
        width: 5,
      ),
      scrollDirection: Axis.horizontal,
      itemCount: _list.length,
      itemBuilder: (context, index) {
        var travel = _list[index];
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  travel.url,
                  fit: BoxFit.cover,
                  width: _size.width / 2.1,
                  height: _size.height,
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextShadowWidget(
                    color: Colors.white,
                    text: travel.name,
                    fontSize: 20,
                    shadowColor: Colors.black,
                  ),
                  TextShadowWidget(
                    color: Colors.white,
                    text: travel.location,
                    fontSize: 20,
                    shadowColor: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
