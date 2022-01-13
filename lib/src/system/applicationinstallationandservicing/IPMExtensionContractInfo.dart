// IPMExtensionContractInfo.dart

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
const IID_IPMExtensionContractInfo = '{E5666373-7BA1-467C-B819-B175DB1C295B}';

/// {@category Interface}
/// {@category com}
class IPMExtensionContractInfo extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPMExtensionContractInfo(Pointer<COMObject> ptr) : super(ptr);

  int get_InvocationInfo(
    Pointer<Pointer<Utf16>> pAUMID,
    Pointer<Pointer<Utf16>> pArgs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pAUMID,
            Pointer<Pointer<Utf16>> pArgs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pAUMID,
            Pointer<Pointer<Utf16>> pArgs,
          )>()(
        ptr.ref.lpVtbl,
        pAUMID,
        pArgs,
      );
}
