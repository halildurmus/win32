import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:fluent_ui/fluent_ui.dart';

import 'custom_window.dart';
import 'gamepadpage.dart';
import 'utils.dart';

const appTitle = 'Gamepad Inspector';

void main() {
  runApp(const GamepadApp());
  doWhenWindowReady(() {
    appWindow
      ..alignment = Alignment.center
      ..title = appTitle
      ..show();
  });
}

class GamepadApp extends StatelessWidget {
  const GamepadApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      title: appTitle,
      themeMode: WindowsSystemConfiguration.isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,
      darkTheme: FluentThemeData(brightness: Brightness.dark),
      initialRoute: '/',
      routes: {'/': (_) => const InspectorPage()},
    );
  }
}

class InspectorPage extends StatefulWidget {
  const InspectorPage({Key? key}) : super(key: key);

  @override
  InspectorPageState createState() => InspectorPageState();
}

class InspectorPageState extends State<InspectorPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
        appBar: const NavigationAppBar(
          title: CustomWindowTitleSection(appTitle: appTitle),
          actions: CustomWindowButtonsSection(),
        ),
        pane: NavigationPane(
            size: const NavigationPaneSize(openMaxWidth: 200),
            displayMode: PaneDisplayMode.open,
            selected: index,
            onChanged: (i) => setState(() => index = i),
            items: [
              PaneItem(
                  icon: const Icon(FluentIcons.game),
                  title: const Text('Controller 1'),
                  body: GamepadPage(controller: 0)),
              PaneItem(
                  icon: const Icon(FluentIcons.game),
                  title: const Text('Controller 2'),
                  body: GamepadPage(controller: 1)),
              PaneItem(
                icon: const Icon(FluentIcons.game),
                title: const Text('Controller 3'),
                body: GamepadPage(controller: 2),
              ),
              PaneItem(
                  icon: const Icon(FluentIcons.game),
                  title: const Text('Controller 4'),
                  body: GamepadPage(controller: 3)),
            ]));
  }
}
