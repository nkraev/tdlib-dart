import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains content of a push message notification
@immutable
abstract class PushMessageContent extends TdObject {
  const PushMessageContent();

  static const String constructor = 'pushMessageContent';

  /// Inherited by:
  /// [PushMessageContentAnimation]
  /// [PushMessageContentAudio]
  /// [PushMessageContentBasicGroupChatCreate]
  /// [PushMessageContentChatAddMembers]
  /// [PushMessageContentChatChangePhoto]
  /// [PushMessageContentChatChangeTitle]
  /// [PushMessageContentChatDeleteMember]
  /// [PushMessageContentChatJoinByLink]
  /// [PushMessageContentChatJoinByRequest]
  /// [PushMessageContentChatSetBackground]
  /// [PushMessageContentChatSetTheme]
  /// [PushMessageContentChecklistTasksAdded]
  /// [PushMessageContentChecklistTasksDone]
  /// [PushMessageContentChecklist]
  /// [PushMessageContentContactRegistered]
  /// [PushMessageContentContact]
  /// [PushMessageContentDocument]
  /// [PushMessageContentGameScore]
  /// [PushMessageContentGame]
  /// [PushMessageContentGift]
  /// [PushMessageContentGiveaway]
  /// [PushMessageContentHidden]
  /// [PushMessageContentInviteVideoChatParticipants]
  /// [PushMessageContentInvoice]
  /// [PushMessageContentLocation]
  /// [PushMessageContentMediaAlbum]
  /// [PushMessageContentMessageForwards]
  /// [PushMessageContentPaidMedia]
  /// [PushMessageContentPhoto]
  /// [PushMessageContentPoll]
  /// [PushMessageContentPremiumGiftCode]
  /// [PushMessageContentProximityAlertTriggered]
  /// [PushMessageContentRecurringPayment]
  /// [PushMessageContentScreenshotTaken]
  /// [PushMessageContentSticker]
  /// [PushMessageContentStory]
  /// [PushMessageContentSuggestProfilePhoto]
  /// [PushMessageContentText]
  /// [PushMessageContentUpgradedGift]
  /// [PushMessageContentVideoChatEnded]
  /// [PushMessageContentVideoChatStarted]
  /// [PushMessageContentVideoNote]
  /// [PushMessageContentVideo]
  /// [PushMessageContentVoiceNote]
  static PushMessageContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PushMessageContentAnimation.constructor:
        return PushMessageContentAnimation.fromJson(json);
      case PushMessageContentAudio.constructor:
        return PushMessageContentAudio.fromJson(json);
      case PushMessageContentBasicGroupChatCreate.constructor:
        return PushMessageContentBasicGroupChatCreate.fromJson(json);
      case PushMessageContentChatAddMembers.constructor:
        return PushMessageContentChatAddMembers.fromJson(json);
      case PushMessageContentChatChangePhoto.constructor:
        return PushMessageContentChatChangePhoto.fromJson(json);
      case PushMessageContentChatChangeTitle.constructor:
        return PushMessageContentChatChangeTitle.fromJson(json);
      case PushMessageContentChatDeleteMember.constructor:
        return PushMessageContentChatDeleteMember.fromJson(json);
      case PushMessageContentChatJoinByLink.constructor:
        return PushMessageContentChatJoinByLink.fromJson(json);
      case PushMessageContentChatJoinByRequest.constructor:
        return PushMessageContentChatJoinByRequest.fromJson(json);
      case PushMessageContentChatSetBackground.constructor:
        return PushMessageContentChatSetBackground.fromJson(json);
      case PushMessageContentChatSetTheme.constructor:
        return PushMessageContentChatSetTheme.fromJson(json);
      case PushMessageContentChecklist.constructor:
        return PushMessageContentChecklist.fromJson(json);
      case PushMessageContentChecklistTasksAdded.constructor:
        return PushMessageContentChecklistTasksAdded.fromJson(json);
      case PushMessageContentChecklistTasksDone.constructor:
        return PushMessageContentChecklistTasksDone.fromJson(json);
      case PushMessageContentContact.constructor:
        return PushMessageContentContact.fromJson(json);
      case PushMessageContentContactRegistered.constructor:
        return PushMessageContentContactRegistered.fromJson(json);
      case PushMessageContentDocument.constructor:
        return PushMessageContentDocument.fromJson(json);
      case PushMessageContentGame.constructor:
        return PushMessageContentGame.fromJson(json);
      case PushMessageContentGameScore.constructor:
        return PushMessageContentGameScore.fromJson(json);
      case PushMessageContentGift.constructor:
        return PushMessageContentGift.fromJson(json);
      case PushMessageContentGiveaway.constructor:
        return PushMessageContentGiveaway.fromJson(json);
      case PushMessageContentHidden.constructor:
        return PushMessageContentHidden.fromJson(json);
      case PushMessageContentInviteVideoChatParticipants.constructor:
        return PushMessageContentInviteVideoChatParticipants.fromJson(json);
      case PushMessageContentInvoice.constructor:
        return PushMessageContentInvoice.fromJson(json);
      case PushMessageContentLocation.constructor:
        return PushMessageContentLocation.fromJson(json);
      case PushMessageContentMediaAlbum.constructor:
        return PushMessageContentMediaAlbum.fromJson(json);
      case PushMessageContentMessageForwards.constructor:
        return PushMessageContentMessageForwards.fromJson(json);
      case PushMessageContentPaidMedia.constructor:
        return PushMessageContentPaidMedia.fromJson(json);
      case PushMessageContentPhoto.constructor:
        return PushMessageContentPhoto.fromJson(json);
      case PushMessageContentPoll.constructor:
        return PushMessageContentPoll.fromJson(json);
      case PushMessageContentPremiumGiftCode.constructor:
        return PushMessageContentPremiumGiftCode.fromJson(json);
      case PushMessageContentProximityAlertTriggered.constructor:
        return PushMessageContentProximityAlertTriggered.fromJson(json);
      case PushMessageContentRecurringPayment.constructor:
        return PushMessageContentRecurringPayment.fromJson(json);
      case PushMessageContentScreenshotTaken.constructor:
        return PushMessageContentScreenshotTaken.fromJson(json);
      case PushMessageContentSticker.constructor:
        return PushMessageContentSticker.fromJson(json);
      case PushMessageContentStory.constructor:
        return PushMessageContentStory.fromJson(json);
      case PushMessageContentSuggestProfilePhoto.constructor:
        return PushMessageContentSuggestProfilePhoto.fromJson(json);
      case PushMessageContentText.constructor:
        return PushMessageContentText.fromJson(json);
      case PushMessageContentUpgradedGift.constructor:
        return PushMessageContentUpgradedGift.fromJson(json);
      case PushMessageContentVideo.constructor:
        return PushMessageContentVideo.fromJson(json);
      case PushMessageContentVideoChatEnded.constructor:
        return PushMessageContentVideoChatEnded.fromJson(json);
      case PushMessageContentVideoChatStarted.constructor:
        return PushMessageContentVideoChatStarted.fromJson(json);
      case PushMessageContentVideoNote.constructor:
        return PushMessageContentVideoNote.fromJson(json);
      case PushMessageContentVoiceNote.constructor:
        return PushMessageContentVoiceNote.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
