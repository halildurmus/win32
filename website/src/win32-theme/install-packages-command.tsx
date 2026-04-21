import { FC, PropsWithChildren } from "react";
import { CodeBlock } from "../theme/CodeBlock/base";
import TabItem from "../theme/TabItem";
import Tabs from "../theme/Tabs";

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
