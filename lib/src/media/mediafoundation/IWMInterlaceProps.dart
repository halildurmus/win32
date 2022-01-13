// IWMInterlaceProps.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMInterlaceProps = '{7B12E5D1-BD22-48EA-BC06-98E893221C89}';

/// {@category Interface}
/// {@category com}
class IWMInterlaceProps extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWMInterlaceProps(Pointer<COMObject> ptr) : super(ptr);

  int SetProcessType(
    int iProcessType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iProcessType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iProcessType,
          )>()(
        ptr.ref.lpVtbl,
        iProcessType,
      );

  int SetInitInverseTeleCinePattern(
    int iInitPattern,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iInitPattern,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iInitPattern,
          )>()(
        ptr.ref.lpVtbl,
        iInitPattern,
      );

  int SetLastFrame() => ptr.ref.lpVtbl.value
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
}
