import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The call is ready to use
@immutable
class CallStateReady extends CallState {
  const CallStateReady({
    required this.protocol,
    required this.servers,
    required this.config,
    required this.encryptionKey,
    required this.emojis,
    required this.allowP2p,
    required this.isGroupCallSupported,
    required this.customParameters,
  });

  /// [protocol] Call protocols supported by the other call participant
  final CallProtocol protocol;

  /// [servers] List of available call servers
  final List<CallServer> servers;

  /// [config] A JSON-encoded call config
  final String config;

  /// [encryptionKey] Call encryption key
  final String encryptionKey;

  /// [emojis] Encryption key fingerprint represented as 4 emoji
  final List<String> emojis;

  /// [allowP2p] True, if peer-to-peer connection is allowed by users privacy
  /// settings
  final bool allowP2p;

  /// [isGroupCallSupported] True, if the other party supports upgrading of the
  /// call to a group call
  final bool isGroupCallSupported;

  /// [customParameters] Custom JSON-encoded call parameters to be passed to
  /// tgcalls
  final String customParameters;

  static const String constructor = 'callStateReady';

  static CallStateReady? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallStateReady(
      protocol: CallProtocol.fromJson(
        json['protocol'] as Map<String, dynamic>?,
      )!,
      servers: List<CallServer>.from(
        ((json['servers'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => CallServer.fromJson(item))
            .toList(),
      ),
      config: json['config'] as String,
      encryptionKey: json['encryption_key'] as String,
      emojis: List<String>.from(
        ((json['emojis'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => item)
            .toList(),
      ),
      allowP2p: json['allow_p2p'] as bool,
      isGroupCallSupported: json['is_group_call_supported'] as bool,
      customParameters: json['custom_parameters'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'protocol': protocol.toJson(),
    'servers': servers.map((item) => item.toJson()).toList(),
    'config': config,
    'encryption_key': encryptionKey,
    'emojis': emojis.map((item) => item).toList(),
    'allow_p2p': allowP2p,
    'is_group_call_supported': isGroupCallSupported,
    'custom_parameters': customParameters,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
