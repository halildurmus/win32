// IMFPresentationDescriptor.dart

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

import '../../media/mediafoundation/IMFAttributes.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFStreamDescriptor.dart';
import '../../media/mediafoundation/IMFPresentationDescriptor.dart';

/// @nodoc
const IID_IMFPresentationDescriptor = '{03CB2711-24D7-4DB6-A17F-F3A7A479A536}';

/// {@category Interface}
/// {@category com}
class IMFPresentationDescriptor extends IMFAttributes {
  // vtable begins at 33, is 5 entries long.
  IMFPresentationDescriptor(Pointer<COMObject> ptr) : super(ptr);

  int GetStreamDescriptorCount(
    Pointer<Uint32> pdwDescriptorCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwDescriptorCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwDescriptorCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwDescriptorCount,
      );

  int GetStreamDescriptorByIndex(
    int dwIndex,
    Pointer<Int32> pfSelected,
    Pointer<Pointer<COMObject>> ppDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Int32> pfSelected,
            Pointer<Pointer<COMObject>> ppDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Int32> pfSelected,
            Pointer<Pointer<COMObject>> ppDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        pfSelected,
        ppDescriptor,
      );

  int SelectStream(
    int dwDescriptorIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwDescriptorIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwDescriptorIndex,
          )>()(
        ptr.ref.lpVtbl,
        dwDescriptorIndex,
      );

  int DeselectStream(
    int dwDescriptorIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwDescriptorIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwDescriptorIndex,
          )>()(
        ptr.ref.lpVtbl,
        dwDescriptorIndex,
      );

  int Clone(
    Pointer<Pointer<COMObject>> ppPresentationDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPresentationDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPresentationDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        ppPresentationDescriptor,
      );
}
