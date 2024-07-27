---
title: Contributing
---

Thank you for your interest in contributing to our project. We value your input
and appreciate your effort to improve our work. This guide will help you get
started with contributing to the **win32**.

We adhere to a [Code of Conduct] to ensure a welcoming and inclusive community.
Please read it before contributing.

:::simple

- **Working on Issues:** If you plan to work on an existing issue, please
  comment on the issue page to let others know before you start.
- **Proposing New Features:** If you have an idea for a new feature, create an
  issue and discuss it with the community and maintainers.

:::

## 🙌 Ways You Can Contribute

- **🌟 Star Us on GitHub**: If you enjoy using our package, don't forget to star
  us on [GitHub]! Your support means a lot.
- **🐛 Report Bugs**: If you find a bug, please report it on our [GitHub Issues]
  page. We'll do our best to fix it as soon as possible.
- **📚 Improve Documentation**: Good documentation is imperative to the success
  of any project. You can help us by improving the quality of our documentation
  or adding new content.
- **📝 Give Feedback**: We're always looking for ways to make **win32** better.
  Please share how you use **win32**, what features are missing, and what works
  well via [GitHub Discussions].
- **📢 Share win32**: Help us reach more people. Share the [win32 repo][GitHub]
  with anyone who might be interested.
- **💻 Contribute to the Codebase**: Your help is needed to make this project
  the best it can be! You can develop new features or fix
  [existing issues][GitHub Issues]. Every contribution is greatly appreciated!
- **📦 Share Your Own Packages**: If you've created a package that builds on top
  of **win32** and provides a more Dart-friendly API for a specific Windows API,
  please share it with us! Our community is growing rapidly, and your package
  could be useful for many people. We'll be happy to add your package to our
  [packages page] and share it with our community.

## 🛠️ Setting Up the Environment

:::simple Requirements

