// IAppxBlockMapReader.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/packaging/appx/IAppxBlockMapFile.dart';
import '../../../storage/packaging/appx/IAppxBlockMapFilesEnumerator.dart';
import '../../../system/com/IUri.dart';
import '../../../system/com/IStream.dart';

/// @nodoc
const IID_IAppxBlockMapReader = '{5EFEC991-BCA3-42D1-9EC2-E92D609EC22A}';

/// {@category Interface}
/// {@category com}
class IAppxBlockMapReader extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IAppxBlockMapReader(Pointer<COMObject> ptr) : super(ptr);

  int GetFile(
    Pointer<Utf16> filename,
    Pointer<Pointer<COMObject>> file,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filename,
            Pointer<Pointer<COMObject>> file,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filename,
            Pointer<Pointer<COMObject>> file,
          )>()(
        ptr.ref.lpVtbl,
        filename,
        file,
      );

  int GetFiles(
    Pointer<Pointer<COMObject>> enumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> enumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> enumerator,
          )>()(
        ptr.ref.lpVtbl,
        enumerator,
      );

  int GetHashMethod(
    Pointer<Pointer<COMObject>> hashMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> hashMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> hashMethod,
          )>()(
        ptr.ref.lpVtbl,
        hashMethod,
      );

  int GetStream(
    Pointer<Pointer<COMObject>> blockMapStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> blockMapStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> blockMapStream,
          )>()(
        ptr.ref.lpVtbl,
        blockMapStream,
      );
}
