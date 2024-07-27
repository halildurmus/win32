import { Admonition as Win32Admonition } from '@site/src/win32-theme/common-admonition';
import React from 'react';

// Workaround because it's difficult in MDX v1 to provide a MDX title as props
// See https://github.com/facebook/docusaurus/pull/7152#issuecomment-1145779682
function extractMDXAdmonitionTitle(children) {
  const items = React.Children.toArray(children);
  const mdxAdmonitionTitle = items.find(
    (item) =>
      React.isValidElement(item) && item.props?.mdxType === 'mdxAdmonitionTitle'
  );
  const rest = <>{items.filter((item) => item !== mdxAdmonitionTitle)}</>;
  return {
    mdxAdmonitionTitle,
    rest,
  };
}

function processAdmonitionProps(props) {
  const { mdxAdmonitionTitle, rest } = extractMDXAdmonitionTitle(
    props.children
  );
  return {
    ...props,
    title: props.title ?? mdxAdmonitionTitle,
    children: rest,
  };
}

const AdmonitionBase = (props) => {
  const { children, type, title } = processAdmonitionProps(props);
  return (
    <Win32Admonition type={type} title={title}>
      {children}
    </Win32Admonition>
  );
};

export default function AdmonitionWrapper(props) {
  return <AdmonitionBase {...props} />;
}
