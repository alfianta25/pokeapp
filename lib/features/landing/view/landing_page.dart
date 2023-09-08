// ignore_for_file: inference_failure_on_instance_creation

import 'package:flutter/material.dart';
import 'package:pokeapp/core/animations/fade_animation.dart';
import 'package:pokeapp/features/home/view/home_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 1500), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeAmination(
        delay: 0.5,
        child: Center(
          child: Hero(
            tag: const ValueKey('__pokedex__'),
            child: Image.asset('assets/images/pokedex.png'),
          ),
        ),
      ),
    );
  }
}
