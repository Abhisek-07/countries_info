// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Country _$CountryFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
mixin _$Country {
  @JsonKey(name: 'name')
  Name? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'currencies')
  Map<String, Currency>? get currencies => throw _privateConstructorUsedError;
  @JsonKey(name: 'flags')
  Flag? get flags => throw _privateConstructorUsedError;

  /// Serializes this Country to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res, Country>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') Name? name,
      @JsonKey(name: 'currencies') Map<String, Currency>? currencies,
      @JsonKey(name: 'flags') Flag? flags});

  $NameCopyWith<$Res>? get name;
  $FlagCopyWith<$Res>? get flags;
}

/// @nodoc
class _$CountryCopyWithImpl<$Res, $Val extends Country>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? currencies = freezed,
    Object? flags = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      currencies: freezed == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as Map<String, Currency>?,
      flags: freezed == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as Flag?,
    ) as $Val);
  }

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NameCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $NameCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlagCopyWith<$Res>? get flags {
    if (_value.flags == null) {
      return null;
    }

    return $FlagCopyWith<$Res>(_value.flags!, (value) {
      return _then(_value.copyWith(flags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CountryImplCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$$CountryImplCopyWith(
          _$CountryImpl value, $Res Function(_$CountryImpl) then) =
      __$$CountryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') Name? name,
      @JsonKey(name: 'currencies') Map<String, Currency>? currencies,
      @JsonKey(name: 'flags') Flag? flags});

  @override
  $NameCopyWith<$Res>? get name;
  @override
  $FlagCopyWith<$Res>? get flags;
}

/// @nodoc
class __$$CountryImplCopyWithImpl<$Res>
    extends _$CountryCopyWithImpl<$Res, _$CountryImpl>
    implements _$$CountryImplCopyWith<$Res> {
  __$$CountryImplCopyWithImpl(
      _$CountryImpl _value, $Res Function(_$CountryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? currencies = freezed,
    Object? flags = freezed,
  }) {
    return _then(_$CountryImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      currencies: freezed == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as Map<String, Currency>?,
      flags: freezed == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as Flag?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryImpl implements _Country {
  _$CountryImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'currencies') final Map<String, Currency>? currencies,
      @JsonKey(name: 'flags') this.flags})
      : _currencies = currencies;

  factory _$CountryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final Name? name;
  final Map<String, Currency>? _currencies;
  @override
  @JsonKey(name: 'currencies')
  Map<String, Currency>? get currencies {
    final value = _currencies;
    if (value == null) return null;
    if (_currencies is EqualUnmodifiableMapView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'flags')
  final Flag? flags;

  @override
  String toString() {
    return 'Country(name: $name, currencies: $currencies, flags: $flags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies) &&
            (identical(other.flags, flags) || other.flags == flags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(_currencies), flags);

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      __$$CountryImplCopyWithImpl<_$CountryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryImplToJson(
      this,
    );
  }
}

abstract class _Country implements Country {
  factory _Country(
      {@JsonKey(name: 'name') final Name? name,
      @JsonKey(name: 'currencies') final Map<String, Currency>? currencies,
      @JsonKey(name: 'flags') final Flag? flags}) = _$CountryImpl;

  factory _Country.fromJson(Map<String, dynamic> json) = _$CountryImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  Name? get name;
  @override
  @JsonKey(name: 'currencies')
  Map<String, Currency>? get currencies;
  @override
  @JsonKey(name: 'flags')
  Flag? get flags;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Name _$NameFromJson(Map<String, dynamic> json) {
  return _Name.fromJson(json);
}

/// @nodoc
mixin _$Name {
  @JsonKey(name: 'common')
  String? get commonName => throw _privateConstructorUsedError;
  @JsonKey(name: 'official')
  String? get officialName => throw _privateConstructorUsedError;

  /// Serializes this Name to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Name
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NameCopyWith<Name> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameCopyWith<$Res> {
  factory $NameCopyWith(Name value, $Res Function(Name) then) =
      _$NameCopyWithImpl<$Res, Name>;
  @useResult
  $Res call(
      {@JsonKey(name: 'common') String? commonName,
      @JsonKey(name: 'official') String? officialName});
}

/// @nodoc
class _$NameCopyWithImpl<$Res, $Val extends Name>
    implements $NameCopyWith<$Res> {
  _$NameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Name
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commonName = freezed,
    Object? officialName = freezed,
  }) {
    return _then(_value.copyWith(
      commonName: freezed == commonName
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String?,
      officialName: freezed == officialName
          ? _value.officialName
          : officialName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NameImplCopyWith<$Res> implements $NameCopyWith<$Res> {
  factory _$$NameImplCopyWith(
          _$NameImpl value, $Res Function(_$NameImpl) then) =
      __$$NameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'common') String? commonName,
      @JsonKey(name: 'official') String? officialName});
}

/// @nodoc
class __$$NameImplCopyWithImpl<$Res>
    extends _$NameCopyWithImpl<$Res, _$NameImpl>
    implements _$$NameImplCopyWith<$Res> {
  __$$NameImplCopyWithImpl(_$NameImpl _value, $Res Function(_$NameImpl) _then)
      : super(_value, _then);

  /// Create a copy of Name
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commonName = freezed,
    Object? officialName = freezed,
  }) {
    return _then(_$NameImpl(
      commonName: freezed == commonName
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String?,
      officialName: freezed == officialName
          ? _value.officialName
          : officialName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NameImpl implements _Name {
  _$NameImpl(
      {@JsonKey(name: 'common') this.commonName,
      @JsonKey(name: 'official') this.officialName});

  factory _$NameImpl.fromJson(Map<String, dynamic> json) =>
      _$$NameImplFromJson(json);

  @override
  @JsonKey(name: 'common')
  final String? commonName;
  @override
  @JsonKey(name: 'official')
  final String? officialName;

  @override
  String toString() {
    return 'Name(commonName: $commonName, officialName: $officialName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameImpl &&
            (identical(other.commonName, commonName) ||
                other.commonName == commonName) &&
            (identical(other.officialName, officialName) ||
                other.officialName == officialName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, commonName, officialName);

  /// Create a copy of Name
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NameImplCopyWith<_$NameImpl> get copyWith =>
      __$$NameImplCopyWithImpl<_$NameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NameImplToJson(
      this,
    );
  }
}

abstract class _Name implements Name {
  factory _Name(
      {@JsonKey(name: 'common') final String? commonName,
      @JsonKey(name: 'official') final String? officialName}) = _$NameImpl;

  factory _Name.fromJson(Map<String, dynamic> json) = _$NameImpl.fromJson;

  @override
  @JsonKey(name: 'common')
  String? get commonName;
  @override
  @JsonKey(name: 'official')
  String? get officialName;

  /// Create a copy of Name
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NameImplCopyWith<_$NameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Currency _$CurrencyFromJson(Map<String, dynamic> json) {
  return _Currency.fromJson(json);
}

/// @nodoc
mixin _$Currency {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'symbol')
  String? get symbol => throw _privateConstructorUsedError;

  /// Serializes this Currency to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrencyCopyWith<Currency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) then) =
      _$CurrencyCopyWithImpl<$Res, Currency>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'symbol') String? symbol});
}

/// @nodoc
class _$CurrencyCopyWithImpl<$Res, $Val extends Currency>
    implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyImplCopyWith<$Res>
    implements $CurrencyCopyWith<$Res> {
  factory _$$CurrencyImplCopyWith(
          _$CurrencyImpl value, $Res Function(_$CurrencyImpl) then) =
      __$$CurrencyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'symbol') String? symbol});
}

