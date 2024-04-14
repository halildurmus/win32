// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:fluent_ui/fluent_ui.dart';
import 'package:win32_gamepad/win32_gamepad.dart';

import 'abxy_buttons.dart';
import 'dpad.dart';
import 'thumbstick.dart';

class GamepadPage extends StatefulWidget {
  GamepadPage({super.key, required this.controller}) {
    gamepad = Gamepad(controller);
  }

  final int controller;
  late final Gamepad gamepad;

  @override
  GamepadPageState createState() => GamepadPageState();
}

class GamepadPageState extends State<GamepadPage>
    with TickerProviderStateMixin {
  // This will fire with every frame painted.
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 1))
        ..repeat();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        widget.gamepad.updateState();
        return GamepadStatusView(
          gamepad: widget.gamepad,
          controller: widget.controller,
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class GamepadStatusView extends StatelessWidget {
  const GamepadStatusView({
    super.key,
    required this.gamepad,
    required this.controller,
  });

  final Gamepad gamepad;
  final int controller;

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        context.findAncestorWidgetOfExactType<FluentApp>()?.themeMode ==
            ThemeMode.dark;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GamepadConnectedView(gamepad: gamepad, controller: controller),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Wrap(
              spacing: 20,
              children: [
                ToggleSwitch(
                  checked: gamepad.state.leftShoulder,
                  content: const Text('Left shoulder button'),
                  onChanged: (_) {},
                ),
                ToggleSwitch(
                  checked: gamepad.state.rightShoulder,
                  content: const Text('Right shoulder button'),
                  onChanged: (_) {},
                ),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                height: 120,
                width: 120,
                child: ThumbstickView(
                  x: gamepad.state.leftThumbstickX,
                  y: gamepad.state.leftThumbstickY,
                ),
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ToggleSwitch(
                    checked: gamepad.state.buttonStart,
                    content: const Text('Start'),
                    onChanged: (_) {},
                  ),
                  const SizedBox(width: 20),
                  ToggleSwitch(
                    checked: gamepad.state.buttonBack,
                    content: const Text('Back'),
                    onChanged: (_) {},
                  ),
                ],
              ),
              const SizedBox(width: 20),
              SizedBox(
                height: 120,
                width: 120,
                child: ThumbstickView(
                  x: gamepad.state.rightThumbstickX,
                  y: gamepad.state.rightThumbstickY,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Text('Directional pad:'),
              const SizedBox(width: 10),
              DpadIcon(direction: gamepad.state.dpadDirection),
            ],
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            alignment: WrapAlignment.start,
            children: [
              FittedBox(
                child: Row(
                  children: [
                    const Text('Left trigger:'),
                    const SizedBox(width: 10),
                    // Convert from 0..255 to 0..100
                    ProgressBar(
                      value: gamepad.state.leftTrigger.toDouble() / 2.55,
                      backgroundColor: isDarkMode ? Colors.grey[140] : null,
                    ),
                  ],
                ),
              ),
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Right trigger:'),
                    const SizedBox(width: 10),
                    // Convert from 0..255 to 0..100
                    ProgressBar(
                      value: gamepad.state.rightTrigger.toDouble() / 2.55,
                      backgroundColor: isDarkMode ? Colors.grey[140] : null,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Main buttons:'),
              ABXYButtons(gamepad: gamepad),
            ],
          ),
        ],
      ),
    );
  }
}

class GamepadConnectedView extends StatelessWidget {
  const GamepadConnectedView({
    super.key,
    required this.gamepad,
    required this.controller,
  });

  final Gamepad gamepad;
  final int controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FluentIcons.game,
          size: 60,
          color: gamepad.state.isConnected
              ? Colors.successPrimaryColor
              : Colors.warningPrimaryColor,
        ),
        const SizedBox(width: 20),
        Text(
          gamepad.state.isConnected
              ? 'Controller ${controller + 1} connected'
              : 'Controller ${controller + 1} disconnected',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: gamepad.state.isConnected
                ? Colors.successPrimaryColor
                : Colors.warningPrimaryColor,
          ),
        ),
      ],
    );
  }
}
