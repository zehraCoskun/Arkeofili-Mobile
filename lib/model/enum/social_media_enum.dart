import 'package:arkeofili_mobile/constant/social_media_const.dart';

enum SocialMedia {
  facebook,
  twitter,
  instagram,
  youtube;

  String toUrl() {
    switch (this) {
      case SocialMedia.facebook:
        return facebookURL;
      case SocialMedia.twitter:
        return twitterURL;
      case SocialMedia.instagram:
        return instagramURL;
      case SocialMedia.youtube:
        return youtubeURL;
    }
  }

  String toIcon() {
    switch (this) {
      case SocialMedia.facebook:
        return facebookIcon;
      case SocialMedia.twitter:
        return twitterIcon;
      case SocialMedia.instagram:
        return instagramIcon;
      case SocialMedia.youtube:
        return youtubeIcon;
    }
  }
}
