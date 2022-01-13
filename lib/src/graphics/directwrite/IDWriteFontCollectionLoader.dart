// IDWriteFontCollectionLoader.dart

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
import '../../graphics/directwrite/IDWriteFactory.dart';
import '../../graphics/directwrite/IDWriteFontFileEnumerator.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteFontCollectionLoader =
    '{CCA920E4-52F0-492B-BFA8-29C72EE0A468}';

/// {@category Interface}
/// {@category com}
class IDWriteFontCollectionLoader extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDWriteFontCollectionLoader(Pointer<COMObject> ptr) : super(ptr);

  int CreateEnumeratorFromKey(
    Pointer<COMObject> factory,
    Pointer collectionKey,
    int collectionKeySize,
    Pointer<Pointer<COMObject>> fontFileEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> factory,
            Pointer collectionKey,
            Uint32 collectionKeySize,
            Pointer<Pointer<COMObject>> fontFileEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> factory,
            Pointer collectionKey,
            int collectionKeySize,
            Pointer<Pointer<COMObject>> fontFileEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        factory,
        collectionKey,
        collectionKeySize,
        fontFileEnumerator,
      );
}
