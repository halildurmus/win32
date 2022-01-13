// IAppxFactory2.dart

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
import '../../../system/com/IStream.dart';
import '../../../storage/packaging/appx/IAppxContentGroupMapReader.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/packaging/appx/IAppxSourceContentGroupMapReader.dart';
import '../../../storage/packaging/appx/IAppxContentGroupMapWriter.dart';

/// @nodoc
const IID_IAppxFactory2 = '{F1346DF2-C282-4E22-B918-743A929A8D55}';

/// {@category Interface}
/// {@category com}
class IAppxFactory2 extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAppxFactory2(Pointer<COMObject> ptr) : super(ptr);

  int CreateContentGroupMapReader(
    Pointer<COMObject> inputStream,
    Pointer<Pointer<COMObject>> contentGroupMapReader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<Pointer<COMObject>> contentGroupMapReader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<Pointer<COMObject>> contentGroupMapReader,
          )>()(
        ptr.ref.lpVtbl,
        inputStream,
        contentGroupMapReader,
      );

  int CreateSourceContentGroupMapReader(
    Pointer<COMObject> inputStream,
    Pointer<Pointer<COMObject>> reader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<Pointer<COMObject>> reader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<Pointer<COMObject>> reader,
          )>()(
        ptr.ref.lpVtbl,
        inputStream,
        reader,
      );

  int CreateContentGroupMapWriter(
    Pointer<COMObject> stream,
    Pointer<Pointer<COMObject>> contentGroupMapWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> stream,
            Pointer<Pointer<COMObject>> contentGroupMapWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> stream,
            Pointer<Pointer<COMObject>> contentGroupMapWriter,
          )>()(
        ptr.ref.lpVtbl,
        stream,
        contentGroupMapWriter,
      );
}
