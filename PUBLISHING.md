# 🚀 Publishing a New Release

Follow these steps to publish a new release of the package:

## 1️⃣ Trigger the **Prepare Release** Workflow

Go to the [GitHub Actions] tab and trigger the [Prepare Release] workflow.

This workflow will:

- 🔄 **Remove** the `-wip` suffix from the version number in the `pubspec.yaml`
  file _(e.g., `6.1.0-wip` ➡️ `6.1.0`)_
- 📝 **Update** the `CHANGELOG.md` file:
  - Replace `## unreleased` with the new version number and today’s date
    _(e.g., `## unreleased` ➡️ `## [6.1.0] - 2025-06-15`)_

After making these changes, the workflow will create a pull request (PR)
_(e.g., **`chore(release): v6.1.0`**)_.

## 2️⃣ Review and Merge the PR

Open the PR created by the workflow, review the changes, and **merge it** into
the main branch.

## 3️⃣ Automatic Publishing

Once the PR is merged:

- The [Publish] workflow will be triggered automatically.
- This workflow will:
  - 📦 **Create** a new release on GitHub with a corresponding Git tag.
  - 🚀 **Publish** the new package version to [pub.dev].

[GitHub Actions]: https://github.com/halildurmus/win32_clipboard/actions
[Prepare Release]: https://github.com/halildurmus/win32_clipboard/blob/main/.github/workflows/prepare_release.yml
[Publish]: https://github.com/halildurmus/win32_clipboard/blob/main/.github/workflows/publish.yml
[pub.dev]: https://pub.dev
