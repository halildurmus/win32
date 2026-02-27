import 'dart:collection';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'models.dart';

/// Provides functionality for managing Windows services, including:
/// - Enumerating available services
/// - Starting and stopping services
/// - Retrieving the current status of services
abstract class ServiceManager {
  /// Whether to log informative messages to the console.
  static var log = false;

  /// Retrieves a set of all services (sorted by display name).
  static Set<Service> get services {
    final services = SplayTreeSet<Service>(
      (a, b) => a.displayName.compareTo(b.displayName),
    );

    // Get a handle to the SCM database.
    final scmHandle = OpenSCManager(
      null,
      null,
      SC_MANAGER_ENUMERATE_SERVICE,
    ).value;
    if (scmHandle.isNull) return services;

    return using((arena) {
      try {
        final bytesNeeded = arena<DWORD>();
        final servicesReturned = arena<DWORD>();
        final resumeHandle = arena<DWORD>();

        _log('Getting service list...');

        // First call to EnumServicesStatusEx to get the required buffer size.
        EnumServicesStatusEx(
          scmHandle,
          SC_ENUM_PROCESS_INFO,
          SERVICE_WIN32,
          SERVICE_STATE_ALL,
          null,
          0,
          bytesNeeded,
          servicesReturned,
          resumeHandle,
          null,
        );

        final buffer = arena<BYTE>(bytesNeeded.value);

        // Second call to EnumServicesStatusEx to get the actual data.
        if (EnumServicesStatusEx(
          scmHandle,
          SC_ENUM_PROCESS_INFO,
          SERVICE_WIN32,
          SERVICE_STATE_ALL,
          buffer,
          bytesNeeded.value,
          bytesNeeded,
          servicesReturned,
          resumeHandle,
          null,
        ).value) {
          final enumBuffer = buffer.cast<ENUM_SERVICE_STATUS_PROCESS>();
          for (var i = 0; i < servicesReturned.value; i++) {
            final serviceStatus = (enumBuffer + i).ref;
            final ENUM_SERVICE_STATUS_PROCESS(:lpServiceName, :lpDisplayName) =
                serviceStatus;
            final serviceName = lpServiceName.toDartString();
            final displayName = lpDisplayName.toDartString();
            final status = ServiceStatus.fromValue(
              serviceStatus.ServiceStatusProcess.dwCurrentState,
            );
            final service = Service(
              displayName: displayName,
              name: serviceName,
              status: status,
            );
            services.add(service);
          }
        }
      } finally {
        scmHandle.close();
      }

      return services;
    });
  }

