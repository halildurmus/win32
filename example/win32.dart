import 'package:winmd/winmd.dart';

void main() {
  // Load WinMD metadata for Win32, as produced by the following utility:
  // https://github.com/microsoft/win32metadata
  final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');

  // Find the GDI API namesapce
  final gdiApi =
      scope.typeDefs.firstWhere((type) => type.typeName.endsWith('Gdi.Apis'));

  // Sort the functions alphabetically
  final sortedMethods = gdiApi.methods
    ..sort((a, b) => a.methodName.compareTo(b.methodName));

  print('------');
  // int i = 0;
  for (final method in sortedMethods) {
    for (final param in method.parameters) {
      for (final attr in param.attributes) {
        if (attr.tokenType == 0x0A000004) {
          // print('NativeTypeInfo ${method.methodName} ${param.name}');
          if (attr.signatureBlob[2] == 0x14) // ASCII
          {
            print('ASCII: ${method.methodName} ${param.name}');
          } else if (attr.signatureBlob[2] == 0x15) // Unicode
          {
            print('Unicode: ${method.methodName} ${param.name}');
          }
        }
      }

      // if (param.attributes.length == 1) {
      //   // if (param.attributes.last.signatureBlob[2] == 0x15) {
      //   print('${method.methodName} ${param.name}');
      //   // }
      // }
    }
  }
  print('------');

  // Find a specific function
  // const funcName = 'AddFontResourceW';
  const funcName = 'AddFontResourceW';
  final winmdMethod = sortedMethods.firstWhere((m) => m.methodName == funcName);

  final mAttrs = winmdMethod.attributes;
  print('There are ${mAttrs.length} method attributes:');
  for (final attr in mAttrs) {
    print(
        'attr: ${attr.signatureBlob.map((b) => b.toRadixString(16)).toList()}');
  }

  // Print out some information about it
  print('This method is token #${winmdMethod.token}');

  final mattr = winmdMethod.attributeByName('DllImport');
  print('DllImport: ${mattr.map((b) => b.toRadixString(16)).toList()}');

  final params = winmdMethod.parameters
      .map((param) => '${param.typeIdentifier} ${param.name}')
      .join(', ');
  print('The parameters are:\n$params');

  final lastParam = winmdMethod.parameters.last;
  print('Parameter: ');
  print(lastParam.signatureBlob.map((b) => b.toRadixString(8)).toList());

  final attr = lastParam.attributeByName('NativeTypeInfo');
  print('NativeTypeInfo: ${attr.map((b) => b.toRadixString(16)).toList()}');

  final attrs = lastParam.attributes;
  print('There are ${attrs.length} attributes:');
  for (final attr in attrs) {
    print(
        'attr [${attr.tokenType.toRadixString(16)}]: ${attr.signatureBlob.map((b) => b.toRadixString(16)).toList()}');
  }

//   print('Uncompressed: ');
//   var lastAttrSig = attrs.last.signatureBlob;
//   final uncompr = <int>[];
//   do {
//     final dataNugget = corSigUncompressData(lastAttrSig);
//     uncompr.add(dataNugget.data);
//     lastAttrSig = lastAttrSig.sublist(dataNugget.dataLength);
//   } while (lastAttrSig.isNotEmpty);
//   print('uncompr: ${uncompr.map((b) => b.toRadixString(16)).toList()}');
}
