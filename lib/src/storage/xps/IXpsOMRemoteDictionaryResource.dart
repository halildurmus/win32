// IXpsOMRemoteDictionaryResource.dart

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

import '../../storage/xps/IXpsOMResource.dart';
import '../../storage/xps/IXpsOMDictionary.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IXpsOMRemoteDictionaryResource =
    '{C9BD7CD4-E16A-4BF8-8C84-C950AF7A3061}';

/// {@category Interface}
/// {@category com}
class IXpsOMRemoteDictionaryResource extends IXpsOMResource {
  // vtable begins at 5, is 2 entries long.
  IXpsOMRemoteDictionaryResource(Pointer<COMObject> ptr) : super(ptr);

  int GetDictionary(
    Pointer<Pointer<COMObject>> dictionary,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> dictionary,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> dictionary,
          )>()(
        ptr.ref.lpVtbl,
        dictionary,
      );

  int SetDictionary(
    Pointer<COMObject> dictionary,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> dictionary,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> dictionary,
          )>()(
        ptr.ref.lpVtbl,
        dictionary,
      );
}