  /// Starts a service defined by [serviceName].
  static ServiceStartResult start(String serviceName) {
    // Get a handle to the SCM database.
    final scmHandle = OpenSCManager(
      null, // local computer
      null, // ServicesActive database
      SC_MANAGER_ALL_ACCESS, // full access rights
    ).value;
    if (scmHandle.isNull) return .accessDenied;

    return using((arena) {
      // Get a handle to the service.
      final hService = OpenService(
        scmHandle,
        arena.pcwstr(serviceName),
        SERVICE_ALL_ACCESS,
      ).value;
      if (hService.isNull) {
        scmHandle.close();
        return .failed;
      }

      final lpBuffer = arena<SERVICE_STATUS_PROCESS>();
      final bytesNeeded = arena<DWORD>();

      // Check the status in case the service is not stopped.
      if (!QueryServiceStatusEx(
        hService,
        SC_STATUS_PROCESS_INFO,
        lpBuffer.cast(),
        sizeOf<SERVICE_STATUS_PROCESS>(),
        bytesNeeded,
      ).value) {
        hService.close();
        scmHandle.close();
        return .failed;
      }

      final ssp = lpBuffer.ref;

      // Check if the service is already running. It would be possible to stop
      // the service here, but for simplicity this example just returns.
      if (ssp.dwCurrentState != SERVICE_STOPPED &&
          ssp.dwCurrentState != SERVICE_STOP_PENDING) {
        hService.close();
        scmHandle.close();
        return .alreadyRunning;
      }

      // Save the tick count and initial checkpoint.
      var startTickCount = GetTickCount();
      var oldCheckPoint = ssp.dwCheckPoint;

      // If a stop is pending, wait for it.
      while (ssp.dwCurrentState == SERVICE_STOP_PENDING) {
        _log('Service stop pending...');

        // Do not wait longer than the wait hint. A good interval is one-tenth
        // of the wait hint but not less than 1 second and not more than 10
        // seconds.

        var waitTime = ssp.dwWaitHint ~/ 10;
        waitTime = waitTime < 1000
            ? 1000
            : waitTime > 10000
            ? 10000
            : waitTime;
        _log('Sleeping for ${ssp.dwWaitHint} ms...');
        Sleep(waitTime);

        // Check the status until the service is no longer stop pending.
        if (!QueryServiceStatusEx(
          hService,
          SC_STATUS_PROCESS_INFO,
          lpBuffer.cast(),
          sizeOf<SERVICE_STATUS_PROCESS>(),
          bytesNeeded,
        ).value) {
          hService.close();
          scmHandle.close();
          return .failed;
        }

        if (ssp.dwCheckPoint > oldCheckPoint) {
          // Continue to wait and check.
          startTickCount = GetTickCount();
          oldCheckPoint = ssp.dwCheckPoint;
        } else if (GetTickCount() - startTickCount > ssp.dwWaitHint) {
          hService.close();
          scmHandle.close();
          return .timedOut;
        }
      }

      // Attempt to start the service.
      if (!StartService(hService, 0, null).value) {
        hService.close();
        scmHandle.close();
        return .failed;
      } else {
        _log('Service start pending...');
      }

      // Check the status until the service is no longer start pending.
      if (!QueryServiceStatusEx(
        hService,
        SC_STATUS_PROCESS_INFO,
        lpBuffer.cast(),
        sizeOf<SERVICE_STATUS_PROCESS>(),
        bytesNeeded,
      ).value) {
        hService.close();
        scmHandle.close();
        return .failed;
      }

      // Save the tick count and initial checkpoint.
      startTickCount = GetTickCount();
      oldCheckPoint = ssp.dwCheckPoint;

      while (ssp.dwCurrentState == SERVICE_START_PENDING) {
        // Do not wait longer than the wait hint. A good interval is one-tenth
        // of the wait hint but not less than 1 second and not more than 10
        // seconds.

        var waitTime = ssp.dwWaitHint ~/ 10;
        waitTime = waitTime < 1000
            ? 1000
            : waitTime > 10000
            ? 10000
            : waitTime;
        _log('Sleeping for ${ssp.dwWaitHint} ms...');
        Sleep(waitTime);

        // Check the status again.
        if (!QueryServiceStatusEx(
          hService,
          SC_STATUS_PROCESS_INFO,
          lpBuffer.cast(),
          sizeOf<SERVICE_STATUS_PROCESS>(),
          bytesNeeded,
        ).value) {
          break;
        }

        if (ssp.dwCheckPoint > oldCheckPoint) {
          // Continue to wait and check.
          startTickCount = GetTickCount();
          oldCheckPoint = ssp.dwCheckPoint;
        } else if (GetTickCount() - startTickCount > ssp.dwWaitHint) {
          // No progress made within the wait hint.
          break;
        }
      }

      // Determine whether the service is running.
      final serviceRunning = ssp.dwCurrentState == SERVICE_RUNNING;
      hService.close();
      scmHandle.close();

      return serviceRunning ? .success : .failed;
    });
  }

