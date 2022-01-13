// IServiceActivity.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../system/componentservices/IServiceCall.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IServiceActivity = '{67532E0C-9E2F-4450-A354-035633944E17}';

/// {@category Interface}
/// {@category com}
class IServiceActivity extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IServiceActivity(Pointer<COMObject> ptr) : super(ptr);

  int SynchronousCall(
    Pointer<COMObject> pIServiceCall,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIServiceCall,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIServiceCall,
          )>()(
        ptr.ref.lpVtbl,
        pIServiceCall,
      );

  int AsynchronousCall(
    Pointer<COMObject> pIServiceCall,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIServiceCall,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIServiceCall,
          )>()(
        ptr.ref.lpVtbl,
        pIServiceCall,
      );

  int BindToCurrentThread() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int UnbindFromThread() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
