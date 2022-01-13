// ITextEditProvider.dart

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

import '../../ui/accessibility/ITextProvider.dart';
import '../../ui/accessibility/ITextRangeProvider.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITextEditProvider = '{EA3605B4-3A05-400E-B5F9-4E91B40F6176}';

/// {@category Interface}
/// {@category com}
class ITextEditProvider extends ITextProvider {
  // vtable begins at 9, is 2 entries long.
  ITextEditProvider(Pointer<COMObject> ptr) : super(ptr);

  int GetActiveComposition(
    Pointer<Pointer<COMObject>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        pRetVal,
      );

  int GetConversionTarget(
    Pointer<Pointer<COMObject>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        pRetVal,
      );
}
