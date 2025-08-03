import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Telegram Premium was gifted to a user
@immutable
class MessageGiftedPremium extends MessageContent {
  const MessageGiftedPremium({
    required this.gifterUserId,
    required this.receiverUserId,
    required this.text,
    required this.currency,
    required this.amount,
    required this.cryptocurrency,
    required this.cryptocurrencyAmount,
    required this.monthCount,
    this.sticker,
  });

  /// [gifterUserId] The identifier of a user that gifted Telegram Premium; 0 if
  /// the gift was anonymous or is outgoing
  final int gifterUserId;

  /// [receiverUserId] The identifier of a user that received Telegram Premium;
  /// 0 if the gift is incoming
  final int receiverUserId;

  /// [text] Message added to the gifted Telegram Premium by the sender
  final FormattedText text;

  /// [currency] Currency for the paid amount
  final String currency;

  /// [amount] The paid amount, in the smallest units of the currency
  final int amount;

  /// [cryptocurrency] Cryptocurrency used to pay for the gift; may be empty if
  /// none
  final String cryptocurrency;

  /// [cryptocurrencyAmount] The paid amount, in the smallest units of the
  /// cryptocurrency; 0 if none
  final int cryptocurrencyAmount;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active
  final int monthCount;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;

  static const String constructor = 'messageGiftedPremium';

  static MessageGiftedPremium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGiftedPremium(
      gifterUserId: json['gifter_user_id'] as int,
      receiverUserId: json['receiver_user_id'] as int,
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      currency: json['currency'] as String,
      amount: json['amount'] as int,
      cryptocurrency: json['cryptocurrency'] as String,
      cryptocurrencyAmount: int.tryParse(json['cryptocurrency_amount']) ?? 0,
      monthCount: json['month_count'] as int,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gifter_user_id': gifterUserId,
    'receiver_user_id': receiverUserId,
    'text': text.toJson(),
    'currency': currency,
    'amount': amount,
    'cryptocurrency': cryptocurrency,
    'cryptocurrency_amount': cryptocurrencyAmount.toString(),
    'month_count': monthCount,
    'sticker': sticker?.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
