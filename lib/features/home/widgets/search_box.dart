import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokeapp/features/home/providers/home_provider.dart';

class SearchBox extends ConsumerWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final home = ref.watch(homeProvider);
    return TextField(
      onChanged: (value) => ref.read(homeProvider.notifier).search(value),
      decoration: InputDecoration(
        fillColor: const Color(0xFFE6F0F3),
        filled: true,
        hintText: 'Pokemon apa yang kamu cari?',
        hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Colors.grey,
            ),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
          size: 30,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
