import 'package:countries_info/models/country_data.dart';
import 'package:countries_info/states/countries_state.dart';
import 'package:countries_info/states/countries_state_model.dart';
import 'package:countries_info/ui/widgets/country_card_widget.dart';
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
          PopupMenuButton<String>(
            icon: const Icon(
              Icons.sort,
              color: Colors.white,
            ),
            onSelected: (value) async {
              if (value == 'sort') {
                countriesStateNotifier.sortCountryListAlphabetically();
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem<String>(
                  value: 'sort',
                  child: Text('Sort Counties By Name'),
                ),
              ];
            },
          ),
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // const SizedBox(
            //   height: 16,
            // ),

            /// germany
            countriesStateModel.countriesData.when(
              data: (data) {
                return Flexible(
                  child: ListView.separated(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      // physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        CountryData? country = data?[index];
                        return CountryCardWidget(
                            commonName: country?.commonName ?? "common name",
                            officialName:
                                country?.officialName ?? "official name",
                            currencyCode:
                                country?.currencyCode ?? "currency code",
                            currencyName:
                                country?.currencyName ?? "currency name",
                            flagUrl: country?.flagUrl ?? "");
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 16,
                        );
                      },
                      itemCount:
                          countriesStateModel.countriesData.value?.length ?? 0),
                );
              },
              error: (error, stackTrace) {
                /// Can return any error widget instead of list
                return const SizedBox.shrink();
              },
              loading: () {
                /// Can return any loader widget instead of list
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      )),
    );
  }
}
