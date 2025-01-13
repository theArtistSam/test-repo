import 'package:flutter/material.dart';
import 'package:sample/configs/configs.dart';

part 'widgets/_body.dart';
part 'widgets/_story.dart';
part 'widgets/_page_tile.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    App.init(context);
    return const _Body();
  }
}
