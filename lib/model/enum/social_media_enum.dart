import 'package:arkeofili_mobile/constant/social_media_const.dart';

enum SocialMedia {
  facebook,
  twitter,
  instagram,
  youtube,
  feed;

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
      case SocialMedia.feed:
        return feedURL;
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
      case SocialMedia.feed:
        return facebookIcon;
    }
  }
}
