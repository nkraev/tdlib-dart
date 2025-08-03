import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns default emoji statuses for self status
/// Returns [EmojiStatusCustomEmojis]
@immutable
class GetDefaultEmojiStatuses extends TdFunction {
  const GetDefaultEmojiStatuses();

  static const String constructor = 'getDefaultEmojiStatuses';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
