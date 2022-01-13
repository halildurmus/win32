// IXFeedItem2.dart

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

import '../../media/mediaplayer/IXFeedItem.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IXFeedItem2 = '{6CDA2DC7-9013-4522-9970-2A9DD9EAD5A3}';

/// {@category Interface}
/// {@category com}
class IXFeedItem2 extends IXFeedItem {
  // vtable begins at 20, is 1 entries long.
  IXFeedItem2(Pointer<COMObject> ptr) : super(ptr);

  int EffectiveId(
    Pointer<Uint32> puiEffectiveId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiEffectiveId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiEffectiveId,
          )>()(
        ptr.ref.lpVtbl,
        puiEffectiveId,
      );
}
