import 'dart:ffi';

import 'package:win32/win32.dart';

import 'IUnknown.dart';
import 'combase.dart';

const IID_IWbemContext = '{44aca674-e8fc-11d0-a07c-00c04fb68820}';

class IWbemContext extends IUnknown {
  // vtable begins at 3, ends at 11

  @override
  Pointer<COMObject> ptr;

  IWbemContext(this.ptr) : super(ptr);
}
