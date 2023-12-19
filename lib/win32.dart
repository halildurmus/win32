// Copyright (c) 2020, Dart | Windows.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: directives_ordering

/// Support for programming against the Win32 API on Windows operating systems.
///
/// This library provides a wrapper around many useful functions from the API,
/// along with the necessary constants and structs that are supplied. With
/// thousands of APIs and interfaces in the Win32 API, many of which cover areas
/// that would be unlikely to be useful to a Dart or Flutter developer, this
/// library is not intended to be exhaustive. Instead, we focus on the core
/// Win32 APIs that are typically used for Windows development, along with Win32
/// and COM APIs that are likely to be wrapped by a Flutter plugin author.
///
/// Win32 is at its heart a C-based API, and accordingly adopts the style and
/// idioms of that language, including heavy usage of pointers, structs
/// allocated on the heap, and null-terminated strings. As a result, you may
/// choose to wrap the exposed APIs in your application to make their invocation
/// more idiomatic for a Dart consumer.
///
/// For more conceptual material about programming Win32 apps with Dart, consult
/// the [Dart | Windows documentation](
/// https://win32.pub/docs/category/win32-programming).
library win32;

// Core Win32 APIs, constants and macros
export 'src/bstr.dart';
export 'src/callbacks.dart';
export 'src/constants.dart';
export 'src/constants_metadata.dart';
export 'src/constants_nodoc.dart';
export 'src/exceptions.dart';
export 'src/guid.dart';
export 'src/inline.dart';
export 'src/macros.dart';
export 'src/propertykey.dart';
export 'src/structs.g.dart'
    hide
        ADDRINFO,
        FD_SET,
        IN_ADDR,
        SOCKADDR,
        TIMEVAL,
        HOSTENT,
        PROTOENT,
        SERVENT;
export 'src/types.dart';
export 'src/utils.dart';
export 'src/variant.dart';
export 'src/winmd_constants.dart';

// Windows Runtime helpers
export 'src/winrt_helpers.dart';

// Useful extension methods
export 'src/extensions/dialogs.dart';
export 'src/extensions/int_to_hexstring.dart';
export 'src/extensions/list_to_blob.dart';
export 'src/extensions/set_ansi.dart';
export 'src/extensions/set_string.dart';
export 'src/extensions/set_string_array.dart';
export 'src/extensions/unpack_utf16.dart';

// Traditional C-style Windows APIs
export 'src/win32/advapi32.g.dart';
export 'src/win32/bluetoothapis.g.dart';
export 'src/win32/bthprops.g.dart';
export 'src/win32/comctl32.g.dart';
export 'src/win32/comdlg32.g.dart';
export 'src/win32/crypt32.g.dart';
export 'src/win32/dbghelp.g.dart';
export 'src/win32/dwmapi.g.dart';
export 'src/win32/dxva2.g.dart';
export 'src/win32/gdi32.g.dart';
export 'src/win32/iphlpapi.g.dart';
export 'src/win32/kernel32.g.dart';
export 'src/win32/magnification.g.dart';
export 'src/win32/netapi32.g.dart';
export 'src/win32/ntdll.g.dart';
export 'src/win32/ole32.g.dart';
export 'src/win32/oleaut32.g.dart';
export 'src/win32/powrprof.g.dart';
export 'src/win32/rometadata.g.dart';
export 'src/win32/scarddlg.g.dart';
export 'src/win32/setupapi.g.dart';
export 'src/win32/shell32.g.dart';
export 'src/win32/user32.g.dart';
export 'src/win32/uxtheme.g.dart';
export 'src/win32/version.g.dart';
export 'src/win32/winmm.g.dart';
export 'src/win32/winscard.g.dart';
export 'src/win32/winspool.g.dart';
export 'src/win32/wlanapi.g.dart';
export 'src/win32/xinput1_4.g.dart';

