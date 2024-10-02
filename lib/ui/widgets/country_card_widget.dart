import 'package:flutter/material.dart';

class CountryCardWidget extends StatelessWidget {
  final String commonName;
  final String officialName;
  final String currencyCode;
  final String currencyName;
  final String flagUrl;

  const CountryCardWidget({
    super.key,
    required this.commonName,
    required this.officialName,
    required this.currencyCode,
    required this.currencyName,
    required this.flagUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Country flag
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  flagUrl,
                  height: 100,
                  width: 150,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Text("Failed to load image");
                  },
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Common Name
            Text(
              "Common Name: $commonName",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 5),

            // Official Name
            Text(
              "Official Name: $officialName",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 10),

            // Currency Info
            Text(
              "Currency: $currencyName ($currencyCode)",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
