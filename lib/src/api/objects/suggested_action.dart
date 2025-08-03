import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an action suggested to the current user
@immutable
abstract class SuggestedAction extends TdObject {
  const SuggestedAction();

  static const String constructor = 'suggestedAction';

  /// Inherited by:
  /// [SuggestedActionCheckPassword]
  /// [SuggestedActionCheckPhoneNumber]
  /// [SuggestedActionConvertToBroadcastGroup]
  /// [SuggestedActionCustom]
  /// [SuggestedActionEnableArchiveAndMuteNewChats]
  /// [SuggestedActionExtendPremium]
  /// [SuggestedActionExtendStarSubscriptions]
  /// [SuggestedActionGiftPremiumForChristmas]
  /// [SuggestedActionRestorePremium]
  /// [SuggestedActionSetBirthdate]
  /// [SuggestedActionSetPassword]
  /// [SuggestedActionSetProfilePhoto]
  /// [SuggestedActionSubscribeToAnnualPremium]
  /// [SuggestedActionUpgradePremium]
  /// [SuggestedActionViewChecksHint]
  static SuggestedAction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SuggestedActionCheckPassword.constructor:
        return SuggestedActionCheckPassword.fromJson(json);
      case SuggestedActionCheckPhoneNumber.constructor:
        return SuggestedActionCheckPhoneNumber.fromJson(json);
      case SuggestedActionConvertToBroadcastGroup.constructor:
        return SuggestedActionConvertToBroadcastGroup.fromJson(json);
      case SuggestedActionCustom.constructor:
        return SuggestedActionCustom.fromJson(json);
      case SuggestedActionEnableArchiveAndMuteNewChats.constructor:
        return SuggestedActionEnableArchiveAndMuteNewChats.fromJson(json);
      case SuggestedActionExtendPremium.constructor:
        return SuggestedActionExtendPremium.fromJson(json);
      case SuggestedActionExtendStarSubscriptions.constructor:
        return SuggestedActionExtendStarSubscriptions.fromJson(json);
      case SuggestedActionGiftPremiumForChristmas.constructor:
        return SuggestedActionGiftPremiumForChristmas.fromJson(json);
      case SuggestedActionRestorePremium.constructor:
        return SuggestedActionRestorePremium.fromJson(json);
      case SuggestedActionSetBirthdate.constructor:
        return SuggestedActionSetBirthdate.fromJson(json);
      case SuggestedActionSetPassword.constructor:
        return SuggestedActionSetPassword.fromJson(json);
      case SuggestedActionSetProfilePhoto.constructor:
        return SuggestedActionSetProfilePhoto.fromJson(json);
      case SuggestedActionSubscribeToAnnualPremium.constructor:
        return SuggestedActionSubscribeToAnnualPremium.fromJson(json);
      case SuggestedActionUpgradePremium.constructor:
        return SuggestedActionUpgradePremium.fromJson(json);
      case SuggestedActionViewChecksHint.constructor:
        return SuggestedActionViewChecksHint.fromJson(json);
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
