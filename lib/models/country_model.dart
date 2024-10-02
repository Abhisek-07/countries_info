import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@freezed
class Country with _$Country {
  factory Country({
    @JsonKey(name: 'name') Name? name,
    @JsonKey(name: 'currencies') Map<String, Currency>? currencies,
    @JsonKey(name: 'flags') Flag? flags,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}

@freezed
class Name with _$Name {
  factory Name({
    @JsonKey(name: 'common') String? commonName,
    @JsonKey(name: 'official') String? officialName,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

@freezed
class Currency with _$Currency {
  factory Currency({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'symbol') String? symbol,
  }) = _Currency;

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
}

@freezed
class Flag with _$Flag {
  factory Flag({
    @JsonKey(name: 'png') String? pngUrl,
    @JsonKey(name: 'svg') String? svgUrl,
  }) = _Flag;

  factory Flag.fromJson(Map<String, dynamic> json) => _$FlagFromJson(json);
}
