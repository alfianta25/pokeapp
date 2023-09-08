import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokeapp/core/models/pokemon_detail_response.dart';
import 'package:pokeapp/core/repositories/pokedex_repository.dart';

final detailsProvider =
    FutureProvider.family<PokemonDetailResponse, String>((ref, name) async {
  final response =
      await ref.read(pokedexRepositoryProvider).getPokemonDetails(name);
  return response;
});

final detailTitleOpacityProvider = StateProvider<bool>((ref) {
  return false;
});
