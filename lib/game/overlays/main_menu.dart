import 'package:flame_jam_2023/chilling_escape.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  final ChillingEscape game;

  const MainMenu({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    const blackTextColor = Color.fromRGBO(7, 28, 182, 1);
    const whiteTextColor = Color.fromRGBO(155, 197, 255, 1);

    return Center(
      child: IntrinsicHeight(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: blackTextColor,
            borderRadius: BorderRadius.all(
              Radius.circular(
                20,
              ),
            ),
          ),
          child: Column(
            children: [
              const Text(
                'Chilling Escape!',
                style: TextStyle(
                  color: whiteTextColor,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    game.resumeEngine();
                    game.overlays.remove('MainMenu');
                  },
                  child: const Text(
                    'Play',
                    style: TextStyle(
                      fontSize: 40,
                      color: blackTextColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Expanded(
                child: Text(
                  'Tap/Spacebar to jump!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteTextColor,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}