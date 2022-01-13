// IPersistTuneXml.dart

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

import '../../system/com/IPersist.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IPersistTuneXml = '{0754CD31-8D15-47A9-8215-D20064157244}';

/// {@category Interface}
/// {@category com}
class IPersistTuneXml extends IPersist {
  // vtable begins at 4, is 3 entries long.
  IPersistTuneXml(Pointer<COMObject> ptr) : super(ptr);

  int InitNew() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int Load(
    VARIANT varValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varValue,
          )>()(
        ptr.ref.lpVtbl,
        varValue,
      );

  int Save(
    Pointer<VARIANT> pvarFragment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarFragment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarFragment,
          )>()(
        ptr.ref.lpVtbl,
        pvarFragment,
      );
}