- [Dart](https://dart.dev) version `3.4` or higher
- [Node.js](https://nodejs.org) version `20` or higher
- [npm](https://www.npmjs.com) version `10` or higher

:::

If your environment is ready, you can [fork the win32 repository] and clone it
to your local machine.

### 📥 Cloning the Repository

After you fork the **win32** repository, you need to **clone** it to your local
machine. Instead of using the `halildurmus/win32` repository, it's recommended
to use your **fork**. This way, you can push your changes to your fork and
create a pull request from there.

```sh title="Terminal"
git clone https://github.com/halildurmus/win32.git
```

### 📦 Installing Dependencies

After you clone the repository, you need to install the dependencies:

```sh title="Terminal"
dart pub get
```

### ✅ Running Tests

You can use the `dart test` command to run tests for the **`package:win32`**:

```sh title="Terminal"
dart test
```

:::simple

We're expecting proper **tests** for each **feature/bugfix** you make. If you're
not sure how to write tests for your feature/bugfix, please ask for help in the
relevant GitHub issue page.

:::

## 📝 Contributing to the Documentation

Our documentation is built with [Docusaurus]. To contribute to the
documentation, you need to install the dependencies and start the development
server:

```sh title="Terminal"
cd website
npm install
npm start
```

Now, head over `localhost:3000` to see the documentation.

:::simple Development Tip

To create a production build of the documentation, you can use the
`npm run build` command. Then, you can use the `npm run serve` command to serve
the production build on your local machine.

:::

## 💻 Contributing to the **win32** Itself

If you want to contribute to the **win32** itself, follow the steps below:

### Classic Win32 APIs

- When wrapping a Win32 API, use the **Unicode** (`'W'`) wide variants of these
  APIs, rather than the **ANSI** (`'A'`) variants. For example:
  [CredWriteW][credwritew_link], rather than [CredWriteA][credwritea_link].

- To create a new API, *don't* edit the main library files themselves; these get
  **overwritten**. Instead, edit the
  [win32_functions.json][win32_functions_json_link] file and execute the
  `tools\generate.cmd` script to update the library files:

  ```cmd title="Terminal"
  tool\generate.cmd
  ```

- Structs can be **auto-generated** by including them in the
  [win32_structs.json][win32_structs_json_link] file and executing the
  `tools\generate.cmd` script, which will generate the corresponding Dart files.

  Once generated, compile the [struct_sizes.cpp][struct_sizes_cpp_link] on a
  `64-bit` machine architecture, typically using the
  [Visual Studio Developer Command Prompt][command_prompt_link] with the
  following command (replace `xxxxx` with the installed Windows SDK build):

  ```cmd title="Terminal"
  cl /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.xxxxx.0\winrt" \
    tool\struct_sizes\struct_sizes.cpp
  ```

  Once compiled, run the resulting `struct_sizes.exe` file located in the
  project root to obtain struct sizes; copy the output directly into the
  `structSizeMap` within the [struct_sizes.dart][struct_sizes_dart_link] file,
  and finally, execute the `tools\generate.cmd` script to generate struct size
  tests for each struct.
- Constants belong in the [constants.dart][constants_dart_link]; please add
  documentation. In rare cases (where the constant is truly self-documenting),
  you may add to the [constants_nodoc.dart][constants_nodoc_dart_link], although
  the goal is to gradually document more constants.
- There are plenty of good existing patterns to build off in these locations;
  try to mirror an existing function if you can for consistency!
- Ideally pull requests for new API submissions include a **sample**
  (`examples\` directory) and **some tests** (`packages\win32\test\` directory).

### COM APIs

Begin by editing the [com_types.json][com_types_json_link] file, specifying the
desired COM interface, and then execute the `tools\generate.cmd` script to
generate the relevant class in the `packages\win32\lib\src\com` directory.

[command_prompt_link]: https://learn.microsoft.com/visualstudio/ide/reference/command-prompt-powershell
[com_types_json_link]: https://github.com/halildurmus/win32/tree/main/packages/generator/data/com_types.json
[constants_dart_link]: https://github.com/halildurmus/win32/tree/main/packages/win32/lib/src/constants.dart
[constants_nodoc_dart_link]: https://github.com/halildurmus/win32/tree/main/packages/win32/lib/src/constants_nodoc.dart
[credwritea_link]: https://learn.microsoft.com/windows/win32/api/wincred/nf-wincred-credwritea
[credwritew_link]: https://learn.microsoft.com/windows/win32/api/wincred/nf-wincred-credwritew
[struct_sizes_cpp_link]: https://github.com/halildurmus/win32/tree/main/tools/struct_sizes/struct_sizes.cpp
[struct_sizes_dart_link]: https://github.com/halildurmus/win32/tree/main/packages/generator/lib/src/model/struct_sizes.dart
[win32_functions_json_link]: https://github.com/halildurmus/win32/tree/main/packages/generator/data/win32_functions.json
[win32_structs_json_link]: https://github.com/halildurmus/win32/tree/main/packages/generator/data/win32_structs.json

## 🚀 Committing Your Work and Preparing a Pull Request

**win32** is a **monorepo** with multiple packages and examples. To ensure we
keep things clean and in order, we use several tools to enforce a good
development experience.

### 🎨 Coding Style

We follow the [Dart style guide] to maintain a clean and consistent codebase.
Make sure you adhere to the style guide when working on the codebase.

### 📜 Commit Convention

Commit messages are essential for clarity in our development process. We use
[Conventional Commits] to keep our commit messages **consistent** and **easy to
understand**.

We expect commit messages to follow this format:

```text
<type>(optional scope): <description>
```

Here's an example of a good commit message:

```text
feat: add `refCount` function
```

:::simple

<!-- We use the [dart_pre_commit] and [git_hooks] packages to enforce **conventional
commits**. If you don't follow the conventional commit format, you will see an
error message when you try to commit your changes, or a GitHub action will fail
when you create a pull request. -->

We enforce **conventional commits** using a GitHub action. If you don't follow
the conventional commit format, the GitHub action will fail when you create a
pull request.

:::

### 🔄 Creating a Pull Request

After you **commit** your changes, you can push your changes to your **fork**
and [create a pull request]. When you create a **pull request**, a GitHub action
will run **tests**. Our maintainers will **review** your changes shortly and
**merge** your pull request if everything is in order.

Our Pull Request template is designed to ensure you provide all the necessary
information about your changes. Please make sure you fill out the template with
the required information.

We look forward to seeing your contributions! 🎉

[Code of Conduct]: https://github.com/halildurmus/win32/blob/main/CODE_OF_CONDUCT.md
[Conventional Commits]: https://www.conventionalcommits.org/en/v1.0.0/
[create a pull request]: https://github.com/halildurmus/win32/compare
[dart_pre_commit]: https://pub.dev/packages/dart_pre_commit
[Dart style guide]: https://dart.dev/effective-dart/style
[Docusaurus]: https://docusaurus.io
[fork the win32 repository]: https://github.com/halildurmus/win32/fork
[git_hooks]: https://pub.dev/packages/git_hooks
[GitHub]: https://github.com/halildurmus/win32
[GitHub Discussions]: https://github.com/halildurmus/win32/discussions
[GitHub Issues]: https://github.com/halildurmus/win32/issues
[packages page]: https://win32.pub/packages
