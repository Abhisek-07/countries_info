import 'package:countries_info/api_service/countries/country_service.dart';
import 'package:countries_info/api_service/dio_client.dart';
import 'package:countries_info/api_service/service_utils.dart';
import 'package:countries_info/app.dart';
import 'package:countries_info/extensions/country_model_ext.dart';
import 'package:countries_info/models/country_data.dart';
import 'package:countries_info/models/country_model.dart';
import 'package:countries_info/states/countries_state_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:loader_overlay/loader_overlay.dart';

part 'countries_state.g.dart';

@riverpod
class CountriesState extends _$CountriesState {
  late final CountryService _countryService;

  @override
  CountriesStateModel build() {
    _countryService = CountryService(DioClient.dio);
    return CountriesStateModel();
  }

  /// calls all countries apis

  Future<void> getAllCountriesData() async {
    rootNavigatorKey.currentState?.context.loaderOverlay.show();
    state = state.copyWith(countriesData: const AsyncData([]));
    await Future.wait([
      getGermanyData(),
      getIndiaData(),
      getChinaData(),
      getItalyData(),
      getKoreaData(),
      getLankaData(),
      getIsraelData(),
    ]);
    rootNavigatorKey.currentState?.context.loaderOverlay.hide();
  }

  sortCountryListAlphabetically() {
    List<CountryData> sortedCountriesList = state.countriesData.value ?? [];
    sortedCountriesList.sort((a, b) {
      // Compare the common names of two countries, ignoring case
      return a.commonName.toLowerCase().compareTo(b.commonName.toLowerCase());
    });
    state = state.copyWith(countriesData: AsyncData(sortedCountriesList));
  }

  /// helper method to get country data object to put into common list from separate apis
  CountryData _getCountryDataFromResponse(List<Country> data) {
    Country country = data[0];
    return CountryData(
        commonName: country.name?.commonName ?? "common name",
        officialName: country.name?.officialName ?? "official name",
        currencyCode: country.currencyCode,
        currencyName: country.currencyDetails?.name ?? "currency name",
        flagUrl: country.flags?.pngUrl ?? "");
  }

  Future<void> getGermanyData() async {
    await ServiceUtils.makeApiCall<List<Country>>(
      apiCall: _countryService.getGermanyData(),
      onSuccess: (data) {
        state = state.copyWith(
            countriesData: AsyncData([
          ...(state.countriesData.value ?? []),
          _getCountryDataFromResponse(data)
        ]));
      },
      onError: (error) {},
    );
  }

  Future<void> getIndiaData() async {
    await ServiceUtils.makeApiCall<List<Country>>(
      apiCall: _countryService.getIndiaData(),
      onSuccess: (data) {
        state = state.copyWith(
            countriesData: AsyncData([
          ...(state.countriesData.value ?? []),
          _getCountryDataFromResponse(data)
        ]));
      },
      onError: (error) {},
    );
  }

  Future<void> getChinaData() async {
    await ServiceUtils.makeApiCall<List<Country>>(
      apiCall: _countryService.getChinaData(),
      onSuccess: (data) {
        state = state.copyWith(
            countriesData: AsyncData([
          ...(state.countriesData.value ?? []),
          _getCountryDataFromResponse(data)
        ]));
      },
      onError: (error) {},
    );
  }

  Future<void> getItalyData() async {
    await ServiceUtils.makeApiCall<List<Country>>(
      apiCall: _countryService.getItalyData(),
      onSuccess: (data) {
        state = state.copyWith(
            countriesData: AsyncData([
          ...(state.countriesData.value ?? []),
          _getCountryDataFromResponse(data)
        ]));
      },
      onError: (error) {},
    );
  }

  Future<void> getKoreaData() async {
    await ServiceUtils.makeApiCall<List<Country>>(
      apiCall: _countryService.getKoreaData(),
      onSuccess: (data) {
        state = state.copyWith(
            countriesData: AsyncData([
          ...(state.countriesData.value ?? []),
          _getCountryDataFromResponse(data)
        ]));
      },
      onError: (error) {},
    );
  }

  Future<void> getLankaData() async {
    await ServiceUtils.makeApiCall<List<Country>>(
      apiCall: _countryService.getLankaData(),
      onSuccess: (data) {
        state = state.copyWith(
            countriesData: AsyncData([
          ...(state.countriesData.value ?? []),
          _getCountryDataFromResponse(data)
        ]));
      },
      onError: (error) {},
    );
  }

  Future<void> getIsraelData() async {
    await ServiceUtils.makeApiCall<List<Country>>(
      apiCall: _countryService.getIsraelData(),
      onSuccess: (data) {
        state = state.copyWith(
            countriesData: AsyncData([
          ...(state.countriesData.value ?? []),
          _getCountryDataFromResponse(data)
        ]));
      },
      onError: (error) {},
    );
  }
}
