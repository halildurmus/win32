import { TbTerminal2 } from "react-icons/tb";
import { CodeBlock } from '../theme/CodeBlock/base';

type Props = {
  path: string;
};

export const CommonRunLocalPrompt = ({ path }: Props) => {
  return (
    <CodeBlock
      language="bash"
      title="Run on your local"
      icon={<TbTerminal2 className="w-4 h-4" />}
    >
      {`dart ${path}`}
    </CodeBlock>
  );
};
