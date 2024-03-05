import 'package:arkeofili_mobile/constant/image_const.dart';
import 'package:arkeofili_mobile/theme/ios_theme.dart';
import 'package:flutter/material.dart';

class DrawerTitle extends StatelessWidget {
  const DrawerTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    final iconSize = size / 8;
    return Container(
      color: ArkeofiliColors.grey,
      child: Padding(
        padding: const EdgeInsets.only(top: 48, bottom: 8),
        child: InkWell(
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed("/home");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                logoTitle,
                height: iconSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
