import 'package:countries_info/models/country_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountriesStateModel {
  AsyncValue<List<Country>?> germanyData;
  AsyncValue<List<Country>?> indiaData;
  AsyncValue<List<Country>?> israelData;
  AsyncValue<List<Country>?> lankaData;
  AsyncValue<List<Country>?> italyData;
  AsyncValue<List<Country>?> chinaData;
  AsyncValue<List<Country>?> koreaData;

  CountriesStateModel({
    this.germanyData = const AsyncData(null),
    this.indiaData = const AsyncData(null),
    this.israelData = const AsyncData(null),
    this.lankaData = const AsyncData(null),
    this.italyData = const AsyncData(null),
    this.chinaData = const AsyncData(null),
    this.koreaData = const AsyncData(null),
  });

  CountriesStateModel copyWith({
    AsyncValue<List<Country>?>? germanyData,
    AsyncValue<List<Country>?>? indiaData,
    AsyncValue<List<Country>?>? israelData,
    AsyncValue<List<Country>?>? lankaData,
    AsyncValue<List<Country>?>? italyData,
    AsyncValue<List<Country>?>? chinaData,
    AsyncValue<List<Country>?>? koreaData,
  }) {
    return CountriesStateModel(
      germanyData: germanyData ?? this.germanyData,
      indiaData: indiaData ?? this.indiaData,
      israelData: israelData ?? this.israelData,
      lankaData: lankaData ?? this.lankaData,
      italyData: italyData ?? this.italyData,
      chinaData: chinaData ?? this.chinaData,
      koreaData: koreaData ?? this.koreaData,
    );
  }
}
