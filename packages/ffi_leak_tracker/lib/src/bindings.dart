// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

@Native<Pointer Function(IntPtr, IntPtr)>(symbol: 'calloc')
external Pointer posixCalloc(int num, int size);

@Native<Pointer Function(IntPtr)>(symbol: 'malloc')
external Pointer posixMalloc(int size);

@Native(symbol: 'free')
external void posixFree(Pointer ptr);

final Pointer<NativeFunction<Void Function(Pointer)>> posixFreeAddress =
    Native.addressOf(posixFree);

@Native<Pointer Function(IntPtr)>()
external Pointer CoTaskMemAlloc(int cb);

@Native()
external void CoTaskMemFree(Pointer pv);

final Pointer<NativeFunction<Void Function(Pointer)>> coTaskMemFreeAddress =
    Native.addressOf(CoTaskMemFree);
