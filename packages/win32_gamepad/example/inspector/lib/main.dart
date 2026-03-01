import 'package:fluent_ui/fluent_ui.dart';

import 'gamepadpage.dart';
import 'utils.dart';

const appTitle = 'Gamepad Inspector';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const GamepadApp());
}

class GamepadApp extends StatelessWidget {
  const GamepadApp({super.key});

  @override
  Widget build(BuildContext context) => FluentApp(
    title: appTitle,
    themeMode: WindowsSystemConfiguration.isDarkMode ? .dark : .light,
    darkTheme: .new(brightness: .dark),
    home: const InspectorPage(),
  );
}

class InspectorPage extends StatefulWidget {
  const InspectorPage({super.key});

  @override
  InspectorPageState createState() => InspectorPageState();
}

class InspectorPageState extends State<InspectorPage> {
  var index = 0;

  @override
  Widget build(BuildContext context) => NavigationView(
    titleBar: const TitleBar(
      icon: FlutterLogo(),
      title: Text(appTitle),
      isBackButtonEnabled: false,
      isBackButtonVisible: false,
    ),
    pane: NavigationPane(
      selected: index,
      onChanged: (i) => setState(() => index = i),
      header: const SizedBox(
        height: kOneLineTileHeight,
        child: FlutterLogo(
          style: .horizontal,
          size: 80,
          textColor: Colors.white,
          duration: .zero,
        ),
      ),
      size: const .new(openMaxWidth: 200),
      displayMode: .expanded,
      items: [
        PaneItem(
          icon: const Icon(FluentIcons.game),
          title: const Text('Controller 1'),
          body: GamepadPage(controller: 0),
        ),
        PaneItem(
          icon: const Icon(FluentIcons.game),
          title: const Text('Controller 2'),
          body: GamepadPage(controller: 1),
        ),
        PaneItem(
          icon: const Icon(FluentIcons.game),
          title: const Text('Controller 3'),
          body: GamepadPage(controller: 2),
        ),
        PaneItem(
          icon: const Icon(FluentIcons.game),
          title: const Text('Controller 4'),
          body: GamepadPage(controller: 3),
        ),
      ],
    ),
  );
}
