// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    _$CountryImpl(
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      currencies: (json['currencies'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Currency.fromJson(e as Map<String, dynamic>)),
      ),
      flags: json['flags'] == null
          ? null
          : Flag.fromJson(json['flags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CountryImplToJson(_$CountryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'currencies': instance.currencies,
      'flags': instance.flags,
    };

_$NameImpl _$$NameImplFromJson(Map<String, dynamic> json) => _$NameImpl(
      commonName: json['common'] as String?,
      officialName: json['official'] as String?,
    );

Map<String, dynamic> _$$NameImplToJson(_$NameImpl instance) =>
    <String, dynamic>{
      'common': instance.commonName,
      'official': instance.officialName,
    };

_$CurrencyImpl _$$CurrencyImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyImpl(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic> _$$CurrencyImplToJson(_$CurrencyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'symbol': instance.symbol,
    };

_$FlagImpl _$$FlagImplFromJson(Map<String, dynamic> json) => _$FlagImpl(
      pngUrl: json['png'] as String?,
      svgUrl: json['svg'] as String?,
    );

Map<String, dynamic> _$$FlagImplToJson(_$FlagImpl instance) =>
    <String, dynamic>{
      'png': instance.pngUrl,
      'svg': instance.svgUrl,
    };
