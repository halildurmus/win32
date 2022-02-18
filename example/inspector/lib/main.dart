import 'package:fluent_ui/fluent_ui.dart';

import 'gamepadpage.dart';

const appTitle = 'Gamepad Inspector';

void main() {
  runApp(const GamepadApp());
}

class GamepadApp extends StatelessWidget {
  const GamepadApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      title: appTitle,
      initialRoute: '/',
      routes: {'/': (_) => const InspectorPage()},
    );
  }
}

class InspectorPage extends StatefulWidget {
  const InspectorPage({Key? key}) : super(key: key);

  @override
  _InspectorPageState createState() => _InspectorPageState();
}

class _InspectorPageState extends State<InspectorPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
        pane: NavigationPane(
            selected: index,
            onChanged: (i) => setState(() => index = i),
            items: [
              PaneItem(
                  icon: const Icon(FluentIcons.game),
                  title: const Text('Controller 1')),
              PaneItem(
                  icon: const Icon(FluentIcons.game),
                  title: const Text('Controller 2')),
              PaneItem(
                  icon: const Icon(FluentIcons.game),
                  title: const Text('Controller 3')),
              PaneItem(
                  icon: const Icon(FluentIcons.game),
                  title: const Text('Controller 4')),
            ]),
        content: NavigationBody(index: index, children: [
          GamepadPage(controller: 0),
          GamepadPage(controller: 1),
          GamepadPage(controller: 2),
          GamepadPage(controller: 3),
        ]));
  }
}
