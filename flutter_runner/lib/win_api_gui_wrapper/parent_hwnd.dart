import 'hwnd.dart';
import 'tools.dart';

abstract class ParentHwnd extends Hwnd {
  Hwnd? _childContent;

  Hwnd? get childContent => _childContent;

  set childContent(Hwnd? child) {
    if (child == null) {
      return;
    }

    final thisSize = size;
    child.parent = this;
    child.rect = Rect(0, 0, thisSize.width, thisSize.height);
    _childContent = child;
    _childContent?.show();
  }
}
