import { CodeBlock } from '@site/src/theme/CodeBlock/base';
import Tabs from '@site/src/win32-theme/common-tabs';
import TabItem from '@theme/TabItem';
import { FC, PropsWithChildren } from 'react';

type Props = {
  args?: string;
};

export const InstallPackagesCommand: FC<PropsWithChildren<Props>> = ({
  args,
  children,
}) => {
  const commands = {
    dart: `dart pub add ${args}`,
    flutter: `flutter pub add ${args}`,
  };

  return (
    <Tabs>
      <TabItem value="flutter" label="Flutter" default>
        <CodeBlock className="language-bash">{commands.flutter}</CodeBlock>
        {children}
      </TabItem>
      <TabItem value="dart" label="Dart-only">
        <CodeBlock className="language-bash">{commands.dart}</CodeBlock>
        {children}
      </TabItem>
    </Tabs>
  );
};
