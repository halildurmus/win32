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
/// For more conceptual material about programming Win32 apps with Dart,
/// consult the [documentation](https://win32.pub/docs).
// TODO(halildurmus): Rewrite this.
library;

export '_com.g.dart'; // COM interfaces.
export 'src/com/interface.g.dart'; // ComInterface and ComCompanion classes.

// Traditional C-style Windows APIs.
export '_win32.g.dart'
    hide
        GetAddrInfo,
        accept,
        bind,
        closesocket,
        connect,
        gethostname,
        getnameinfo,
        getpeername,
        getprotobyname,
        getprotobynumber,
        getservbyname,
        getservbyport,
        getsockname,
        getsockopt,
        htonl,
        htons,
        inet_ntop,
        ioctlsocket,
        listen,
        ntohl,
        ntohs,
        recv,
        recvfrom,
        select,
        send,
        sendto,
        shutdown,
        socket;

// Useful extension methods.
export 'src/extensions/dialog.dart';
export 'src/extensions/filetime.dart';
export 'src/extensions/int.dart';
export 'src/extensions/iunknown.dart';
export 'src/extensions/pointer.dart';
export 'src/extensions/string.dart';
export 'src/extensions/uint8list.dart';
export 'src/extensions/win32_error.dart';

// Core Win32 APIs, callbacks, constants, enumerations, macros, structures,
// and more.
export 'src/allocator.dart';
export 'src/bstr.dart';
export 'src/callbacks.dart';
export 'src/callbacks.g.dart';
export 'src/constants.dart';
export 'src/constants.g.dart';
export 'src/devpropkey.dart';
export 'src/dispatcher.dart';
export 'src/enums.dart';
export 'src/enums.g.dart'
    hide
        ADDRESS_FAMILY,
        AF_INET,
        AF_INET6,
        AF_UNSPEC,
        SOCK_DGRAM,
        SOCK_RAW,
        SOCK_RDM,
        SOCK_SEQPACKET,
        SOCK_STREAM,
        WINSOCK_SOCKET_TYPE;
export 'src/exception.dart';
export 'src/functions.dart';
export 'src/guid.dart';
export 'src/hresult.dart';
export 'src/hstring.dart';
export 'src/inline.dart';
export 'src/macros.dart';
export 'src/ntstatus.dart';
export 'src/propertykey.dart';
export 'src/propvariant.dart';
export 'src/pstr.dart';
export 'src/pcstr.dart';
export 'src/pwstr.dart';
export 'src/pcwstr.dart';
export 'src/sid_identifier_authority.dart';
export 'src/smart_pointer.dart';
export 'src/structs.dart';
export 'src/structs.g.dart'
    hide
        ADDRINFO,
        FD_SET,
        HOSTENT,
        IN_ADDR,
        PROTOENT,
        SERVENT,
        SOCKADDR,
        TIMEVAL;
export 'src/types.dart';
export 'src/utils.dart';
export 'src/variant.dart';
