import 'package:task_dialog/task_dialog.dart';
import 'package:win32/win32.dart';

void main() {
  const dialog = WindowsTaskDialog();

  final result = dialog.showMessage(
    title: 'Dart Task Dialog',
    instruction: 'Please read this message carefully',
    content:
        'Task dialogs are intended for situations where a user must read '
        'and understand contextual information before proceeding.\n\n'
        'Always design actions to be reversible.',
  );

  switch (result) {
    case IDOK:
      print('User accepted the message.');
    case IDCANCEL:
      print('User dismissed the dialog.');
    default:
      break;
  }

  final choice = dialog.showChoice(
    title: 'TaskDialogIndirect Example',
    instruction: 'Which pill will you take?',
    content: 'This is your last chance. There is no turning back.',
    expandedInfo:
        'In The Matrix, the main character Neo is offered the choice between a '
        'red pill and a blue pill by rebel leader Morpheus. The red pill '
        'represents an uncertain future: it would free him from the enslaving '
        'control of the machine-generated dream world and allow him to escape '
        'into the real world, but living the "truth of reality" is harsher and '
        'more difficult. On the other hand, the blue pill represents a '
        'beautiful prison: it would lead him back to ignorance, living in '
        'confined comfort without want or fear within the simulated reality of '
        'the Matrix.',
    choices: const [
      TaskDialogButton(
        100,
        'Take the blue pill\nThe story ends, you wake up in your bed and '
        'believe whatever you want to believe.',
      ),
      TaskDialogButton(
        101,
        'Take the red pill\nYou stay in Wonderland, and I show you how deep '
        'the rabbit hole goes.',
      ),
    ],
  );

  switch (choice) {
    case const MESSAGEBOX_RESULT(100):
      print('Ignorance is bliss.');
    case const MESSAGEBOX_RESULT(101):
      print("I've been expecting you, Mr. Anderson.");
    default:
      break;
  }
}
