import 'package:countries_info/extensions/country_model_ext.dart';
import 'package:countries_info/models/country_model.dart';
import 'package:countries_info/states/countries_state.dart';
import 'package:countries_info/states/countries_state_model.dart';
import 'package:countries_info/ui/widgets/country_card_widget.dart';
import 'package:countries_info/ui/widgets/shimmer/country_card_shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DashboardScreen extends HookConsumerWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final CountriesStateModel countriesStateModel =
        ref.watch(countriesStateProvider);
    final CountriesState countriesStateNotifier =
        ref.watch(countriesStateProvider.notifier);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback(
        (timeStamp) {
          countriesStateNotifier.getAllCountriesData();
        },
      );
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Countries",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              iconSize: 24,
              onPressed: () {
                countriesStateNotifier.getAllCountriesData();
              },
              icon: const Icon(
                Icons.refresh,
                color: Colors.white,
              ))
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(bottom: 24, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 16,
              ),

              /// germany
              countriesStateModel.germanyData.when(
                data: (data) {
                  Country? country = data?[0];
                  return CountryCardWidget(
                      commonName: country?.name?.commonName ?? "common name",
                      officialName:
                          country?.name?.officialName ?? "official name",
                      currencyCode: country.currencyCode,
                      currencyName:
                          country.currencyDetails?.name ?? "currency name",
                      flagUrl: country?.flags?.pngUrl ?? "");
                },
                error: (error, stackTrace) {
                  return Center(
                    child: ElevatedButton(
                        onPressed: () {
                          countriesStateNotifier.getGermanyData();
                        },
                        child: const Text("Retry to get Germany Data")),
                  );
                },
                loading: () {
                  return const CountryCardShimmerWidget();
                },
              ),
              const SizedBox(
                height: 16,
              ),

              /// india
              countriesStateModel.indiaData.when(
                data: (data) {
                  Country? country = data?[0];
                  return CountryCardWidget(
                      commonName: country?.name?.commonName ?? "common name",
                      officialName:
                          country?.name?.officialName ?? "official name",
                      currencyCode: country.currencyCode,
                      currencyName:
                          country.currencyDetails?.name ?? "currency name",
                      flagUrl: country?.flags?.pngUrl ?? "");
                },
                error: (error, stackTrace) {
                  return Center(
                    child: ElevatedButton(
                        onPressed: () {
                          countriesStateNotifier.getIndiaData();
                        },
                        child: const Text("Retry to get India Data")),
                  );
                },
                loading: () {
                  return const CountryCardShimmerWidget();
                },
              ),
              const SizedBox(
                height: 16,
              ),

              /// china
              countriesStateModel.chinaData.when(
                data: (data) {
                  Country? country = data?[0];
                  return CountryCardWidget(
                      commonName: country?.name?.commonName ?? "common name",
                      officialName:
                          country?.name?.officialName ?? "official name",
                      currencyCode: country.currencyCode,
                      currencyName:
                          country.currencyDetails?.name ?? "currency name",
                      flagUrl: country?.flags?.pngUrl ?? "");
                },
                error: (error, stackTrace) {
                  return Center(
                    child: ElevatedButton(
                        onPressed: () {
                          countriesStateNotifier.getChinaData();
                        },
                        child: const Text("Retry to get China Data")),
                  );
                },
                loading: () {
                  return const CountryCardShimmerWidget();
                },
              ),
              const SizedBox(
                height: 16,
              ),

              /// italy
              countriesStateModel.italyData.when(
                data: (data) {
                  Country? country = data?[0];
                  return CountryCardWidget(
                      commonName: country?.name?.commonName ?? "common name",
                      officialName:
                          country?.name?.officialName ?? "official name",
                      currencyCode: country.currencyCode,
                      currencyName:
                          country.currencyDetails?.name ?? "currency name",
                      flagUrl: country?.flags?.pngUrl ?? "");
                },
                error: (error, stackTrace) {
                  return Center(
                    child: ElevatedButton(
                        onPressed: () {
                          countriesStateNotifier.getItalyData();
                        },
                        child: const Text("Retry to get Italy Data")),
                  );
                },
                loading: () {
                  return const CountryCardShimmerWidget();
                },
              ),
              const SizedBox(
                height: 16,
              ),

              /// korea
              countriesStateModel.koreaData.when(
                data: (data) {
                  Country? country = data?[0];
                  return CountryCardWidget(
                      commonName: country?.name?.commonName ?? "common name",
                      officialName:
                          country?.name?.officialName ?? "official name",
                      currencyCode: country.currencyCode,
                      currencyName:
                          country.currencyDetails?.name ?? "currency name",
                      flagUrl: country?.flags?.pngUrl ?? "");
                },
                error: (error, stackTrace) {
                  return Center(
                    child: ElevatedButton(
                        onPressed: () {
                          countriesStateNotifier.getKoreaData();
                        },
                        child: const Text("Retry to get Korea Data")),
                  );
                },
                loading: () {
                  return const CountryCardShimmerWidget();
                },
              ),
              const SizedBox(
                height: 16,
              ),

              /// lanka
              countriesStateModel.lankaData.when(
                data: (data) {
                  Country? country = data?[0];
                  return CountryCardWidget(
                      commonName: country?.name?.commonName ?? "common name",
                      officialName:
                          country?.name?.officialName ?? "official name",
                      currencyCode: country.currencyCode,
                      currencyName:
                          country.currencyDetails?.name ?? "currency name",
                      flagUrl: country?.flags?.pngUrl ?? "");
                },
                error: (error, stackTrace) {
                  return Center(
                    child: ElevatedButton(
                        onPressed: () {
                          countriesStateNotifier.getLankaData();
                        },
                        child: const Text("Retry to get Lanka Data")),
                  );
                },
                loading: () {
                  return const CountryCardShimmerWidget();
                },
              ),
              const SizedBox(
                height: 16,
              ),

              /// israel
              countriesStateModel.israelData.when(
                data: (data) {
                  Country? country = data?[0];
                  return CountryCardWidget(
                      commonName: country?.name?.commonName ?? "common name",
                      officialName:
                          country?.name?.officialName ?? "official name",
                      currencyCode: country.currencyCode,
                      currencyName:
                          country.currencyDetails?.name ?? "currency name",
                      flagUrl: country?.flags?.pngUrl ?? "");
                },
                error: (error, stackTrace) {
                  return Center(
                    child: ElevatedButton(
                        onPressed: () {
                          countriesStateNotifier.getIsraelData();
                        },
                        child: const Text("Retry to get Israel Data")),
                  );
                },
                loading: () {
                  return const CountryCardShimmerWidget();
                },
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