  /// Retrieves the status of a service defined by [serviceName].
  static ServiceStatus? status(String serviceName) {
    // Get a handle to the SCM database.
    final scmHandle = OpenSCManager(null, null, SC_MANAGER_CONNECT).value;
    if (scmHandle.isNull) return null;

    return using((arena) {
      // Get a handle to the service.
      final hService = OpenService(
        scmHandle,
        arena.pcwstr(serviceName),
        SERVICE_QUERY_STATUS,
      ).value;
      if (hService.isNull) {
        scmHandle.close();
        return null;
      }

      try {
        final lpBuffer = arena<SERVICE_STATUS_PROCESS>();
        final bytesNeeded = arena<DWORD>();

        // Query the service status.
        if (!QueryServiceStatusEx(
          hService,
          SC_STATUS_PROCESS_INFO,
          lpBuffer.cast(),
          sizeOf<SERVICE_STATUS_PROCESS>(),
          bytesNeeded,
        ).value) {
          return null;
        }

        return ServiceStatus.fromValue(lpBuffer.ref.dwCurrentState);
      } finally {
        hService.close();
        scmHandle.close();
      }
    });
  }

  /// Stops a service defined by [serviceName].
  static ServiceStopResult stop(String serviceName) {
    // Get a handle to the SCM database.
    final scmHandle = OpenSCManager(
      null, // local computer
      null, // ServicesActive database
      SC_MANAGER_ALL_ACCESS, // full access rights
    ).value;
    if (scmHandle.isNull) return .accessDenied;

    return using((arena) {
      // Get a handle to the service.
      final hService = OpenService(
        scmHandle,
        arena.pcwstr(serviceName),
        SERVICE_STOP | SERVICE_QUERY_STATUS | SERVICE_ENUMERATE_DEPENDENTS,
      ).value;
      if (hService.isNull) {
        scmHandle.close();
        return .failed;
      }

      try {
        final lpBuffer = arena<SERVICE_STATUS_PROCESS>();
        final bytesNeeded = arena<DWORD>();

        // Make sure the service is not already stopped.
        if (!QueryServiceStatusEx(
          hService,
          SC_STATUS_PROCESS_INFO,
          lpBuffer.cast(),
          sizeOf<SERVICE_STATUS_PROCESS>(),
          bytesNeeded,
        ).value) {
          return .failed;
        }

        final ssp = lpBuffer.ref;
        if (ssp.dwCurrentState == SERVICE_STOPPED) {
          return .alreadyStopped;
        }

        final startTime = GetTickCount();
        const timeout = 30000; // 30-second timeout

        // If a stop is pending, wait for it.
        while (ssp.dwCurrentState == SERVICE_STOP_PENDING) {
          _log('Service stop pending...');

          // Do not wait longer than the wait hint. A good interval is one-tenth
          // of the wait hint but not less than 1 second and not more than 10
          // seconds.

          var waitTime = ssp.dwWaitHint ~/ 10;
          waitTime = waitTime < 1000
              ? 1000
              : waitTime > 10000
              ? 10000
              : waitTime;
          _log('Sleeping for ${ssp.dwWaitHint} ms...');
          Sleep(waitTime);

          if (!QueryServiceStatusEx(
            hService,
            SC_STATUS_PROCESS_INFO,
            lpBuffer.cast(),
            sizeOf<SERVICE_STATUS_PROCESS>(),
            bytesNeeded,
          ).value) {
            return .failed;
          }

          if (ssp.dwCurrentState == SERVICE_STOPPED) {
            return .success;
          }

          if (GetTickCount() - startTime > timeout) {
            return .timedOut;
          }
        }

        // If the service is running, dependencies must be stopped first.
        final result = _stopDependentServices(hService, scmHandle);
        if (result
            case ServiceStopResult.accessDenied ||
                ServiceStopResult.failed ||
                ServiceStopResult.timedOut) {
          return result;
        }

        // Send a stop code to the service.
        if (!ControlService(
          hService,
          SERVICE_CONTROL_STOP,
          lpBuffer.cast<SERVICE_STATUS>(),
        ).value) {
          return .failed;
        }

        // Wait for the service to stop.

        _log('Service stop pending...');

        while (ssp.dwCurrentState != SERVICE_STOPPED) {
          _log('Sleeping for ${ssp.dwWaitHint} ms...');
          Sleep(ssp.dwWaitHint);

          if (!QueryServiceStatusEx(
            hService,
            SC_STATUS_PROCESS_INFO,
            lpBuffer.cast(),
            sizeOf<SERVICE_STATUS_PROCESS>(),
            bytesNeeded,
          ).value) {
            return .failed;
          }

          if (ssp.dwCurrentState == SERVICE_STOPPED) {
            break;
          }

          if (GetTickCount() - startTime > timeout) {
            return .timedOut;
          }
        }

        return .success;
      } finally {
        hService.close();
        scmHandle.close();
      }
    });
  }