/// @nodoc
class __$$CurrencyImplCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$CurrencyImpl>
    implements _$$CurrencyImplCopyWith<$Res> {
  __$$CurrencyImplCopyWithImpl(
      _$CurrencyImpl _value, $Res Function(_$CurrencyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_$CurrencyImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrencyImpl implements _Currency {
  _$CurrencyImpl(
      {@JsonKey(name: 'name') this.name, @JsonKey(name: 'symbol') this.symbol});

  factory _$CurrencyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencyImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'symbol')
  final String? symbol;

  @override
  String toString() {
    return 'Currency(name: $name, symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, symbol);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyImplCopyWith<_$CurrencyImpl> get copyWith =>
      __$$CurrencyImplCopyWithImpl<_$CurrencyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrencyImplToJson(
      this,
    );
  }
}

abstract class _Currency implements Currency {
  factory _Currency(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'symbol') final String? symbol}) = _$CurrencyImpl;

  factory _Currency.fromJson(Map<String, dynamic> json) =
      _$CurrencyImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'symbol')
  String? get symbol;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrencyImplCopyWith<_$CurrencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Flag _$FlagFromJson(Map<String, dynamic> json) {
  return _Flag.fromJson(json);
}

/// @nodoc
mixin _$Flag {
  @JsonKey(name: 'png')
  String? get pngUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'svg')
  String? get svgUrl => throw _privateConstructorUsedError;

  /// Serializes this Flag to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Flag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlagCopyWith<Flag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlagCopyWith<$Res> {
  factory $FlagCopyWith(Flag value, $Res Function(Flag) then) =
      _$FlagCopyWithImpl<$Res, Flag>;
  @useResult
  $Res call(
      {@JsonKey(name: 'png') String? pngUrl,
      @JsonKey(name: 'svg') String? svgUrl});
}

