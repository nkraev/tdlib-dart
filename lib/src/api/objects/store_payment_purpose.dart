import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a purpose of an in-store payment
@immutable
abstract class StorePaymentPurpose extends TdObject {
  const StorePaymentPurpose();

  static const String constructor = 'storePaymentPurpose';

  /// Inherited by:
  /// [StorePaymentPurposeGiftedStars]
  /// [StorePaymentPurposePremiumGiftCodes]
  /// [StorePaymentPurposePremiumGift]
  /// [StorePaymentPurposePremiumGiveaway]
  /// [StorePaymentPurposePremiumSubscription]
  /// [StorePaymentPurposeStarGiveaway]
  /// [StorePaymentPurposeStars]
  static StorePaymentPurpose? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StorePaymentPurposeGiftedStars.constructor:
        return StorePaymentPurposeGiftedStars.fromJson(json);
      case StorePaymentPurposePremiumGift.constructor:
        return StorePaymentPurposePremiumGift.fromJson(json);
      case StorePaymentPurposePremiumGiftCodes.constructor:
        return StorePaymentPurposePremiumGiftCodes.fromJson(json);
      case StorePaymentPurposePremiumGiveaway.constructor:
        return StorePaymentPurposePremiumGiveaway.fromJson(json);
      case StorePaymentPurposePremiumSubscription.constructor:
        return StorePaymentPurposePremiumSubscription.fromJson(json);
      case StorePaymentPurposeStarGiveaway.constructor:
        return StorePaymentPurposeStarGiveaway.fromJson(json);
      case StorePaymentPurposeStars.constructor:
        return StorePaymentPurposeStars.fromJson(json);
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
