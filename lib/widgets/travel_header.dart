import 'package:flutter/material.dart';
import '/models/travel.dart';
import 'text_shadow_widget.dart';

class TravelHeader extends StatelessWidget {
  final _list = Travel.getTravelHeader();
  final _pgCtrl = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return PageView.builder(
      controller: _pgCtrl,
      physics: BouncingScrollPhysics(),
      itemCount: _list.length,
      itemBuilder: (context, index) {
        var travel = _list[index];
        return Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: 10,
                bottom: 30,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  travel.url,
                  fit: BoxFit.cover,
                  width: _size.width,
                  height: _size.height,
                ),
              ),
            ),
            Positioned(
              bottom: 75,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextShadowWidget(
                    color: Colors.black,
                    text: travel.name,
                    fontSize: 20,
                    shadowColor: Colors.white,
                  ),
                  TextShadowWidget(
                    color: Colors.black,
                    text: travel.location,
                    fontSize: 30,
                    shadowColor: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              right: 60,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
