import 'package:arkeofili_mobile/constant/image_const.dart';
import 'package:arkeofili_mobile/constant/social_media_const.dart';
import 'package:arkeofili_mobile/model/enum/social_media_enum.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerFooter extends StatelessWidget {
  const DrawerFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    final iconSize = size / 12;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (var socialMedia in SocialMedia.values)
                IconButton(
                  onPressed: () {
                    _launchUrl(Uri.parse(socialMedia.toUrl()));
                  },
                  icon: Image.asset(
                    socialMedia.toIcon(),
                    height: iconSize,
                    color: Theme.of(context).iconTheme.color,
                  ),
                )
            ],
          ),
          SizedBox(
            height: iconSize,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                logo,
                height: iconSize,
              ),
              Text(
                copyRight,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
