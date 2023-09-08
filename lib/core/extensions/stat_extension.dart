
import 'package:pokeapp/core/enums/stat.dart';

extension PokemonStatExtension on PokemonStat {
  String get subName {
    return initial.toUpperCase();
  }
}
