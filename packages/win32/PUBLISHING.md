# 🚀 Publishing a New Release

Follow these steps to publish a new release of the package:

## 1️⃣ Trigger the **win32_prebuilt_assets** Workflow

Push a new tag to the repository with the format `win32-prebuilt-assets-vX.Y.Z`
(e.g., `win32-prebuilt-assets-v2.1.0`).

This workflow will build the native assets for ARM64 and x64 architectures,
upload them as artifacts, and create a new GitHub release with the tag name.
The release will include the prebuilt binaries as assets.

After the release is created, update the version in
`lib/src/hook_helpers/version.dart` to match the new tag (e.g.,
`win32-prebuilt-assets-v2.1.0`).

Finally, run `dart run tool/generate_asset_hashes.dart` to regenerate the asset
hashes in `lib/src/hook_helpers/hashes.g.dart`.

## 2️⃣ Trigger the **Prepare Release** Workflow

Go to the [GitHub Actions] tab and trigger the [Prepare Release] workflow.

This workflow will:

- 🔼 **Bump** the `version` in the `pubspec.yaml` file based on commit messages
  _(e.g., `2.0.0` ➡️ `2.1.0`)_.
- 📝 **Update** the `CHANGELOG.md` file with the latest changes.

After making these changes, the workflow will create a pull request (PR) with
title:

```text
chore(release): `package:win32` v2.1.0
```

## 3️⃣ Review and Merge the PR

Open the PR created by the workflow, review the changes, and **merge it** into
the main branch.

## 4️⃣ Automatic Release and Publishing

After merging the PR, the following workflows will automatically be triggered:

### 📦 **Release** Workflow

- The [Release] workflow will **create** a new release on GitHub with the
  corresponding Git tag.

### 🚀 **Publish** Workflow

- After the Git tag is created, the [Publish] workflow will be triggered to
  **publish** the new package version to [pub.dev].

[GitHub Actions]: https://github.com/halildurmus/win32/actions
[Prepare Release]: https://github.com/halildurmus/win32/blob/main/.github/workflows/prepare_release.yml
[pub.dev]: https://pub.dev
[Publish]: https://github.com/halildurmus/win32/blob/main/.github/workflows/publish.yml
[Release]: https://github.com/halildurmus/win32/blob/main/.github/workflows/release.yml
