// IProviderConverter.dart

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
import '../../system/windowssync/ISyncProvider.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IProviderConverter = '{809B7276-98CF-4957-93A5-0EBDD3DDDFFD}';

/// {@category Interface}
/// {@category com}
class IProviderConverter extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IProviderConverter(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pISyncProvider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pISyncProvider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pISyncProvider,
          )>()(
        ptr.ref.lpVtbl,
        pISyncProvider,
      );
}
