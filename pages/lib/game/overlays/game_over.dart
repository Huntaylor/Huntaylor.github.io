import 'package:flame_jam_2023/chilling_escape.dart';
import 'package:flame_jam_2023/game/view/game_view.dart';
import 'package:flame_jam_2023/utils/asset_constants.dart';
import 'package:flutter/material.dart';

class GameOver extends StatelessWidget {
  final ChillingEscape game;
  const GameOver({
    super.key,
    required this.game,
  });

  @override
  Widget build(BuildContext context) {
    const blackTextColor = Color.fromRGBO(7, 28, 182, 1);
    const whiteTextColor = Color.fromRGBO(255, 255, 255, 1.0);

    return Material(
      color: Colors.transparent,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
            color: blackTextColor,
            borderRadius: BorderRadius.all(
              Radius.circular(
                20,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Game Over',
                style: TextStyle(
                  color: whiteTextColor,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 200,
                height: 75,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MyGame.route());
                    game.overlays.remove(AssetConstants.gameOver);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: whiteTextColor,
                  ),
                  child: const Text(
                    'Play Again',
                    style: TextStyle(
                      fontSize: 28,
                      color: blackTextColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