// API sets are used to export recent C-style APIs
export 'src/win32/api_ms_win_core_apiquery_l2_1_0.g.dart';
export 'src/win32/api_ms_win_core_comm_l1_1_1.g.dart';
export 'src/win32/api_ms_win_core_comm_l1_1_2.g.dart';
export 'src/win32/api_ms_win_core_handle_l1_1_0.g.dart';
export 'src/win32/api_ms_win_core_sysinfo_l1_2_3.g.dart';
export 'src/win32/api_ms_win_core_winrt_l1_1_0.g.dart';
export 'src/win32/api_ms_win_core_winrt_error_l1_1_0.g.dart';
export 'src/win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';
export 'src/win32/api_ms_win_ro_typeresolution_l1_1_0.g.dart';
export 'src/win32/api_ms_win_ro_typeresolution_l1_1_1.g.dart';
export 'src/win32/api_ms_win_shcore_scaling_l1_1_1.g.dart';
export 'src/win32/api_ms_win_wsl_api_l1_1_0.g.dart';

// COM foundational exports
export 'src/combase.dart';

// COM interfaces
export 'src/com/iactivateaudiointerfaceasyncoperation.dart';
export 'src/com/iactivateaudiointerfacecompletionhandler.dart';
export 'src/com/iagileobject.dart';
export 'src/com/iapplicationactivationmanager.dart';
export 'src/com/iappxfactory.dart';
export 'src/com/iappxfile.dart';
export 'src/com/iappxfilesenumerator.dart';
export 'src/com/iappxmanifestapplication.dart';
export 'src/com/iappxmanifestapplicationsenumerator.dart';
export 'src/com/iappxmanifestospackagedependency.dart';
export 'src/com/iappxmanifestpackagedependenciesenumerator.dart';
export 'src/com/iappxmanifestpackagedependency.dart';
export 'src/com/iappxmanifestpackageid.dart';
export 'src/com/iappxmanifestproperties.dart';
export 'src/com/iappxmanifestreader.dart';
export 'src/com/iappxmanifestreader2.dart';
export 'src/com/iappxmanifestreader3.dart';
export 'src/com/iappxmanifestreader4.dart';
export 'src/com/iappxmanifestreader5.dart';
export 'src/com/iappxmanifestreader6.dart';
export 'src/com/iappxmanifestreader7.dart';
export 'src/com/iappxpackagereader.dart';
export 'src/com/iaudiocaptureclient.dart';
export 'src/com/iaudioclient.dart';
export 'src/com/iaudioclient2.dart';
export 'src/com/iaudioclient3.dart';
export 'src/com/iaudioclientduckingcontrol.dart';
export 'src/com/iaudioclock.dart';
export 'src/com/iaudioclock2.dart';
export 'src/com/iaudioclockadjustment.dart';
export 'src/com/iaudiorenderclient.dart';
export 'src/com/iaudiosessioncontrol.dart';
export 'src/com/iaudiosessionmanager.dart';
export 'src/com/iaudiostreamvolume.dart';
export 'src/com/ibindctx.dart';
export 'src/com/ichannelaudiovolume.dart';
export 'src/com/iclassfactory.dart';
export 'src/com/iconnectionpoint.dart';
export 'src/com/iconnectionpointcontainer.dart';
export 'src/com/idesktopwallpaper.dart';
export 'src/com/idispatch.dart';
export 'src/com/ienumidlist.dart';
export 'src/com/ienummoniker.dart';
export 'src/com/ienumnetworkconnections.dart';
export 'src/com/ienumnetworks.dart';
export 'src/com/ienumresources.dart';
export 'src/com/ienumspellingerror.dart';
export 'src/com/ienumstring.dart';
export 'src/com/ienumvariant.dart';
export 'src/com/ienumwbemclassobject.dart';
export 'src/com/ierrorinfo.dart';
export 'src/com/ifiledialog.dart';
export 'src/com/ifiledialog2.dart';
export 'src/com/ifiledialogcustomize.dart';
export 'src/com/ifileisinuse.dart';
export 'src/com/ifileopendialog.dart';
export 'src/com/ifilesavedialog.dart';
export 'src/com/iinitializewithwindow.dart';
export 'src/com/iinspectable.dart';
export 'src/com/iknownfolder.dart';
export 'src/com/iknownfoldermanager.dart';
export 'src/com/imetadataassemblyimport.dart';
export 'src/com/imetadatadispenser.dart';
export 'src/com/imetadatadispenserex.dart';
export 'src/com/imetadataimport.dart';
export 'src/com/imetadataimport2.dart';
export 'src/com/imetadatatables.dart';
export 'src/com/imetadatatables2.dart';
export 'src/com/immdevice.dart';
export 'src/com/immdevicecollection.dart';
export 'src/com/immdeviceenumerator.dart';
export 'src/com/immendpoint.dart';
export 'src/com/immnotificationclient.dart';
export 'src/com/imodalwindow.dart';
export 'src/com/imoniker.dart';
export 'src/com/inetwork.dart';
export 'src/com/inetworkconnection.dart';
export 'src/com/inetworklistmanager.dart';
export 'src/com/inetworklistmanagerevents.dart';
export 'src/com/ipersist.dart';
export 'src/com/ipersistfile.dart';
export 'src/com/ipersistmemory.dart';
export 'src/com/ipersiststream.dart';
export 'src/com/ipropertystore.dart';
export 'src/com/iprovideclassinfo.dart';
export 'src/com/irestrictederrorinfo.dart';
export 'src/com/irunningobjecttable.dart';
export 'src/com/isensor.dart';
export 'src/com/isensorcollection.dart';
export 'src/com/isensordatareport.dart';
export 'src/com/isensormanager.dart';
export 'src/com/isequentialstream.dart';
export 'src/com/ishellfolder.dart';
export 'src/com/ishellitem.dart';
export 'src/com/ishellitem2.dart';
export 'src/com/ishellitemarray.dart';
export 'src/com/ishellitemfilter.dart';
export 'src/com/ishellitemimagefactory.dart';
export 'src/com/ishellitemresources.dart';
export 'src/com/ishelllink.dart';
export 'src/com/ishelllinkdatalist.dart';
export 'src/com/ishelllinkdual.dart';
export 'src/com/ishellservice.dart';
export 'src/com/isimpleaudiovolume.dart';
export 'src/com/ispeechaudioformat.dart';
export 'src/com/ispeechbasestream.dart';
export 'src/com/ispeechobjecttoken.dart';
export 'src/com/ispeechobjecttokens.dart';
export 'src/com/ispeechvoice.dart';
export 'src/com/ispeechvoicestatus.dart';
export 'src/com/ispeechwaveformatex.dart';
export 'src/com/ispellchecker.dart';
export 'src/com/ispellchecker2.dart';
export 'src/com/ispellcheckerchangedeventhandler.dart';
export 'src/com/ispellcheckerfactory.dart';
export 'src/com/ispellingerror.dart';
export 'src/com/ispeventsource.dart';
export 'src/com/ispnotifysource.dart';
export 'src/com/ispvoice.dart';
export 'src/com/istream.dart';
export 'src/com/isupporterrorinfo.dart';
export 'src/com/itypeinfo.dart';
export 'src/com/iuiautomation.dart';
export 'src/com/iuiautomation2.dart';
export 'src/com/iuiautomation3.dart';
export 'src/com/iuiautomation4.dart';
export 'src/com/iuiautomation5.dart';
export 'src/com/iuiautomation6.dart';
export 'src/com/iuiautomationandcondition.dart';
export 'src/com/iuiautomationannotationpattern.dart';
export 'src/com/iuiautomationboolcondition.dart';
export 'src/com/iuiautomationcacherequest.dart';
export 'src/com/iuiautomationcondition.dart';
export 'src/com/iuiautomationcustomnavigationpattern.dart';
export 'src/com/iuiautomationdockpattern.dart';
export 'src/com/iuiautomationdragpattern.dart';
export 'src/com/iuiautomationdroptargetpattern.dart';
export 'src/com/iuiautomationelement.dart';
export 'src/com/iuiautomationelement2.dart';
export 'src/com/iuiautomationelement3.dart';
export 'src/com/iuiautomationelement4.dart';
export 'src/com/iuiautomationelement5.dart';
export 'src/com/iuiautomationelement6.dart';
export 'src/com/iuiautomationelement7.dart';
export 'src/com/iuiautomationelement8.dart';
export 'src/com/iuiautomationelement9.dart';
export 'src/com/iuiautomationelementarray.dart';
export 'src/com/iuiautomationexpandcollapsepattern.dart';
export 'src/com/iuiautomationgriditempattern.dart';
export 'src/com/iuiautomationgridpattern.dart';
export 'src/com/iuiautomationinvokepattern.dart';
export 'src/com/iuiautomationitemcontainerpattern.dart';
export 'src/com/iuiautomationlegacyiaccessiblepattern.dart';
export 'src/com/iuiautomationmultipleviewpattern.dart';
export 'src/com/iuiautomationnotcondition.dart';
export 'src/com/iuiautomationobjectmodelpattern.dart';
export 'src/com/iuiautomationorcondition.dart';
export 'src/com/iuiautomationpropertycondition.dart';
export 'src/com/iuiautomationproxyfactory.dart';
export 'src/com/iuiautomationproxyfactoryentry.dart';
export 'src/com/iuiautomationproxyfactorymapping.dart';
export 'src/com/iuiautomationrangevaluepattern.dart';
export 'src/com/iuiautomationscrollitempattern.dart';
export 'src/com/iuiautomationscrollpattern.dart';
export 'src/com/iuiautomationselectionitempattern.dart';
export 'src/com/iuiautomationselectionpattern.dart';
export 'src/com/iuiautomationselectionpattern2.dart';
export 'src/com/iuiautomationspreadsheetitempattern.dart';
export 'src/com/iuiautomationspreadsheetpattern.dart';
export 'src/com/iuiautomationstylespattern.dart';
export 'src/com/iuiautomationsynchronizedinputpattern.dart';
export 'src/com/iuiautomationtableitempattern.dart';
export 'src/com/iuiautomationtablepattern.dart';
export 'src/com/iuiautomationtextchildpattern.dart';
export 'src/com/iuiautomationtexteditpattern.dart';
export 'src/com/iuiautomationtextpattern.dart';
export 'src/com/iuiautomationtextpattern2.dart';
export 'src/com/iuiautomationtextrange.dart';
export 'src/com/iuiautomationtextrange2.dart';
export 'src/com/iuiautomationtextrange3.dart';
export 'src/com/iuiautomationtextrangearray.dart';
export 'src/com/iuiautomationtogglepattern.dart';
export 'src/com/iuiautomationtransformpattern.dart';
export 'src/com/iuiautomationtransformpattern2.dart';
export 'src/com/iuiautomationtreewalker.dart';
export 'src/com/iuiautomationvaluepattern.dart';
export 'src/com/iuiautomationvirtualizeditempattern.dart';
export 'src/com/iuiautomationwindowpattern.dart';
export 'src/com/iunknown.dart';
export 'src/com/iuri.dart';
export 'src/com/ivirtualdesktopmanager.dart';
export 'src/com/iwbemclassobject.dart';
export 'src/com/iwbemconfigurerefresher.dart';
export 'src/com/iwbemcontext.dart';
export 'src/com/iwbemhiperfenum.dart';
export 'src/com/iwbemlocator.dart';
export 'src/com/iwbemobjectaccess.dart';
export 'src/com/iwbemrefresher.dart';
export 'src/com/iwbemservices.dart';
export 'src/com/iwebauthenticationcoremanagerinterop.dart';
export 'src/com/iwinhttprequest.dart';
