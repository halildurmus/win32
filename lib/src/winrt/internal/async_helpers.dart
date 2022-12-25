// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import '../../exceptions.dart';
import '../foundation/enums.g.dart';
import '../foundation/iasyncaction.dart';
import '../foundation/iasyncinfo.dart';
import '../foundation/iasyncoperation.dart';

/// Completes the given [completer] by polling [asyncAction]'s `status` property
/// every `10` milliseconds until the [asyncAction] completes.
Future<void> completeAsyncAction(
  IAsyncAction asyncAction,
  Completer<void> completer,
) =>
    _completeAsyncFunction(asyncAction, completer, completer.complete);

/// Completes the given [completer] with the given [value] by polling
/// [asyncOperation]'s `status` property every `10` milliseconds until the
/// [asyncOperation] completes.
Future<void> completeAsyncOperation<T, C>(
  IAsyncOperation<T> asyncOperation,
  Completer<C> completer,
  C Function() value,
) =>
    _completeAsyncFunction(
        asyncOperation, completer, () => completer.complete(value()));

Future<void> _completeAsyncFunction<T extends IAsyncInfo, C>(
    T asyncDelegate, Completer<C> completer, void Function() onComplete) async {
  try {
    while (asyncDelegate.status == AsyncStatus.started) {
      // Yield execution to Dart for 10 milliseconds to avoid blocking the app.
      await Future<void>.delayed(const Duration(milliseconds: 10));
    }

    switch (asyncDelegate.status) {
      // This case is handled by the while loop above.
      case AsyncStatus.started:
        break;
      case AsyncStatus.completed:
        onComplete();
        break;
      case AsyncStatus.canceled:
        completer.completeError('The async operation canceled!');
        break;
      case AsyncStatus.error:
        completer.completeError(WindowsException(asyncDelegate.errorCode));
        break;
    }
  } catch (error, stackTrace) {
    completer.completeError(error, stackTrace);
  } finally {
    asyncDelegate.release();
  }
}
