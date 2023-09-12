import 'package:freezed_annotation/freezed_annotation.dart';

part 'license.freezed.dart';
part 'license.g.dart';

@freezed
class License with _$License {
  factory License({
    String? key,
    String? name,
    @JsonKey(name: 'spdx_id') String? spdxId,
    String? url,
    @JsonKey(name: 'node_id') String? nodeId,
  }) = _License;

  factory License.fromJson(Map<String, dynamic> json) =>
      _$LicenseFromJson(json);
}
