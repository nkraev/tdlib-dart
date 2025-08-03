import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user must choose an option to report the message and repeat request
/// with the chosen option
@immutable
class ReportSponsoredResultOptionRequired extends ReportSponsoredResult {
  const ReportSponsoredResultOptionRequired({
    required this.title,
    required this.options,
  });

  /// [title] Title for the option choice
  final String title;

  /// [options] List of available options
  final List<ReportOption> options;

  static const String constructor = 'reportSponsoredResultOptionRequired';

  static ReportSponsoredResultOptionRequired? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ReportSponsoredResultOptionRequired(
      title: json['title'] as String,
      options: List<ReportOption>.from(
        ((json['options'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => ReportOption.fromJson(item))
            .toList(),
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title,
    'options': options.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
