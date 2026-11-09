/// Response models for the Love Calculator API.

/// API Response wrapper.
class LovecalculatorResponse {
  final String status;
  final dynamic error;
  final LovecalculatorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  LovecalculatorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory LovecalculatorResponse.fromJson(Map<String, dynamic> json) => LovecalculatorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? LovecalculatorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Love Calculator API.

class LovecalculatorData {
  String? name1;
  String? name2;
  String? lovePercentage;
  String? response;
  String? additionalText;

  LovecalculatorData({
    this.name1,
    this.name2,
    this.lovePercentage,
    this.response,
    this.additionalText,
  });

  factory LovecalculatorData.fromJson(Map<String, dynamic> json) => LovecalculatorData(
      name1: json['name1'],
      name2: json['name2'],
      lovePercentage: json['lovePercentage'],
      response: json['response'],
      additionalText: json['additionalText'],
    );
}

class LovecalculatorRequest {
  String name1;
  String name2;

  LovecalculatorRequest({
    required this.name1,
    required this.name2,
  });

  Map<String, dynamic> toJson() => {
      'name1': name1,
      'name2': name2,
    };
}
