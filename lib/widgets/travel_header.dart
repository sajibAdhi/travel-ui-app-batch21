import 'package:flutter/material.dart';
import 'package:travel_app_batch21/models/travel.dart';

class TravelHeader extends StatelessWidget {
  final _list = Travel.getTravelHeader();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: _list.length,
      itemBuilder: (context, index) {
        var travel = _list[index];
        return Stack(
          children: [
            Container(
              padding: EdgeInsets.all(10),
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
          ],
        );
      },
    );
  }
}
