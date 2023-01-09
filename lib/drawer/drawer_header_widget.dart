import 'package:flutter/material.dart';

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(
          // margin: const EdgeInsets.all(10),
          ),
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                "https://w0.peakpx.com/wallpaper/909/704/HD-wallpaper-keyboard-backlight-purple.jpg")),
      ),
    );
  }
}
