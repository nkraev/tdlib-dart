import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the list of features available for different chat boost levels.
/// This is an offline method
/// Returns [ChatBoostFeatures]
@immutable
class GetChatBoostFeatures extends TdFunction {
  const GetChatBoostFeatures({required this.isChannel});

  /// [isChannel] Pass true to get the list of features for channels; pass false
  /// to get the list of features for supergroups
  final bool isChannel;

  static const String constructor = 'getChatBoostFeatures';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_channel': isChannel,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
