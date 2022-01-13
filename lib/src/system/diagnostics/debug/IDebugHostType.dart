// IDebugHostType.dart

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

import '../../../system/diagnostics/debug/IDebugHostSymbol.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugHostType.dart';

/// @nodoc
const IID_IDebugHostType = '{3AADC353-2B14-4ABB-9893-5E03458E07EE}';

/// {@category Interface}
/// {@category com}
class IDebugHostType extends IDebugHostSymbol {
  // vtable begins at 10, is 19 entries long.
  IDebugHostType(Pointer<COMObject> ptr) : super(ptr);

  int GetTypeKind(
    Pointer<Int32> kind,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> kind,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> kind,
          )>()(
        ptr.ref.lpVtbl,
        kind,
      );

  int GetSize(
    Pointer<Uint64> size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> size,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> size,
          )>()(
        ptr.ref.lpVtbl,
        size,
      );

  int GetBaseType(
    Pointer<Pointer<COMObject>> baseType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> baseType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> baseType,
          )>()(
        ptr.ref.lpVtbl,
        baseType,
      );

  int GetHashCode(
    Pointer<Uint32> hashCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> hashCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> hashCode,
          )>()(
        ptr.ref.lpVtbl,
        hashCode,
      );

  int GetIntrinsicType(
    Pointer<Int32> intrinsicKind,
    Pointer<Uint16> carrierType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> intrinsicKind,
            Pointer<Uint16> carrierType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> intrinsicKind,
            Pointer<Uint16> carrierType,
          )>()(
        ptr.ref.lpVtbl,
        intrinsicKind,
        carrierType,
      );

  int GetBitField(
    Pointer<Uint32> lsbOfField,
    Pointer<Uint32> lengthOfField,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lsbOfField,
            Pointer<Uint32> lengthOfField,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lsbOfField,
            Pointer<Uint32> lengthOfField,
          )>()(
        ptr.ref.lpVtbl,
        lsbOfField,
        lengthOfField,
      );

  int GetPointerKind(
    Pointer<Int32> pointerKind,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pointerKind,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pointerKind,
          )>()(
        ptr.ref.lpVtbl,
        pointerKind,
      );

  int GetMemberType(
    Pointer<Pointer<COMObject>> memberType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> memberType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> memberType,
          )>()(
        ptr.ref.lpVtbl,
        memberType,
      );

  int CreatePointerTo(
    int kind,
    Pointer<Pointer<COMObject>> newType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 kind,
            Pointer<Pointer<COMObject>> newType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int kind,
            Pointer<Pointer<COMObject>> newType,
          )>()(
        ptr.ref.lpVtbl,
        kind,
        newType,
      );

  int GetArrayDimensionality(
    Pointer<Uint64> arrayDimensionality,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> arrayDimensionality,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> arrayDimensionality,
          )>()(
        ptr.ref.lpVtbl,
        arrayDimensionality,
      );

  int GetArrayDimensions(
    int dimensions,
    Pointer<ArrayDimension> pDimensions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 dimensions,
            Pointer<ArrayDimension> pDimensions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dimensions,
            Pointer<ArrayDimension> pDimensions,
          )>()(
        ptr.ref.lpVtbl,
        dimensions,
        pDimensions,
      );

  int CreateArrayOf(
    int dimensions,
    Pointer<ArrayDimension> pDimensions,
    Pointer<Pointer<COMObject>> newType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 dimensions,
            Pointer<ArrayDimension> pDimensions,
            Pointer<Pointer<COMObject>> newType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dimensions,
            Pointer<ArrayDimension> pDimensions,
            Pointer<Pointer<COMObject>> newType,
          )>()(
        ptr.ref.lpVtbl,
        dimensions,
        pDimensions,
        newType,
      );

  int GetFunctionCallingConvention(
    Pointer<Int32> conventionKind,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> conventionKind,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> conventionKind,
          )>()(
        ptr.ref.lpVtbl,
        conventionKind,
      );

  int GetFunctionReturnType(
    Pointer<Pointer<COMObject>> returnType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> returnType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> returnType,
          )>()(
        ptr.ref.lpVtbl,
        returnType,
      );

  int GetFunctionParameterTypeCount(
    Pointer<Uint64> count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> count,
          )>()(
        ptr.ref.lpVtbl,
        count,
      );

  int GetFunctionParameterTypeAt(
    int i,
    Pointer<Pointer<COMObject>> parameterType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 i,
            Pointer<Pointer<COMObject>> parameterType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int i,
            Pointer<Pointer<COMObject>> parameterType,
          )>()(
        ptr.ref.lpVtbl,
        i,
        parameterType,
      );

  int IsGeneric(
    Pointer<Bool> isGeneric,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Bool> isGeneric,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Bool> isGeneric,
          )>()(
        ptr.ref.lpVtbl,
        isGeneric,
      );

  int GetGenericArgumentCount(
    Pointer<Uint64> argCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> argCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> argCount,
          )>()(
        ptr.ref.lpVtbl,
        argCount,
      );

  int GetGenericArgumentAt(
    int i,
    Pointer<Pointer<COMObject>> argument,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 i,
            Pointer<Pointer<COMObject>> argument,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int i,
            Pointer<Pointer<COMObject>> argument,
          )>()(
        ptr.ref.lpVtbl,
        i,
        argument,
      );
}
