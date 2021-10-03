import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: [
            Image.network(
              'https://th.bing.com/th/id/R.433b6c5336c72a21bcfd9db8d831562a?rik=77QRBM2WIMV47A&pid=ImgRaw&r=0',
            ),
          ]),
        ),
      ),
    );
  }
}
