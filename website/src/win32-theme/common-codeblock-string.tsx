import { usePrismTheme, useThemeConfig } from '@docusaurus/theme-common';
import {
  containsLineNumbers,
  parseCodeBlockTitle,
  parseLanguage,
  parseLines,
  useCodeWordWrap,
} from '@docusaurus/theme-common/internal';
import { DartIcon } from '@site/src/win32-theme/icons/dart';
import Line from '@theme/CodeBlock/Line';
import clsx from 'clsx';
import { Highlight } from 'prism-react-renderer';
import React from 'react';
import { IoDocumentTextOutline } from 'react-icons/io5';
import { CommonCodeBlockContainer } from './common-codeblock-container';
import { CommonCopyButton } from './common-copy-button';
import { CommonWordWrapButton } from './common-wordwrap-button';

const CodeBlockTitle = ({
  children,
  icon,
}: {
  children?: React.ReactNode;
  icon?: React.ReactNode;
}) => (
  <div
    className={clsx(
      'py-3',
      'px-4',
      'bg-gray-100 dark:bg-gray-700',
      'text-gray-800',
      'dark:text-gray-100',
      'text-xs',
      'flex items-center',
      'gap-2',
      'rounded-tl-lg',
      'rounded-tr-lg'
    )}
  >
    {icon}
    {children}
  </div>
);

export const CodeBlockString = ({
  children,
  className: blockClassName = '',
  metastring,
  title: titleProp,
  showLineNumbers: showLineNumbersProp,
  language: languageProp,
  icon,
  style,
}) => {
  const {
    prism: { defaultLanguage, magicComments },
  } = useThemeConfig();
  const language =
    languageProp ?? parseLanguage(blockClassName) ?? defaultLanguage;
  const prismTheme = usePrismTheme();
  const wordWrap = useCodeWordWrap();
  // We still parse the metastring in case we want to support more syntax in the
  // future. Note that MDX doesn't strip quotes when parsing metastring:
  // "title=\"xyz\"" => title: "\"xyz\""
  const title = parseCodeBlockTitle(metastring) || titleProp;
  const isDart = language === 'dart';
  icon =
    icon ?? isDart ? (
      <DartIcon height={20} width={20} />
    ) : (
      <IoDocumentTextOutline size={20} />
    );

  const { lineClassNames, code } = parseLines(children, {
    metastring,
    language,
    magicComments,
  });

  const showLineNumbers =
    showLineNumbersProp ?? containsLineNumbers(metastring);

  return (
    <CommonCodeBlockContainer
      as="div"
      className={clsx(
        'win32-common-code-block',
        language && `language-${language}`,
        'rounded-lg',
        'bg-win32-react-light-code',
        'dark:bg-win32-react-dark-code',
        'border',
        'border-gray-300',
        'dark:border-0',
        'mb-6',
        'relative',
        'win32-wider-container'
      )}
      style={style}
    >
      {title && <CodeBlockTitle icon={icon}>{title}</CodeBlockTitle>}
      <div className={clsx('relative', 'pt-3', 'pb-0', 'not-prose')}>
        <Highlight theme={prismTheme} code={code} language={language ?? 'text'}>
          {({ className, tokens, getLineProps, getTokenProps }) => (
            <pre
              tabIndex={0}
              ref={wordWrap.codeBlockRef}
              className={clsx(
                className,
                'bg-transparent',
                '!mt-0',
                '!mb-0',
                'm-0',
                'px-0',
                'pt-0',
                'font-jetBrains-mono',
                'pb-3'
              )}
            >
              <code
                className={clsx(
                  'font-[inherit]',
                  'bg-transparent',
                  'inline-block',
                  'min-w-full'
                )}
              >
                {tokens.map((line, i) => (
                  <Line
                    key={i}
                    line={line}
                    getLineProps={getLineProps}
                    getTokenProps={getTokenProps}
                    classNames={[
                      clsx(
                        lineClassNames[i],
                        'px-4',
                        'text-xs sm:text-sm 2xl:text-sm'
                      ),
                    ]}
                    showLineNumbers={showLineNumbers}
                  />
                ))}
              </code>
            </pre>
          )}
        </Highlight>
      </div>
      <div
        className={clsx(
          'absolute',
          title ? 'top-2 right-2' : 'top-3 right-3',
          'flex items-center gap-2'
        )}
      >
        {(wordWrap.isEnabled || wordWrap.isCodeScrollable) && (
          <CommonWordWrapButton
            onClick={wordWrap.toggle}
            isEnabled={wordWrap.isEnabled}
          />
        )}
        <CommonCopyButton code={code} />
      </div>
    </CommonCodeBlockContainer>
  );
};
