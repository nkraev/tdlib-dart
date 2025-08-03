import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A photo message
@immutable
class MessagePhoto extends MessageContent {
  const MessagePhoto({
    required this.photo,
    required this.caption,
    required this.showCaptionAboveMedia,
    required this.hasSpoiler,
    required this.isSecret,
  });

  /// [photo] The photo
  final Photo photo;

  /// [caption] Photo caption
  final FormattedText caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the
  /// photo; otherwise, the caption must be shown below the photo
  final bool showCaptionAboveMedia;

  /// [hasSpoiler] True, if the photo preview must be covered by a spoiler
  /// animation
  final bool hasSpoiler;

  /// [isSecret] True, if the photo must be blurred and must be shown only while
  /// tapped
  final bool isSecret;

  static const String constructor = 'messagePhoto';

  static MessagePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePhoto(
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?)!,
      caption: FormattedText.fromJson(
        json['caption'] as Map<String, dynamic>?,
      )!,
      showCaptionAboveMedia: json['show_caption_above_media'] as bool,
      hasSpoiler: json['has_spoiler'] as bool,
      isSecret: json['is_secret'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo.toJson(),
    'caption': caption.toJson(),
    'show_caption_above_media': showCaptionAboveMedia,
    'has_spoiler': hasSpoiler,
    'is_secret': isSecret,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
