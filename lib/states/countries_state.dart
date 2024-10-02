import 'package:countries_info/api_service/countries/country_service.dart';
import 'package:countries_info/api_service/dio_client.dart';
import 'package:countries_info/api_service/service_utils.dart';
import 'package:countries_info/models/country_model.dart';
import 'package:countries_info/states/countries_state_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'countries_state.g.dart';

@riverpod
class CountriesState extends _$CountriesState {
  late final CountryService _countryService;

  @override
  CountriesStateModel build() {
    _countryService = CountryService(DioClient.dio);
    return CountriesStateModel();
  }

  void getAllCountriesData() async {
    getGermanyData();
    getIndiaData();
    getChinaData();
    getItalyData();
    getKoreaData();
    getLankaData();
    getIsraelData();
  }

  Future<void> getGermanyData() async {
    state = state.copyWith(germanyData: const AsyncLoading());
    ServiceUtils.makeApiCall<List<Country>>(
      apiCall: _countryService.getGermanyData(),
      onSuccess: (data) {
        state = state.copyWith(germanyData: AsyncData(data));
      },
      onError: (error) {
        state =
            state.copyWith(germanyData: AsyncError(error, StackTrace.current));
      },
    );
  }

  Future<void> getIndiaData() async {
    state = state.copyWith(indiaData: const AsyncLoading());
    ServiceUtils.makeApiCall<List<Country>>(
      apiCall: _countryService.getIndiaData(),
      onSuccess: (data) {
        state = state.copyWith(indiaData: AsyncData(data));
      },
      onError: (error) {
        state =
            state.copyWith(indiaData: AsyncError(error, StackTrace.current));
      },
    );
  }

  Future<void> getChinaData() async {
    state = state.copyWith(chinaData: const AsyncLoading());
    ServiceUtils.makeApiCall<List<Country>>(
      apiCall: _countryService.getChinaData(),
      onSuccess: (data) {
        state = state.copyWith(chinaData: AsyncData(data));
      },
      onError: (error) {
        state =
            state.copyWith(chinaData: AsyncError(error, StackTrace.current));
      },
    );
  }

  Future<void> getItalyData() async {
    state = state.copyWith(italyData: const AsyncLoading());
    ServiceUtils.makeApiCall<List<Country>>(
      apiCall: _countryService.getItalyData(),
      onSuccess: (data) {
        state = state.copyWith(italyData: AsyncData(data));
      },
      onError: (error) {
        state =
            state.copyWith(italyData: AsyncError(error, StackTrace.current));
      },
    );
  }

  Future<void> getKoreaData() async {
    state = state.copyWith(koreaData: const AsyncLoading());
    ServiceUtils.makeApiCall<List<Country>>(
      apiCall: _countryService.getKoreaData(),
      onSuccess: (data) {
        state = state.copyWith(koreaData: AsyncData(data));
      },
      onError: (error) {
        state =
            state.copyWith(koreaData: AsyncError(error, StackTrace.current));
      },
    );
  }

  Future<void> getLankaData() async {
    state = state.copyWith(lankaData: const AsyncLoading());
    ServiceUtils.makeApiCall<List<Country>>(
      apiCall: _countryService.getLankaData(),
      onSuccess: (data) {
        state = state.copyWith(lankaData: AsyncData(data));
      },
      onError: (error) {
        state =
            state.copyWith(lankaData: AsyncError(error, StackTrace.current));
      },
    );
  }

  Future<void> getIsraelData() async {
    state = state.copyWith(israelData: const AsyncLoading());
    ServiceUtils.makeApiCall<List<Country>>(
      apiCall: _countryService.getIsraelData(),
      onSuccess: (data) {
        state = state.copyWith(israelData: AsyncData(data));
      },
      onError: (error) {
        state =
            state.copyWith(israelData: AsyncError(error, StackTrace.current));
      },
    );
  }
}