  /// Stops dependent services of a service defined by [hService].
  static ServiceStopResult _stopDependentServices(
    SC_HANDLE hService,
    SC_HANDLE scmHandle,
  ) => using((arena) {
    final bytesNeeded = arena<DWORD>();
    final servicesReturned = arena<DWORD>();

    _log('Checking for dependent services...');

    // Pass a zero-length buffer to get the required buffer size.
    if (EnumDependentServices(
      hService,
      SERVICE_ACTIVE,
      null,
      0,
      bytesNeeded,
      servicesReturned,
    ).value) {
      _log('No dependent services found.');
    } else {
      // Allocate a buffer for the dependencies.
      final lpServices = arena<BYTE>(
        bytesNeeded.value,
      ).cast<ENUM_SERVICE_STATUS>();

      // Enumerate the dependencies.
      if (!EnumDependentServices(
        hService,
        SERVICE_ACTIVE,
        lpServices,
        bytesNeeded.value,
        bytesNeeded,
        servicesReturned,
      ).value) {
        return .failed;
      }

      _log('Found ${servicesReturned.value} dependent services:');
      for (var i = 0; i < servicesReturned.value; i++) {
        final ENUM_SERVICE_STATUS(:lpServiceName) = lpServices[i];
        _log(
          ' (${i + 1}/${servicesReturned.value}) Stopping '
          '${lpServiceName.toDartString()}...',
        );

        // Open the service.
        final hDepService = OpenService(
          scmHandle,
          PCWSTR(lpServiceName),
          SERVICE_STOP | SERVICE_QUERY_STATUS,
        ).value;
        if (hDepService.isNull) return .failed;

        try {
          final lpServiceStatus = arena<SERVICE_STATUS_PROCESS>();

          // Send a stop code.
          if (!ControlService(
            hDepService,
            SERVICE_CONTROL_STOP,
            lpServiceStatus.cast<SERVICE_STATUS>(),
          ).value) {
            return .failed;
          }

          final startTime = GetTickCount();
          const timeout = 30000; // 30-second timeout
          final ssp = lpServiceStatus.ref;

          // Wait for the service to stop.
          while (ssp.dwCurrentState != SERVICE_STOPPED) {
            _log('Sleeping for ${ssp.dwWaitHint} ms...');
            Sleep(ssp.dwWaitHint);

            if (!QueryServiceStatusEx(
              hDepService,
              SC_STATUS_PROCESS_INFO,
              lpServiceStatus.cast(),
              sizeOf<SERVICE_STATUS_PROCESS>(),
              bytesNeeded,
            ).value) {
              return .failed;
            }

            if (ssp.dwCurrentState == SERVICE_STOPPED) {
              break;
            }

            if (GetTickCount() - startTime > timeout) {
              return .timedOut;
            }
          }
        } finally {
          // Always release the service handle.
          CloseServiceHandle(hDepService);
        }
      }
    }

    _log('Dependent services stopped.');
    return .success;
  });

  /// Logs a message to the console if [log] is `true`.
  static void _log(String message) {
    if (log) print(message);
  }
}
