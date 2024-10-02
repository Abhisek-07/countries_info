import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CountryCardShimmerWidget extends StatelessWidget {
  const CountryCardShimmerWidget({super.key});

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
        child: Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Placeholder for flag image
              Center(
                child: Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Placeholder for common name
              Container(
                height: 20,
                width: double.infinity,
                color: Colors.grey[300],
              ),
              const SizedBox(height: 5),

              // Placeholder for official name
              Container(
                height: 16,
                width: double.infinity,
                color: Colors.grey[300],
              ),
              const SizedBox(height: 10),

              // Placeholder for currency information
              Container(
                height: 16,
                width: 200,
                color: Colors.grey[300],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
