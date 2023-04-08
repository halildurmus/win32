import 'package:fluent_ui/fluent_ui.dart';
import 'package:win32_gamepad/win32_gamepad.dart';

class ABXYButtons extends StatelessWidget {
  const ABXYButtons({super.key, required this.gamepad});

  final Gamepad gamepad;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FittedBox(
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ToggleSwitch(
                checked: gamepad.state.buttonY,
                content: const Text('Y button'),
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
                checked: gamepad.state.buttonB,
                content: const Text('B button'),
                onChanged: (_) {},
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ToggleSwitch(
                checked: gamepad.state.buttonA,
                content: const Text('A button'),
                onChanged: (_) {},
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