/// @nodoc
class _$FlagCopyWithImpl<$Res, $Val extends Flag>
    implements $FlagCopyWith<$Res> {
  _$FlagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Flag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pngUrl = freezed,
    Object? svgUrl = freezed,
  }) {
    return _then(_value.copyWith(
      pngUrl: freezed == pngUrl
          ? _value.pngUrl
          : pngUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      svgUrl: freezed == svgUrl
          ? _value.svgUrl
          : svgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlagImplCopyWith<$Res> implements $FlagCopyWith<$Res> {
  factory _$$FlagImplCopyWith(
          _$FlagImpl value, $Res Function(_$FlagImpl) then) =
      __$$FlagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'png') String? pngUrl,
      @JsonKey(name: 'svg') String? svgUrl});
}

/// @nodoc
class __$$FlagImplCopyWithImpl<$Res>
    extends _$FlagCopyWithImpl<$Res, _$FlagImpl>
    implements _$$FlagImplCopyWith<$Res> {
  __$$FlagImplCopyWithImpl(_$FlagImpl _value, $Res Function(_$FlagImpl) _then)
      : super(_value, _then);

  /// Create a copy of Flag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pngUrl = freezed,
    Object? svgUrl = freezed,
  }) {
    return _then(_$FlagImpl(
      pngUrl: freezed == pngUrl
          ? _value.pngUrl
          : pngUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      svgUrl: freezed == svgUrl
          ? _value.svgUrl
          : svgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlagImpl implements _Flag {
  _$FlagImpl(
      {@JsonKey(name: 'png') this.pngUrl, @JsonKey(name: 'svg') this.svgUrl});

  factory _$FlagImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlagImplFromJson(json);

  @override
  @JsonKey(name: 'png')
  final String? pngUrl;
  @override
  @JsonKey(name: 'svg')
  final String? svgUrl;

  @override
  String toString() {
    return 'Flag(pngUrl: $pngUrl, svgUrl: $svgUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlagImpl &&
            (identical(other.pngUrl, pngUrl) || other.pngUrl == pngUrl) &&
            (identical(other.svgUrl, svgUrl) || other.svgUrl == svgUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pngUrl, svgUrl);

  /// Create a copy of Flag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlagImplCopyWith<_$FlagImpl> get copyWith =>
      __$$FlagImplCopyWithImpl<_$FlagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlagImplToJson(
      this,
    );
  }
}

abstract class _Flag implements Flag {
  factory _Flag(
      {@JsonKey(name: 'png') final String? pngUrl,
      @JsonKey(name: 'svg') final String? svgUrl}) = _$FlagImpl;

  factory _Flag.fromJson(Map<String, dynamic> json) = _$FlagImpl.fromJson;

  @override
  @JsonKey(name: 'png')
  String? get pngUrl;
  @override
  @JsonKey(name: 'svg')
  String? get svgUrl;

  /// Create a copy of Flag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlagImplCopyWith<_$FlagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
