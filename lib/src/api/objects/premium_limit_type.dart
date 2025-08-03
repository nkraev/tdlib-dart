import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of limit, increased for Premium users
@immutable
abstract class PremiumLimitType extends TdObject {
  const PremiumLimitType();

  static const String constructor = 'premiumLimitType';

  /// Inherited by:
  /// [PremiumLimitTypeActiveStoryCount]
  /// [PremiumLimitTypeBioLength]
  /// [PremiumLimitTypeCaptionLength]
  /// [PremiumLimitTypeChatFolderChosenChatCount]
  /// [PremiumLimitTypeChatFolderCount]
  /// [PremiumLimitTypeChatFolderInviteLinkCount]
  /// [PremiumLimitTypeCreatedPublicChatCount]
  /// [PremiumLimitTypeFavoriteStickerCount]
  /// [PremiumLimitTypeMonthlyPostedStoryCount]
  /// [PremiumLimitTypePinnedArchivedChatCount]
  /// [PremiumLimitTypePinnedChatCount]
  /// [PremiumLimitTypePinnedSavedMessagesTopicCount]
  /// [PremiumLimitTypeSavedAnimationCount]
  /// [PremiumLimitTypeShareableChatFolderCount]
  /// [PremiumLimitTypeSimilarChatCount]
  /// [PremiumLimitTypeStoryCaptionLength]
  /// [PremiumLimitTypeStorySuggestedReactionAreaCount]
  /// [PremiumLimitTypeSupergroupCount]
  /// [PremiumLimitTypeWeeklyPostedStoryCount]
  static PremiumLimitType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PremiumLimitTypeActiveStoryCount.constructor:
        return PremiumLimitTypeActiveStoryCount.fromJson(json);
      case PremiumLimitTypeBioLength.constructor:
        return PremiumLimitTypeBioLength.fromJson(json);
      case PremiumLimitTypeCaptionLength.constructor:
        return PremiumLimitTypeCaptionLength.fromJson(json);
      case PremiumLimitTypeChatFolderChosenChatCount.constructor:
        return PremiumLimitTypeChatFolderChosenChatCount.fromJson(json);
      case PremiumLimitTypeChatFolderCount.constructor:
        return PremiumLimitTypeChatFolderCount.fromJson(json);
      case PremiumLimitTypeChatFolderInviteLinkCount.constructor:
        return PremiumLimitTypeChatFolderInviteLinkCount.fromJson(json);
      case PremiumLimitTypeCreatedPublicChatCount.constructor:
        return PremiumLimitTypeCreatedPublicChatCount.fromJson(json);
      case PremiumLimitTypeFavoriteStickerCount.constructor:
        return PremiumLimitTypeFavoriteStickerCount.fromJson(json);
      case PremiumLimitTypeMonthlyPostedStoryCount.constructor:
        return PremiumLimitTypeMonthlyPostedStoryCount.fromJson(json);
      case PremiumLimitTypePinnedArchivedChatCount.constructor:
        return PremiumLimitTypePinnedArchivedChatCount.fromJson(json);
      case PremiumLimitTypePinnedChatCount.constructor:
        return PremiumLimitTypePinnedChatCount.fromJson(json);
      case PremiumLimitTypePinnedSavedMessagesTopicCount.constructor:
        return PremiumLimitTypePinnedSavedMessagesTopicCount.fromJson(json);
      case PremiumLimitTypeSavedAnimationCount.constructor:
        return PremiumLimitTypeSavedAnimationCount.fromJson(json);
      case PremiumLimitTypeShareableChatFolderCount.constructor:
        return PremiumLimitTypeShareableChatFolderCount.fromJson(json);
      case PremiumLimitTypeSimilarChatCount.constructor:
        return PremiumLimitTypeSimilarChatCount.fromJson(json);
      case PremiumLimitTypeStoryCaptionLength.constructor:
        return PremiumLimitTypeStoryCaptionLength.fromJson(json);
      case PremiumLimitTypeStorySuggestedReactionAreaCount.constructor:
        return PremiumLimitTypeStorySuggestedReactionAreaCount.fromJson(json);
      case PremiumLimitTypeSupergroupCount.constructor:
        return PremiumLimitTypeSupergroupCount.fromJson(json);
      case PremiumLimitTypeWeeklyPostedStoryCount.constructor:
        return PremiumLimitTypeWeeklyPostedStoryCount.fromJson(json);
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
