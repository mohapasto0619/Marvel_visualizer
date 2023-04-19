import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_visualiser/widgets/error_view.dart';
import 'package:marvel_visualiser/widgets/section_infinite_list_view.dart';

class SectionListView<T extends List> extends ConsumerWidget {
  const SectionListView(
      {required this.provider,
      required this.sectionName,
      super.key,
      required this.collectionUri});

  final String collectionUri;
  final String sectionName;
  final AutoDisposeFutureProvider<dynamic> provider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final response = ref.watch(provider);
    return response.when(data: ((data) {
      final results = data?.data?.results;
      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: const Color.fromARGB(209, 255, 255, 255),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  sectionName,
                  style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              results.isNotEmpty
                  ? SectionInfiniteListView<T>(
                      collectionUri: collectionUri,
                      results: results as T,
                    )
                  : const Center(
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Text('No results available.'),
                      ),
                    ),
            ],
          ),
        ),
      );
    }), error: ((error, stackTrace) {
      return const ErrorView(message: 'An error occured can\'t load comics.');
    }), loading: (() {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }));
  }
}
