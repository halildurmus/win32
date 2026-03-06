---
title: Contributing
---

Thank you for your interest in contributing to [`package:win32`][package:win32]!

This guide provides everything you need to get started and make your
contributions effective and rewarding.

We strive to maintain a welcoming and inclusive community, so please read our
[Code of Conduct] before contributing.

## 📝 Good to Know

- **Working on Issues:** If you'd like to work on an existing issue, please
  comment on the issue page to let others know before you begin.
- **Proposing New Features:** Have an idea for a new feature? Create an issue to
  discuss it with the community and maintainers before diving in.

## 🙌 How You Can Contribute

- **🌟 Star Us on GitHub**: If you enjoy using this package, a star on [GitHub]
  helps support our work.
- **🐛 Report Bugs**: Found a bug? Let us know on our [GitHub Issues] page.
- **📝 Improve Documentation**: High-quality documentation is crucial. Help us
  improve it by refining the existing docs or adding new content.
- **💬 Give Feedback**: Share your experience using `package:win32`, what
  features you'd like, and what works well on [GitHub Discussions].
- **📢 Share `package:win32`**: Spread the word about this project to reach more
  users.
- **💻 Contribute to the Codebase**: Work on new features or tackle
  [open issues][GitHub Issues] — all contributions are highly appreciated!
- **📦 Share Your Own Packages**: If you've created a package that builds on top
  of `package:win32` and provides a more Dart-friendly API for a specific
  Windows API, please share it with us! Our community is growing rapidly, and
  your package could be useful for many people. We'll be happy to add your
  package to our [packages page] and share it with our community.

## 🛠️ Setting Up the Environment

### ⚙️ Requirements

