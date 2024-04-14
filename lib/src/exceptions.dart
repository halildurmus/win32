// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Error occurring when an operation is attempted on a device that is not
/// connected.
class DeviceNotConnectedError extends StateError {
  DeviceNotConnectedError() : super('Device is not connected.');
}
