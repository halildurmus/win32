import 'package:fluent_ui/fluent_ui.dart';
import 'package:win32_gamepad/win32_gamepad.dart';

class GamepadPage extends StatefulWidget {
  final int controller;
  late final Gamepad gamepad;
  GamepadPage({Key? key, required this.controller}) : super(key: key) {
    gamepad = Gamepad(controller);
  }

  @override
  _GamepadPageState createState() => _GamepadPageState();
}

class _GamepadPageState extends State<GamepadPage>
    with TickerProviderStateMixin {
  int number = 0;
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 1))
        ..repeat();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        widget.gamepad.updateState();
        return GamepadStatusView(gamepad: widget.gamepad);
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
  final Gamepad gamepad;
  const GamepadStatusView({Key? key, required this.gamepad}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      ProgressBar(value: gamepad.state.leftTrigger.toDouble() / 2.55),
      ProgressBar(value: gamepad.state.rightTrigger.toDouble() / 2.55),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ToggleSwitch(
          checked: gamepad.state.buttonA,
          content: const Text('A button'),
          onChanged: (_) {},
        ),
        const SizedBox(width: 20),
        ToggleSwitch(
          checked: gamepad.state.buttonB,
          content: const Text('B button'),
          onChanged: (_) {},
        ),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ToggleSwitch(
          checked: gamepad.state.buttonX,
          content: const Text('X button'),
          onChanged: (_) {},
        ),
        const SizedBox(width: 20),
        ToggleSwitch(
          checked: gamepad.state.buttonY,
          content: const Text('Y button'),
          onChanged: (_) {},
        ),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
      ]),
    ]);
  }
}