- [Dart](https://dart.dev) version `3.11` or higher
- [Melos](https://pub.dev/packages/melos) for managing the monorepo
- [git-cliff](https://git-cliff.org) for generating changelogs
- [Lefthook](https://github.com/evilmartians/lefthook) for managing Git hooks

If you're planning to contribute to the documentation, you'll also need:

- [Node.js](https://nodejs.org) version `20` or higher
- [npm](https://www.npmjs.com) version `10` or higher

Once your environment is ready, [fork the repository], clone it locally, and
set up the project.

### 📥 Cloning the Repository

Clone your fork of `package:win32` to your local machine:

```cmd title="Terminal"
git clone https://github.com/<your-username>/win32.git
```

### 📦 Installing Dependencies

Navigate to the project directory and first activate `package:melos` globally,
then install the dependencies:

```cmd title="Terminal"
dart pub global activate melos
dart pub get
```

## 🧩 Setting Up Git Hooks

This project uses **Lefthook** to manage Git hooks. Install the hooks by running
the following in the project root:

```cmd title="Terminal"
lefthook install
```

This will set up checks that automatically ensure code quality and consistency
before commits.

### 🧪 Running Tests

To run tests for the `package:win32`, run the following command:

```cmd title="Terminal"
melos run test:win32
```

_We require tests for each feature or bug fix. If you're unsure how to write_
_tests for your changes, feel free to ask on the relevant GitHub issue page._

## 📝 Contributing to the Documentation

Our documentation is built with [Docusaurus]. To contribute to the
documentation, you need to install the dependencies and start the development
server:

```cmd title="Terminal"
> cd website
> npm install
> npm start
```

Now, head over `localhost:3000` to see the documentation.

:::simple Development Tip

To create a production build of the documentation, you can use the
`npm run build` command. Then, you can use the `npm run serve` command to serve
the production build on your local machine.

:::

## 💻 Contributing to the `package:win32` Itself

If you want to contribute to the `package:win32` itself, follow the steps below:

### Classic Win32 APIs

- When wrapping a Win32 API, use the **Unicode** (`'W'`) wide variants of these
  APIs, rather than the **ANSI** (`'A'`) variants. For example:
  [CredWriteW][credwritew_link], rather than [CredWriteA][credwritea_link].

- To create a new API, _don't_ edit the main library files themselves; these get
  **overwritten**. Instead, edit the
  [win32_functions.json][win32_functions_json_link] file and run the
  `melos run generate` command to generate the library files:

  ```cmd title="Terminal"
  melos run generate
  ```

- Constants can be **auto-generated** by including them in the
  [win32_constants.json][win32_constants_json_link] file and running the
  `melos run generate` command, which will generate the corresponding Dart
  files.
- Structs can be **auto-generated** by including them in the
  [win32_structs.json][win32_structs_json_link] file and running the
  `melos run generate` command, which will generate the corresponding Dart
  files.
- There are plenty of good existing patterns to build off in these locations;
  try to mirror an existing function if you can for consistency!
- Ideally pull requests for new API submissions include a **sample**
  (`examples\` directory) and **some tests** (`packages\win32\test\` directory).

### COM APIs

Begin by editing the [com_types.json][com_types_json_link] file, specifying the
desired COM interface, and then run the `melos run generate` command to generate
the relevant classes in the `packages\win32\lib\src\com` directory.

[com_types_json_link]: https://github.com/halildurmus/win32/tree/main/packages/generator/data/com_types.json
[credwritea_link]: https://learn.microsoft.com/windows/win32/api/wincred/nf-wincred-credwritea
[credwritew_link]: https://learn.microsoft.com/windows/win32/api/wincred/nf-wincred-credwritew
[win32_constants_json_link]: https://github.com/halildurmus/win32/tree/main/packages/generator/data/win32_constants.json
[win32_functions_json_link]: https://github.com/halildurmus/win32/tree/main/packages/generator/data/win32_functions.json
[win32_structs_json_link]: https://github.com/halildurmus/win32/tree/main/packages/generator/data/win32_structs.json

## 🚀 Committing Your Work and Preparing a Pull Request

To maintain a consistent and clean codebase, we enforce coding standards and use
tools to ensure high-quality contributions.

### 🎨 Coding Style

Please follow the [Dart style guide] to keep the codebase clean and consistent.

### 📜 Commit Convention

We use [Conventional Commits] to structure our commit messages for clarity and
uniformity.

Please use the following format for commit messages:

```text
<type>(optional scope): <description>
```

Examples:

- `feat: add DragQueryFile API`
- `fix: resolve an issue with the PROPVARIANT struct`

_Commit messages are validated with a GitHub action, so be sure to use the_
_correct format when making a pull request._

### 🧩 Git Hooks

The following hooks run automatically with Lefthook:

- **Pre-Commit Hooks**:
  - `analyze`: Checks code for style issues.
  - `format`: Formats code according to Dart guidelines.
  - `test_ffi_leak_tracker`: Runs tests for `package:ffi_leak_tracker`
  - `test_filepicker_windows`: Runs tests for `package:filepicker_windows`
  - `test_generator`: Runs tests for `package:generator`
  - `test_win32`: Runs tests for `package:win32`
  - `test_win32_clipboard`: Runs tests for `package:win32_clipboard`
  - `test_win32_gamepad`: Runs tests for `package:win32_gamepad`
  - `test_win32_registry`: Runs tests for `package:win32_registry`
  - `test_win32_runner`: Runs tests for `package:win32_runner`
  - `test_winmd`: Runs tests for `package:winmd`

- **Commit-msg Hook**:
  - `check_commit`: Ensures the commit message follows [Conventional Commits]

### 🔄 Creating a Pull Request

After committing your changes, push them to your fork and
[create a pull request]. When you open a pull request, tests will run
automatically, and our maintainers will review it.

Please use the pull request template to provide details about your changes,
ensuring a smoother review process.

Thank you for contributing to `package:win32`! 🎉

[package:win32]: https://pub.dev/packages/win32
[Code of Conduct]: https://github.com/halildurmus/win32/blob/main/CODE_OF_CONDUCT.md
[Conventional Commits]: https://www.conventionalcommits.org/en/v1.0.0/
[create a pull request]: https://github.com/halildurmus/win32/compare
[Dart style guide]: https://dart.dev/effective-dart/style
[Docusaurus]: https://docusaurus.io
[fork the repository]: https://github.com/halildurmus/win32/fork
[GitHub]: https://github.com/halildurmus/win32
[GitHub Discussions]: https://github.com/halildurmus/win32/discussions
[GitHub Issues]: https://github.com/halildurmus/win32/issues
[packages page]: https://win32.pub/packages
