import 'package:flutter/material.dart';
import '/models/travel.dart';

class TravelHeader extends StatelessWidget {
  final _list = Travel.getTravelHeader();
  final _pgCtrl = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
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
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
              ),
            ),
            Positioned(
              bottom: 45,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    travel.name,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset.fromDirection(10),
                        ),
                        Shadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset.fromDirection(-10),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    travel.location,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset.fromDirection(10),
                        ),
                        Shadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset.fromDirection(-10),
                        ),
                      ],
                    ),
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
