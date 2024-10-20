// Demonstrates the use of Dispatcher for calling methods on COM objects that
// support late binding. This example uses the "Shell.Application" object to
// minimize all open windows and to open the Windows Explorer starting at the
// "C:\" directory. The example also demonstrates the use of VARIANT and
// DISPPARAMS structures to pass parameters to the invoked method.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  // Initialize COM.
  CoInitializeEx(
    nullptr,
    COINIT.COINIT_APARTMENTTHREADED | COINIT.COINIT_DISABLE_OLE1DDE,
  );

  // Create a Dispatcher instance for the "Shell.Application" COM object.
  final dispatcher = Dispatcher.fromProgID('Shell.Application');

  // Example: Call the "MinimizeAll" method on the "Shell.Application" object
  // to minimize all open windows.
  print('Minimizing all windows via "Shell.Application" Automation object');
  dispatcher.invoke('MinimizeAll');

  // Example: Call the "Explore" method on the "Shell.Application" object with
  // a parameter to open the Windows Explorer starting at the "C:\" directory.
  print(r'Launching the Windows Explorer, starting at the "C:\" directory');
  final folderLocation = BSTR.fromString(r'C:\');

  // Allocate and initialize a VARIANT structure to hold the parameter.
  final exploreParam = calloc<VARIANT>();
  VariantInit(exploreParam);
  exploreParam.ref
    ..vt = VARENUM.VT_BSTR
    ..bstrVal = folderLocation.ptr;
  final exploreParams = calloc<DISPPARAMS>();
  exploreParams.ref
    ..cArgs = 1 // Number of arguments.
    ..rgvarg = exploreParam; // Pointer to the argument list.

  // Invoke the "Explore" method with the specified parameters.
  dispatcher.invoke('Explore', exploreParams);

  // Free the allocated memory for DISPPARAMS.
  free(exploreParams);

  // Clear the VARIANT structure to free the associated BSTR memory.
  VariantClear(exploreParam);
  free(exploreParam);

  // Clean up the Dispatcher instance.
  dispatcher.dispose();
  print('Done.');
}
