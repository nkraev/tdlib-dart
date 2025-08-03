import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Options to be used when a message is sent
@immutable
class MessageSendOptions extends TdObject {
  const MessageSendOptions({
    required this.directMessagesChatTopicId,
    required this.disableNotification,
    required this.fromBackground,
    this.protectContent,
    this.allowPaidBroadcast,
    required this.paidMessageStarCount,
    required this.updateOrderOfInstalledStickerSets,
    this.schedulingState,
    required this.effectId,
    required this.sendingId,
    required this.onlyPreview,
  });

  /// [directMessagesChatTopicId] Unique identifier of the topic in a channel
  /// direct messages chat administered by the current user; pass 0 if the chat
  /// isn't a channel direct messages chat administered by the current user
  final int directMessagesChatTopicId;

  /// [disableNotification] Pass true to disable notification for the message
  final bool disableNotification;

  /// [fromBackground] Pass true if the message is sent from the background
  final bool fromBackground;

  /// [protectContent] Pass true if the content of the message must be protected
  /// from forwarding and saving; for bots only
  final bool? protectContent;

  /// [allowPaidBroadcast] Pass true to allow the message to ignore regular
  /// broadcast limits for a small fee; for bots only
  final bool? allowPaidBroadcast;

  /// [paidMessageStarCount] The number of Telegram Stars the user agreed to pay
  /// to send the messages
  final int paidMessageStarCount;

  /// [updateOrderOfInstalledStickerSets] Pass true if the user explicitly
  /// chosen a sticker or a custom emoji from an installed sticker set;
  /// applicable only to sendMessage and sendMessageAlbum
  final bool updateOrderOfInstalledStickerSets;

  /// [schedulingState] Message scheduling state; pass null to send message
  /// immediately. Messages sent to a secret chat, to a chat with paid messages,
  /// to a channel direct messages chat, live location messages and
  /// self-destructing messages can't be scheduled
  final MessageSchedulingState? schedulingState;

  /// [effectId] Identifier of the effect to apply to the message; pass 0 if
  /// none; applicable only to sendMessage and sendMessageAlbum in private chats
  final int effectId;

  /// [sendingId] Non-persistent identifier, which will be returned back in
  /// messageSendingStatePending object and can be used to match sent messages
  /// and corresponding updateNewMessage updates
  final int sendingId;

  /// [onlyPreview] Pass true to get a fake message instead of actually sending
  /// them
  final bool onlyPreview;

  static const String constructor = 'messageSendOptions';

  static MessageSendOptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSendOptions(
      directMessagesChatTopicId: json['direct_messages_chat_topic_id'] as int,
      disableNotification: json['disable_notification'] as bool,
      fromBackground: json['from_background'] as bool,
      protectContent: json['protect_content'] as bool?,
      allowPaidBroadcast: json['allow_paid_broadcast'] as bool?,
      paidMessageStarCount: json['paid_message_star_count'] as int,
      updateOrderOfInstalledStickerSets:
          json['update_order_of_installed_sticker_sets'] as bool,
      schedulingState: MessageSchedulingState.fromJson(
        json['scheduling_state'] as Map<String, dynamic>?,
      ),
      effectId: int.tryParse(json['effect_id']) ?? 0,
      sendingId: json['sending_id'] as int,
      onlyPreview: json['only_preview'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'direct_messages_chat_topic_id': directMessagesChatTopicId,
    'disable_notification': disableNotification,
    'from_background': fromBackground,
    'protect_content': protectContent,
    'allow_paid_broadcast': allowPaidBroadcast,
    'paid_message_star_count': paidMessageStarCount,
    'update_order_of_installed_sticker_sets': updateOrderOfInstalledStickerSets,
    'scheduling_state': schedulingState?.toJson(),
    'effect_id': effectId.toString(),
    'sending_id': sendingId,
    'only_preview': onlyPreview,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
