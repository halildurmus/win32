// IWMWriterPostView.dart

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
import '../../media/windowsmediaformat/IWMWriterPostViewCallback.dart';
import '../../foundation/structs.g.dart';
import '../../media/windowsmediaformat/IWMMediaProps.dart';

/// @nodoc
const IID_IWMWriterPostView = '{81E20CE4-75EF-491A-8004-FC53C45BDC3E}';

/// {@category Interface}
/// {@category com}
class IWMWriterPostView extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IWMWriterPostView(Pointer<COMObject> ptr) : super(ptr);

  int SetPostViewCallback(
    Pointer<COMObject> pCallback,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
        pvContext,
      );

  int SetReceivePostViewSamples(
    int wStreamNum,
    int fReceivePostViewSamples,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Int32 fReceivePostViewSamples,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            int fReceivePostViewSamples,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        fReceivePostViewSamples,
      );

  int GetReceivePostViewSamples(
    int wStreamNum,
    Pointer<Int32> pfReceivePostViewSamples,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Pointer<Int32> pfReceivePostViewSamples,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            Pointer<Int32> pfReceivePostViewSamples,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        pfReceivePostViewSamples,
      );

  int GetPostViewProps(
    int wStreamNumber,
    Pointer<Pointer<COMObject>> ppOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNumber,
            Pointer<Pointer<COMObject>> ppOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNumber,
            Pointer<Pointer<COMObject>> ppOutput,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNumber,
        ppOutput,
      );

  int SetPostViewProps(
    int wStreamNumber,
    Pointer<COMObject> pOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNumber,
            Pointer<COMObject> pOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNumber,
            Pointer<COMObject> pOutput,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNumber,
        pOutput,
      );

  int GetPostViewFormatCount(
    int wStreamNumber,
    Pointer<Uint32> pcFormats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNumber,
            Pointer<Uint32> pcFormats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNumber,
            Pointer<Uint32> pcFormats,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNumber,
        pcFormats,
      );

  int GetPostViewFormat(
    int wStreamNumber,
    int dwFormatNumber,
    Pointer<Pointer<COMObject>> ppProps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNumber,
            Uint32 dwFormatNumber,
            Pointer<Pointer<COMObject>> ppProps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNumber,
            int dwFormatNumber,
            Pointer<Pointer<COMObject>> ppProps,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNumber,
        dwFormatNumber,
        ppProps,
      );

  int SetAllocateForPostView(
    int wStreamNumber,
    int fAllocate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNumber,
            Int32 fAllocate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNumber,
            int fAllocate,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNumber,
        fAllocate,
      );

  int GetAllocateForPostView(
    int wStreamNumber,
    Pointer<Int32> pfAllocate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNumber,
            Pointer<Int32> pfAllocate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNumber,
            Pointer<Int32> pfAllocate,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNumber,
        pfAllocate,
      );
}
