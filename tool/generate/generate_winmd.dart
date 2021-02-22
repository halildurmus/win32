// generate_winmd.dart

import 'dart:io';
import 'package:winmd/winmd.dart';

class COMType {
  final String typeName;
  final String inheritsFrom;
  final int vTableStart;
  final bool generateClass;

  const COMType(this.typeName, this.inheritsFrom,
      {this.vTableStart = 0, this.generateClass = false});
}

// TODO: Bootstrapping here. Ideally we'd be able to generate most of this
//       automatically in the future.
const interfacesToGenerate = <COMType>[
  COMType('Windows.Win32.Com.IUnknown', ''),
  COMType('Windows.Win32.Com.IBindCtx', 'IUnknown', vTableStart: 3),
  COMType('Windows.Win32.Com.IClassFactory', 'IUnknown', vTableStart: 3),
  COMType('Windows.Win32.Com.IEnumMoniker', 'IUnknown', vTableStart: 3),
  COMType('Windows.Win32.Com.IEnumString', 'IUnknown', vTableStart: 3),
  COMType('Windows.Win32.Automation.IErrorInfo', 'IUnknown', vTableStart: 3),
  COMType('Windows.Win32.Automation.IDispatch', 'IUnknown', vTableStart: 3),
  COMType('Windows.Win32.Shell.IFileIsInUse', 'IUnknown', vTableStart: 3),
  COMType('Windows.Win32.Shell.IDesktopWallpaper', 'IUnknown',
      vTableStart: 3, generateClass: true),
  COMType('Windows.Win32.WinRT.IInspectable', 'IUnknown', vTableStart: 3),
  COMType(
      'Windows.Win32.NetworkListManager.IEnumNetworkConnections', 'IDispatch',
      vTableStart: 7),
  COMType('Windows.Win32.NetworkListManager.INetwork', 'IDispatch',
      vTableStart: 7),
  COMType('Windows.Win32.NetworkListManager.INetworkListManager', 'IDispatch',
      vTableStart: 7, generateClass: true),
  COMType('Windows.Win32.Automation.IEnumVARIANT', 'IUnknown', vTableStart: 3),
  COMType('Windows.Win32.Shell.IFileDialog', 'IModalWindow', vTableStart: 4),
  COMType('Windows.Win32.Shell.IFileDialog2', 'IFileDialog', vTableStart: 27),
  COMType('Windows.Win32.Shell.IFileDialogCustomize', 'IUnknown',
      vTableStart: 3),
  COMType('Windows.Win32.Shell.IFileOpenDialog', 'IFileDialog',
      vTableStart: 27, generateClass: true),
  COMType('Windows.Win32.Shell.IFileSaveDialog', 'IFileDialog',
      vTableStart: 27, generateClass: true),
  COMType('Windows.Win32.Shell.IKnownFolder', 'IUnknown', vTableStart: 3),
  COMType('Windows.Win32.Shell.IKnownFolderManager', 'IUnknown',
      vTableStart: 3),
  COMType('Windows.Win32.Shell.IModalWindow', 'IUnknown', vTableStart: 3),
  COMType('Windows.Win32.Com.IMoniker', 'IPersistStream', vTableStart: 8),
  COMType('Windows.Win32.NetworkListManager.INetworkConnection', 'IDispatch',
      vTableStart: 7),
  COMType('Windows.Win32.Com.IPersist', 'IUnknown', vTableStart: 3),
  COMType('Windows.Win32.Com.IPersistStream', 'IPersist', vTableStart: 4),
  COMType('Windows.Win32.Com.IProvideClassInfo', 'IUnknown', vTableStart: 3),
  COMType('Windows.Win32.Com.IRunningObjectTable', 'IUnknown', vTableStart: 3),
  COMType('Windows.Win32.StructuredStorage.ISequentialStream', 'IUnknown',
      vTableStart: 3),
];

// /// {@category com}
// class FileOpenDialog extends IFileOpenDialog {
//   FileOpenDialog(Pointer<COMObject> ptr) : super(ptr);

//   factory FileOpenDialog.createInstance() {
//     final ptr = calloc<COMObject>();
//     final clsid = calloc<GUID>()..ref.setGUID(CLSID_FileOpenDialog);
//     final iid = calloc<GUID>()..ref.setGUID(IID_IFileOpenDialog);

//     try {
//       final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

//       if (FAILED(hr)) throw WindowsException(hr);

//       return FileOpenDialog(ptr);
//     } finally {
//       calloc.free(clsid);
//       calloc.free(iid);
//     }
//   }
// }

void main(List<String> args) {
  final scope = MetadataStore.getScopeForFile('tool/win32/Windows.Win32.winmd');

  final outputDirectory = (args.length == 1)
      ? Directory(args.first)
      : Directory('lib/src/generated');

  for (final type in interfacesToGenerate) {
    final mdTypeDef = scope.findTypeDef(type.typeName)!;

    var clsid = '';
    if (type.generateClass) {
      final typeNameAsList = type.typeName.split('.');
      final fullyQualifiedClassName =
          (typeNameAsList.sublist(0, typeNameAsList.length - 1)
                ..add(typeNameAsList.last.substring(1)))
              .join('.');
      clsid = scope.findTypeDef(fullyQualifiedClassName)!.guid ?? '';
    }

    final projection = TypeBuilder.projectWindowsType(mdTypeDef)
      ..inherits = type.inheritsFrom
      ..vtableStart = type.vTableStart
      ..sourceType = SourceType.com
      ..generateClass = type.generateClass
      ..clsid = clsid
      ..className = type.typeName.split('.').last.substring(1);

    final dartClass = TypePrinter.printType(projection);

    final outputFilename = type.typeName.split('.').last;
    final outputFile =
        File('${outputDirectory.uri.toFilePath()}$outputFilename.dart');

    print('Writing:    ${outputFile.path}');
    outputFile.writeAsStringSync(dartClass);
  }
}
