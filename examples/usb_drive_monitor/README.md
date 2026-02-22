# USB Drive Monitor

`UsbDriveMonitor` provides a safe, isolate-backed API for **monitoring USB drive
insertion and removal events** on Windows.

## Lifecycle model

A `UsbDriveMonitor` instance has **three states**:

1. **Idle** – created but not running
2. **Running** – actively monitoring USB events
3. **Closed** – permanently disposed; cannot be reused

State transitions are strictly enforced:

```text
Idle ─ start() ─▶ Running ─ stop() ─▶ Idle
  │                                │
  └────────────── close() ────────────┘
                   ▼
                 Closed
```

Once the monitor is **closed**, it can never be started again.

## Creating a monitor

```dart
final monitor = UsbDriveMonitor();
```

Creating an instance does **not** start monitoring.

## Listening for events

```dart
monitor.events.listen((event) {
  // Handle UsbDriveEvent
});
```

### Event stream contract

* `events` is a **broadcast** stream
* The stream is **long-lived** and never replaced
* Events are emitted **only while the monitor is running**
* The stream is closed **only** when `close()` is called

You may subscribe before calling `start()`, and you do not need to re-subscribe
after stopping and restarting the monitor.

## Starting monitoring

```dart
await monitor.start();
```

* Allocates native resources
* Spawns a dedicated isolate
* Begins emitting `UsbDriveEvent`s

Calling `start()` when the monitor is already running or closed throws
`StateError`.

## Stopping monitoring

```dart
await monitor.stop();
```

* Gracefully shuts down the isolate
* Releases native resources
* Stops event emission

`stop()` does **not** close the event stream. The monitor may be started again
after stopping.

## Closing the monitor

```dart
await monitor.close();
```

* Stops monitoring if it is currently running
* Releases all resources
* Closes the `events` stream
* Permanently disposes the monitor

After calling `close()`, the monitor cannot be restarted. Any further lifecycle
calls throw `StateError`.

## State inspection

```dart
monitor.isRunning; // true if actively monitoring
monitor.isClosed;  // true if permanently disposed
```

These getters are provided for diagnostics and defensive programming.

## Correct usage patterns

### Long-lived service

```dart
final monitor = UsbDriveMonitor();
monitor.events.listen(handleEvent);
await monitor.start();
```

### Temporary monitoring

```dart
final monitor = UsbDriveMonitor();
monitor.events.listen(handleEvent);

await monitor.start();
// ...
await monitor.stop();
await monitor.close();
```
