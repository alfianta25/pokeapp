
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokeapp/app/view/pokedex_app.dart';
import 'package:pokeapp/appbloc.dart';

void main() {
  appbloc(() => const ProviderScope(child: PokedexApp()));
}
