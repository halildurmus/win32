# Accessing a .NET Component through COM Interop

This example demonstrates how to access a **.NET component** from Dart using
COM (Component Object Model) interop. It covers two different ways of
interacting with a .NET component exposed to COM:

- **Early Binding** through direct method access using the COM object's VTable
  (Virtual function table).
- **Late Binding** via the [IDispatch] interface.

## Folder Structure

- **MySolution/**
  - **MyLibrary/**: Contains the C# class library that exposes the .NET
    component to COM.
- **main.dart**: Demonstrates calling methods from the .NET component using both
  _early_ and _late_ binding.

## .NET Component: `MyLibrary`

`MyLibrary` is a C# class library designed to be used through COM. It defines an
interface and a class that implement two methods: one that returns a string and
another that returns the sum of two integers:

```csharp
[ComVisible(true)]
[Guid("4C2DDA7F-9DC9-46FD-A107-832254B2EEBE")]
public interface IExampleCom
{
    string GetMessage();
    int GetSum(int a, int b);
}

[ComVisible(true)]
[Guid("36B142F2-97DC-4594-96A4-8160EEB7184C")]
public class ExampleCom : IExampleCom
{
    public string GetMessage() => "Hello from .NET!";
    public int GetSum(int a, int b) => a + b;
}
```

### Annotations Explained

- **`[ComVisible(true)]`**: Marks the class and interface as visible to COM
  clients, including Dart.
- **`[Guid("...")]`**: Assigns a unique identifier (GUID) to both the interface
  and class, required for COM registration. You can generate GUIDs with tools
  like `guidgen` or online GUID generators.

## Building and Registering the .NET Component

### Steps to Build

1. Open the solution file `MySolution.sln` in Visual Studio.
2. In **Solution Explorer**, right-click on the `MyLibrary` project and select
   **Build**.

This will compile the library, generate DLL and TLB files, and register it for
COM interop. Ensure that the **Register for COM Interop** option is enabled in
the project settings so that the component is automatically registered after it
is built.

### Manual Registration

If you have a third-party library and compiled DLL and TLB files, you can
register the component manually using the [regasm] tool:

1. Open a command prompt with administrator privileges.
2. Navigate to the directory containing the DLL and TLB files.
3. Run the following command:

   ```cmd
   regasm MyLibrary.dll /tlb:MyLibrary.tlb
   ```

After these steps, the .NET component will be accessible from Dart.

## Accessing the .NET Component from Dart

The `main.dart` file shows how to call methods from the .NET component using
both _early_ and _late_ binding.

### Early Binding

Early binding, also known as VTable binding is used whenever a COM object's
`IUnknown` interface is called. To use early binding on an object, you need to
know the structure of the COM object's VTable, which includes both standard
methods (from `IUnknown`) and any custom methods unique to the object. If the
method signatures and their positions in the VTable are known ahead of time, you
can call these custom methods in the same manner as the `IUnknown` methods.

### Late Binding

In late binding, the specific method or property being called is determined at
runtime. This process involves using the `IDispatch` methods to locate the
desired function, akin to looking up a page number in a table of contents rather
than having it printed directly in the text.

The two key methods that facilitate late binding are `GetIDsOfNames` and
`Invoke`. The `GetIDsOfNames` maps method names (as strings) to a unique
identifier known as a **dispid**. Once the dispid for the desired function is
obtained, you can invoke it using the `Invoke` method.

### Choosing Between Early and Late Binding

The decision between early binding and late binding largely depends on your
project's design and requirements. However, **early binding** is generally
recommended in most scenarios.

**Early Binding** is faster because your application binds directly to the
memory address of the function being called. This eliminates the overhead of
runtime lookups, making it at least twice as fast as late binding in terms of
overall execution speed.

On the other hand, **Late Binding** can be beneficial in specific situations:

- It is useful when the exact interface of a COM object is not known at
  compile-time.

- Late binding can also help address compatibility issues between different
  versions of a component that may have modified or adapted its interface.

The benefits of **early binding** make it the optimal choice whenever possible.

## Understanding the VTable in COM

The VTable is a structure used in COM to manage method calls. Each COM object
has a pointer that points to its VTable, which contains pointers to the object's
methods.

```plaintext
+----------------------------------------------------------------+
|                    COM Object Memory Layout                    |
+----------------------------------------------------------------+
|          +-------------------+       +----------------------+  |
|  p  -->  |  v-table pointer  |  -->  |  Function 1 pointer  |  |
|          +-------------------+       +----------------------+  |
|                                      |  Function 2 pointer  |  |
|                                      +----------------------+  |
|                                      |  Function 3 pointer  |  |
|                                      +----------------------+  |
|                                      |  ...                 |  |
|                                      +----------------------+  |
+----------------------------------------------------------------+
```

When a client (like Dart) wants to invoke a method on a COM object, it uses the
object's pointer to access the VTable. The VTable contains pointers to each
method, allowing the client to call methods using their respective offsets. The
first method is accessed at offset 1, the second at offset 2, and so on.

The `IUnknown` interface is the base for all COM interfaces, providing methods
for managing COM object lifecycles (like reference counting).

```plaintext
+----------------------------------------------------------------+
|                IUnknown Interface Memory Layout                |
+----------------------------------------------------------------+
|          +-------------------+       +----------------------+  |
|  p  -->  |  v-table pointer  |  -->  |  QueryInterface      |  |
|          +-------------------+       +----------------------+  |
|                                      |  AddRef              |  |
|                                      +----------------------+  |
|                                      |  Release             |  |
|                                      +----------------------+  |
+----------------------------------------------------------------+
```

COM interfaces can inherit from other interfaces. For instance, `IDispatch`
inherits from `IUnknown`. It includes methods for invoking methods by name and
retrieving type information.

```plaintext
+----------------------------------------------------------------+
|               IDispatch Interface Memory Layout                |
+----------------------------------------------------------------+
|          +-------------------+       +----------------------+  |
|  p  -->  |  v-table pointer  |  -->  |  QueryInterface      |  |
|          +-------------------+       +----------------------+  |
|                                      |  AddRef              |  |
|                                      +----------------------+  |
|                                      |  Release             |  |
|                                      +----------------------+  |
|                                      |  GetTypeInfoCount    |  |
|                                      +----------------------+  |
|                                      |  GetTypeInfo         |  |
|                                      +----------------------+  |
|                                      |  GetIDsOfNames       |  |
|                                      +----------------------+  |
|                                      |  Invoke              |  |
|                                      +----------------------+  |
+----------------------------------------------------------------+
```

The `IExampleCom` interface extends `IDispatch`, inheriting all its methods and
adding its own:

```plaintext
+----------------------------------------------------------------+
|              IExampleCom Interface Memory Layout               |
+----------------------------------------------------------------+
|          +-------------------+       +----------------------+  |
|  p  -->  |  v-table pointer  |  -->  |  QueryInterface      |  |
|          +-------------------+       +----------------------+  |
|                                      |  AddRef              |  |
|                                      +----------------------+  |
|                                      |  Release             |  |
|                                      +----------------------+  |
|                                      |  GetTypeInfoCount    |  |
|                                      +----------------------+  |
|                                      |  GetTypeInfo         |  |
|                                      +----------------------+  |
|                                      |  GetIDsOfNames       |  |
|                                      +----------------------+  |
|                                      |  Invoke              |  |
|                                      +----------------------+  |
|                                      |  GetMessage          |  |
|                                      +----------------------+  |
|                                      |  GetSum              |  |
|                                      +----------------------+  |
+----------------------------------------------------------------+
```

[IDispatch]: https://learn.microsoft.com/windows/win32/api/oaidl/nn-oaidl-idispatch
[regasm]: https://learn.microsoft.com/dotnet/framework/tools/regasm-exe-assembly-registration-tool
