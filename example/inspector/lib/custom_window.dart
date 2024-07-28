import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:fluent_ui/fluent_ui.dart';

class CustomWindowTitleSection extends StatelessWidget {
  const CustomWindowTitleSection({super.key, required this.appTitle});

  final String appTitle;

  @override
  Widget build(BuildContext context) {
    return MoveWindow(
      child: Align(
        alignment: AlignmentDirectional.centerStart,
        child: Text(appTitle),
      ),
    );
  }
}

class CustomWindowButtonsSection extends StatelessWidget {
  const CustomWindowButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return MoveWindow(
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Spacer(), WindowButtons()],
      ),
    );
  }
}

class WindowButtons extends StatelessWidget {
  const WindowButtons({super.key});

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasFluentTheme(context));
    assert(debugCheckHasFluentLocalizations(context));
    final theme = FluentTheme.of(context);
    final buttonColors = WindowButtonColors(
      iconNormal: theme.inactiveColor,
      iconMouseDown: theme.inactiveColor,
      iconMouseOver: theme.inactiveColor,
      mouseOver: ButtonThemeData.buttonColor(context, {WidgetState.hovered}),
      mouseDown: ButtonThemeData.buttonColor(context, {WidgetState.pressed}),
    );
    final closeButtonColors = WindowButtonColors(
      mouseOver: Colors.red,
      mouseDown: Colors.red.dark,
      iconNormal: theme.inactiveColor,
      iconMouseOver: Colors.red.basedOnLuminance(),
      iconMouseDown: Colors.red.dark.basedOnLuminance(),
    );
    return Row(
      children: [
        Tooltip(
          message: FluentLocalizations.of(context).minimizeWindowTooltip,
          child: MinimizeWindowButton(colors: buttonColors),
        ),
        Tooltip(
          message: FluentLocalizations.of(context).restoreWindowTooltip,
          child: WindowButton(
            colors: buttonColors,
            iconBuilder: (context) => appWindow.isMaximized
                ? RestoreIcon(color: context.iconColor)
                : MaximizeIcon(color: context.iconColor),
            onPressed: appWindow.maximizeOrRestore,
          ),
        ),
        Tooltip(
          message: FluentLocalizations.of(context).closeWindowTooltip,
          child: CloseWindowButton(colors: closeButtonColors),
        ),
      ],
    );
  }
}
