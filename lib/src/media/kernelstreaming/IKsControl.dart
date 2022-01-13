// IKsControl.dart

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
import '../../media/kernelstreaming/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IKsControl = '{28F54685-06FD-11D2-B27A-00A0C9223196}';

/// {@category Interface}
/// {@category com}
class IKsControl extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IKsControl(Pointer<COMObject> ptr) : super(ptr);

  int KsProperty(
    Pointer<KSIDENTIFIER> Property,
    int PropertyLength,
    Pointer PropertyData,
    int DataLength,
    Pointer<Uint32> BytesReturned,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<KSIDENTIFIER> Property,
            Uint32 PropertyLength,
            Pointer PropertyData,
            Uint32 DataLength,
            Pointer<Uint32> BytesReturned,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<KSIDENTIFIER> Property,
            int PropertyLength,
            Pointer PropertyData,
            int DataLength,
            Pointer<Uint32> BytesReturned,
          )>()(
        ptr.ref.lpVtbl,
        Property,
        PropertyLength,
        PropertyData,
        DataLength,
        BytesReturned,
      );

  int KsMethod(
    Pointer<KSIDENTIFIER> Method,
    int MethodLength,
    Pointer MethodData,
    int DataLength,
    Pointer<Uint32> BytesReturned,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<KSIDENTIFIER> Method,
            Uint32 MethodLength,
            Pointer MethodData,
            Uint32 DataLength,
            Pointer<Uint32> BytesReturned,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<KSIDENTIFIER> Method,
            int MethodLength,
            Pointer MethodData,
            int DataLength,
            Pointer<Uint32> BytesReturned,
          )>()(
        ptr.ref.lpVtbl,
        Method,
        MethodLength,
        MethodData,
        DataLength,
        BytesReturned,
      );

  int KsEvent(
    Pointer<KSIDENTIFIER> Event,
    int EventLength,
    Pointer EventData,
    int DataLength,
    Pointer<Uint32> BytesReturned,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<KSIDENTIFIER> Event,
            Uint32 EventLength,
            Pointer EventData,
            Uint32 DataLength,
            Pointer<Uint32> BytesReturned,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<KSIDENTIFIER> Event,
            int EventLength,
            Pointer EventData,
            int DataLength,
            Pointer<Uint32> BytesReturned,
          )>()(
        ptr.ref.lpVtbl,
        Event,
        EventLength,
        EventData,
        DataLength,
        BytesReturned,
      );
}
