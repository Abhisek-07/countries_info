import 'package:countries_info/models/country_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountriesStateModel {
  AsyncValue<List<CountryData>?> countriesData;

  CountriesStateModel({
    this.countriesData = const AsyncData(null),
  });

  CountriesStateModel copyWith(
      {AsyncValue<List<CountryData>?>? countriesData}) {
    return CountriesStateModel(
      countriesData: countriesData ?? this.countriesData,
    );
  }
}
