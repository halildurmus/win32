// IDebugAdvanced3.dart

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

/// @nodoc
const IID_IDebugAdvanced3 = '{CBA4ABB4-84C4-444D-87CA-A04E13286739}';

/// {@category Interface}
/// {@category com}
class IDebugAdvanced3 extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IDebugAdvanced3(Pointer<COMObject> ptr) : super(ptr);

  int GetThreadContext(
    Pointer Context,
    int ContextSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer Context,
            Uint32 ContextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer Context,
            int ContextSize,
          )>()(
        ptr.ref.lpVtbl,
        Context,
        ContextSize,
      );

  int SetThreadContext(
    Pointer Context,
    int ContextSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer Context,
            Uint32 ContextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer Context,
            int ContextSize,
          )>()(
        ptr.ref.lpVtbl,
        Context,
        ContextSize,
      );

  int Request(
    int Request,
    Pointer InBuffer,
    int InBufferSize,
    Pointer OutBuffer,
    int OutBufferSize,
    Pointer<Uint32> OutSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Request,
            Pointer InBuffer,
            Uint32 InBufferSize,
            Pointer OutBuffer,
            Uint32 OutBufferSize,
            Pointer<Uint32> OutSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Request,
            Pointer InBuffer,
            int InBufferSize,
            Pointer OutBuffer,
            int OutBufferSize,
            Pointer<Uint32> OutSize,
          )>()(
        ptr.ref.lpVtbl,
        Request,
        InBuffer,
        InBufferSize,
        OutBuffer,
        OutBufferSize,
        OutSize,
      );

  int GetSourceFileInformation(
    int Which,
    Pointer<Utf8> SourceFile,
    int Arg64,
    int Arg32,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> InfoSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Which,
            Pointer<Utf8> SourceFile,
            Uint64 Arg64,
            Uint32 Arg32,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> InfoSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Which,
            Pointer<Utf8> SourceFile,
            int Arg64,
            int Arg32,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> InfoSize,
          )>()(
        ptr.ref.lpVtbl,
        Which,
        SourceFile,
        Arg64,
        Arg32,
        Buffer,
        BufferSize,
        InfoSize,
      );

  int FindSourceFileAndToken(
    int StartElement,
    int ModAddr,
    Pointer<Utf8> File,
    int Flags,
    Pointer FileToken,
    int FileTokenSize,
    Pointer<Uint32> FoundElement,
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> FoundSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StartElement,
            Uint64 ModAddr,
            Pointer<Utf8> File,
            Uint32 Flags,
            Pointer FileToken,
            Uint32 FileTokenSize,
            Pointer<Uint32> FoundElement,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> FoundSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StartElement,
            int ModAddr,
            Pointer<Utf8> File,
            int Flags,
            Pointer FileToken,
            int FileTokenSize,
            Pointer<Uint32> FoundElement,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> FoundSize,
          )>()(
        ptr.ref.lpVtbl,
        StartElement,
        ModAddr,
        File,
        Flags,
        FileToken,
        FileTokenSize,
        FoundElement,
        Buffer,
        BufferSize,
        FoundSize,
      );

  int GetSymbolInformation(
    int Which,
    int Arg64,
    int Arg32,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> InfoSize,
    Pointer<Utf8> StringBuffer,
    int StringBufferSize,
    Pointer<Uint32> StringSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Which,
            Uint64 Arg64,
            Uint32 Arg32,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> InfoSize,
            Pointer<Utf8> StringBuffer,
            Uint32 StringBufferSize,
            Pointer<Uint32> StringSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Which,
            int Arg64,
            int Arg32,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> InfoSize,
            Pointer<Utf8> StringBuffer,
            int StringBufferSize,
            Pointer<Uint32> StringSize,
          )>()(
        ptr.ref.lpVtbl,
        Which,
        Arg64,
        Arg32,
        Buffer,
        BufferSize,
        InfoSize,
        StringBuffer,
        StringBufferSize,
        StringSize,
      );

  int GetSystemObjectInformation(
    int Which,
    int Arg64,
    int Arg32,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> InfoSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Which,
            Uint64 Arg64,
            Uint32 Arg32,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> InfoSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Which,
            int Arg64,
            int Arg32,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> InfoSize,
          )>()(
        ptr.ref.lpVtbl,
        Which,
        Arg64,
        Arg32,
        Buffer,
        BufferSize,
        InfoSize,
      );

  int GetSourceFileInformationWide(
    int Which,
    Pointer<Utf16> SourceFile,
    int Arg64,
    int Arg32,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> InfoSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Which,
            Pointer<Utf16> SourceFile,
            Uint64 Arg64,
            Uint32 Arg32,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> InfoSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Which,
            Pointer<Utf16> SourceFile,
            int Arg64,
            int Arg32,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> InfoSize,
          )>()(
        ptr.ref.lpVtbl,
        Which,
        SourceFile,
        Arg64,
        Arg32,
        Buffer,
        BufferSize,
        InfoSize,
      );

  int FindSourceFileAndTokenWide(
    int StartElement,
    int ModAddr,
    Pointer<Utf16> File,
    int Flags,
    Pointer FileToken,
    int FileTokenSize,
    Pointer<Uint32> FoundElement,
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> FoundSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StartElement,
            Uint64 ModAddr,
            Pointer<Utf16> File,
            Uint32 Flags,
            Pointer FileToken,
            Uint32 FileTokenSize,
            Pointer<Uint32> FoundElement,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> FoundSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StartElement,
            int ModAddr,
            Pointer<Utf16> File,
            int Flags,
            Pointer FileToken,
            int FileTokenSize,
            Pointer<Uint32> FoundElement,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> FoundSize,
          )>()(
        ptr.ref.lpVtbl,
        StartElement,
        ModAddr,
        File,
        Flags,
        FileToken,
        FileTokenSize,
        FoundElement,
        Buffer,
        BufferSize,
        FoundSize,
      );

  int GetSymbolInformationWide(
    int Which,
    int Arg64,
    int Arg32,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> InfoSize,
    Pointer<Utf16> StringBuffer,
    int StringBufferSize,
    Pointer<Uint32> StringSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Which,
            Uint64 Arg64,
            Uint32 Arg32,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> InfoSize,
            Pointer<Utf16> StringBuffer,
            Uint32 StringBufferSize,
            Pointer<Uint32> StringSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Which,
            int Arg64,
            int Arg32,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> InfoSize,
            Pointer<Utf16> StringBuffer,
            int StringBufferSize,
            Pointer<Uint32> StringSize,
          )>()(
        ptr.ref.lpVtbl,
        Which,
        Arg64,
        Arg32,
        Buffer,
        BufferSize,
        InfoSize,
        StringBuffer,
        StringBufferSize,
        StringSize,
      );
}
