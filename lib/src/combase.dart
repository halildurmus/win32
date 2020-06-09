import 'dart:ffi';

import 'package:ffi/ffi.dart';

class COMObject extends Struct {
  Pointer<IntPtr> lpVtbl;

  Pointer<IntPtr> get vtable => Pointer.fromAddress(lpVtbl.value);

  factory COMObject.allocate() =>
      allocate<COMObject>().ref..lpVtbl = allocate<IntPtr>();
}
