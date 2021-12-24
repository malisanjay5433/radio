import 'package:flutter/material.dart';
import 'package:radio/Utils/radio_utils.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        body: Stack(
          children: [
            VxAnimatedBox()
                .size(context.screenWidth, context.screenHeight)
                .withGradient(
                  LinearGradient(
                    colors: [
                      RadioColors.primaryColor2,
                      RadioColors.primaryColor1,
                    ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                )
                .make(),
            AppBar(
              title: "AI Radio".text.xl3.bold.white.make(),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ).h(100.0).p16(),
          ],
        ));
  }
}
