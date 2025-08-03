import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video message
@immutable
class InputMessageVideo extends InputMessageContent {
  const InputMessageVideo({
    required this.video,
    this.thumbnail,
    this.cover,
    required this.startTimestamp,
    required this.addedStickerFileIds,
    required this.duration,
    required this.width,
    required this.height,
    required this.supportsStreaming,
    this.caption,
    required this.showCaptionAboveMedia,
    this.selfDestructType,
    required this.hasSpoiler,
  });

  /// [video] Video to be sent. The video is expected to be re-encoded to MPEG4
  /// format with H.264 codec by the sender
  final InputFile video;

  /// [thumbnail] Video thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [cover] Cover of the video; pass null to skip cover uploading; not
  /// supported in secret chats and for self-destructing messages
  final InputFile? cover;

  /// [startTimestamp] Timestamp from which the video playing must start, in
  /// seconds
  final int startTimestamp;

  /// [addedStickerFileIds] File identifiers of the stickers added to the video,
  /// if applicable
  final List<int> addedStickerFileIds;

  /// [duration] Duration of the video, in seconds
  final int duration;

  /// [width] Video width
  final int width;

  /// [height] Video height
  final int height;

  /// [supportsStreaming] True, if the video is expected to be streamed
  final bool supportsStreaming;

  /// [caption] Video caption; pass null to use an empty caption;
  /// 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the
  /// video; otherwise, the caption must be shown below the video; not supported
  /// in secret chats
  final bool showCaptionAboveMedia;

  /// [selfDestructType] Video self-destruct type; pass null if none; private
  /// chats only
  final MessageSelfDestructType? selfDestructType;

  /// [hasSpoiler] True, if the video preview must be covered by a spoiler
  /// animation; not supported in secret chats
  final bool hasSpoiler;

  static const String constructor = 'inputMessageVideo';

  static InputMessageVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageVideo(
      video: InputFile.fromJson(json['video'] as Map<String, dynamic>?)!,
      thumbnail: InputThumbnail.fromJson(
        json['thumbnail'] as Map<String, dynamic>?,
      ),
      cover: InputFile.fromJson(json['cover'] as Map<String, dynamic>?),
      startTimestamp: json['start_timestamp'] as int,
      addedStickerFileIds: List<int>.from(
        ((json['added_sticker_file_ids'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => item)
            .toList(),
      ),
      duration: json['duration'] as int,
      width: json['width'] as int,
      height: json['height'] as int,
      supportsStreaming: json['supports_streaming'] as bool,
      caption: FormattedText.fromJson(json['caption'] as Map<String, dynamic>?),
      showCaptionAboveMedia: json['show_caption_above_media'] as bool,
      selfDestructType: MessageSelfDestructType.fromJson(
        json['self_destruct_type'] as Map<String, dynamic>?,
      ),
      hasSpoiler: json['has_spoiler'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'video': video.toJson(),
    'thumbnail': thumbnail?.toJson(),
    'cover': cover?.toJson(),
    'start_timestamp': startTimestamp,
    'added_sticker_file_ids': addedStickerFileIds.map((item) => item).toList(),
    'duration': duration,
    'width': width,
    'height': height,
    'supports_streaming': supportsStreaming,
    'caption': caption?.toJson(),
    'show_caption_above_media': showCaptionAboveMedia,
    'self_destruct_type': selfDestructType?.toJson(),
    'has_spoiler': hasSpoiler,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
