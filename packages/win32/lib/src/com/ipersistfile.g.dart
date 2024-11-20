// Dart representation of a COM interface.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/iunknown.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'ipersist.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IPersistFile = Guid.fromComponents(
  0x10b,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// Enables an object to be loaded from or saved to a disk file, rather than a
/// storage object or stream.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/nn-objidl-ipersistfile>.
///
/// {@category com}
class IPersistFile extends IPersist implements ComInterface {
  /// Creates a new instance of [IPersistFile] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IPersistFile] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IPersistFile(super.ptr) : _vtable = ptr.value.cast<IPersistFileVtbl>().ref;

  /// Creates a new instance of [IPersistFile] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IPersistFile] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IPersistFile.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IPersistFileVtbl _vtable;
  late final _IsDirtyFn =
      _vtable.IsDirty.asFunction<int Function(VTablePointer)>();
  late final _LoadFn =
      _vtable.Load.asFunction<int Function(VTablePointer, PCWSTR, int)>();
  late final _SaveFn =
      _vtable.Save.asFunction<int Function(VTablePointer, PCWSTR, int)>();
  late final _SaveCompletedFn =
      _vtable.SaveCompleted.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _GetCurFileFn = _vtable
      .GetCurFile.asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();

  /// Determines whether an object has changed since it was last saved to its
  /// current file.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ipersistfile-isdirty>.
  @pragma('vm:prefer-inline')
  HRESULT isDirty() => HRESULT(_IsDirtyFn(ptr));

  /// Opens the specified file and initializes an object from the file contents.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ipersistfile-load>.
  @pragma('vm:prefer-inline')
  void load(PCWSTR pszFileName, STGM dwMode) {
    final hr$ = HRESULT(_LoadFn(ptr, pszFileName, dwMode));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Saves a copy of the object to the specified file.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ipersistfile-save>.
  @pragma('vm:prefer-inline')
  void save(PCWSTR pszFileName, bool fRemember) {
    final hr$ = HRESULT(_SaveFn(ptr, pszFileName, fRemember ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Notifies the object that it can write to its file.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ipersistfile-savecompleted>.
  @pragma('vm:prefer-inline')
  void saveCompleted(PCWSTR pszFileName) {
    final hr$ = HRESULT(_SaveCompletedFn(ptr, pszFileName));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the current name of the file associated with the object.
  ///
  /// If there is no current working file, this method retrieves the default
  /// save prompt for the object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ipersistfile-getcurfile>.
  PWSTR getCurFile() {
    final ppszFileName = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetCurFileFn(ptr, ppszFileName));
    if (hr$.isError) {
      free(ppszFileName);
      throw WindowsException(hr$);
    }
    final result$ = ppszFileName.value;
    free(ppszFileName);
    return result$;
  }

  @override
  String toString() => 'IPersistFile(ptr: $ptr)';
}

/// @nodoc
base class IPersistFileVtbl extends Struct {
  external IPersistVtbl base$;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> IsDirty;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, PCWSTR pszFileName, Uint32 dwMode)
    >
  >
  Load;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, PCWSTR pszFileName, BOOL fRemember)
    >
  >
  Save;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR pszFileName)>
  >
  SaveCompleted;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PWSTR> ppszFileName)
    >
  >
  GetCurFile;
}

@internal
final class IPersistFileCompanion extends ComCompanion<IPersistFile> {
  const IPersistFileCompanion();

  @pragma('vm:prefer-inline')
  @override
  IPersistFile Function(VTablePointer) get fromPointer => IPersistFile.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IPersistFile;
}
