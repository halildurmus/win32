// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'constants.dart';
import 'kernel32.dart';

/// Manages memory on the native heap.
///
/// Initializes newly allocated memory to zero.
class _CallocAllocator implements Allocator {
  const _CallocAllocator();

  @override
  Pointer<T> allocate<T extends NativeType>(int byteCount, {int? alignment}) {
    final heap = GetProcessHeap();

    if (heap != NULL) {
      final result = HeapAlloc(heap, HEAP_ZERO_MEMORY, byteCount);

      if (result.address != 0) {
        return result.cast<T>();
      }
    }

    throw ArgumentError('Unable to allocate required memory.');
  }

  @override
  void free(Pointer<NativeType> pointer) {
    final heap = GetProcessHeap();

    if (HeapFree(heap, 0, pointer) == 0) {
      throw ArgumentError('Could not free $pointer.');
    }
  }
}

const Allocator calloc = _CallocAllocator();
