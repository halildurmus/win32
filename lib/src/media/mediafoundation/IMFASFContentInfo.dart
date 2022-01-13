// IMFASFContentInfo.dart

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
import '../../media/mediafoundation/IMFMediaBuffer.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFASFProfile.dart';
import '../../media/mediafoundation/IMFPresentationDescriptor.dart';
import '../../ui/shell/propertiessystem/IPropertyStore.dart';

/// @nodoc
const IID_IMFASFContentInfo = '{B1DCA5CD-D5DA-4451-8E9E-DB5C59914EAD}';

/// {@category Interface}
/// {@category com}
class IMFASFContentInfo extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IMFASFContentInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetHeaderSize(
    Pointer<COMObject> pIStartOfContent,
    Pointer<Uint64> cbHeaderSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIStartOfContent,
            Pointer<Uint64> cbHeaderSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIStartOfContent,
            Pointer<Uint64> cbHeaderSize,
          )>()(
        ptr.ref.lpVtbl,
        pIStartOfContent,
        cbHeaderSize,
      );

  int ParseHeader(
    Pointer<COMObject> pIHeaderBuffer,
    int cbOffsetWithinHeader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIHeaderBuffer,
            Uint64 cbOffsetWithinHeader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIHeaderBuffer,
            int cbOffsetWithinHeader,
          )>()(
        ptr.ref.lpVtbl,
        pIHeaderBuffer,
        cbOffsetWithinHeader,
      );

  int GenerateHeader(
    Pointer<COMObject> pIHeader,
    Pointer<Uint32> pcbHeader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIHeader,
            Pointer<Uint32> pcbHeader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIHeader,
            Pointer<Uint32> pcbHeader,
          )>()(
        ptr.ref.lpVtbl,
        pIHeader,
        pcbHeader,
      );

  int GetProfile(
    Pointer<Pointer<COMObject>> ppIProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIProfile,
          )>()(
        ptr.ref.lpVtbl,
        ppIProfile,
      );

  int SetProfile(
    Pointer<COMObject> pIProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIProfile,
          )>()(
        ptr.ref.lpVtbl,
        pIProfile,
      );

  int GeneratePresentationDescriptor(
    Pointer<Pointer<COMObject>> ppIPresentationDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIPresentationDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIPresentationDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        ppIPresentationDescriptor,
      );

  int GetEncodingConfigurationPropertyStore(
    int wStreamNumber,
    Pointer<Pointer<COMObject>> ppIStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNumber,
            Pointer<Pointer<COMObject>> ppIStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNumber,
            Pointer<Pointer<COMObject>> ppIStore,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNumber,
        ppIStore,
      );
}
