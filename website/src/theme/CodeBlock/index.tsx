import { CodeBlock } from './base';

export default function CodeBlockWrapper(
  props: JSX.IntrinsicAttributes
): JSX.Element {
  return <CodeBlock {...(props as any)} />;
}
