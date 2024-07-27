import MDXComponents from '@theme-original/MDXComponents';

import { BannerRandom } from '@site/src/components/banner/banner-random';
import { GuideBadge } from '@site/src/components/guide-badge';
import { Image } from '@site/src/components/image';
import PropTag from '@site/src/components/prop-tag';
import { Blockquote } from '@site/src/win32-theme/common-blockquote';
import { CommonRunLocalPrompt } from '@site/src/win32-theme/common-run-local-prompt';
import CommonTabItem from '@site/src/win32-theme/common-tab-item';
import { Table } from '@site/src/win32-theme/common-table';
import CommonTabs from '@site/src/win32-theme/common-tabs';
import { CommonViewSourceCode } from '@site/src/win32-theme/common-view-source-code';
import FeedbackWidget from '@site/src/win32-theme/doc-feedback-widget';
import { InstallPackagesCommand } from '@site/src/win32-theme/install-packages-command';

export default {
  ...MDXComponents,
  BannerRandom,
  blockquote: Blockquote,
  CommonRunLocalPrompt,
  CommonViewSourceCode,
  FeedbackWidget,
  GuideBadge,
  Image,
  InstallPackagesCommand,
  PropTag,
  table: Table,
  Tabs: CommonTabs,
  TabItem: CommonTabItem,
};
