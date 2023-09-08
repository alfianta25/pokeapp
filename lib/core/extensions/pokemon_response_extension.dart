
import 'package:pokeapp/core/models/pokemon_response.dart';

extension PokemonResponseExtension on PokemonResponse {
  PokemonResponse append(PokemonResponse other) {
    return PokemonResponse(
      count: other.count,
      next: other.next,
      previous: other.previous,
      results: [
        ...?results,
        ...?other.results,
      ],
    );
  }
}
