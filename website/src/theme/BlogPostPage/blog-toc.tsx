import { useLocation } from '@docusaurus/router';
import { useBlogPost } from '@docusaurus/theme-common/internal';
import { Tags } from '@site/src/components/blog';
import clsx from 'clsx';
import React from 'react';

export const BlogTOC = (props) => {
  const location = useLocation();
  const { metadata } = useBlogPost();
  const hasTags = metadata.tags.length > 0;
  const { toc, hasTOC, activeId, setActiveId } = useTOC(props.toc);

  const onIdChange = (id) => {
    if (id !== `${location.hash ?? ''}`.replace('#', '')) {
      setActiveId(id);
      window.history.replaceState({}, '', `#${id}`);
    }
  };

  return (
    <div
      className={clsx(
        'hidden blog-md:block',
        'w-full',
        'sticky right-0 top-[65px]',
        'max-w-[260px]',
        'overflow-auto',
        'h-[calc(100vh-65px)]',
        'px-4',
        'pt-4 blog-lg:pt-9',
        'pb-10',
        'border-l border-l-gray-300 dark:border-l-gray-700',
        !hasTOC && 'invisible',
        'not-prose',
        props.className
      )}
    >
      {hasTags && <Tags />}
      <ul className={clsx(hasTags && 'pt-10')}>
        {toc.map((item) => {
          return (
            <li key={item.id} className="mt-0.5">
              <BlogTOCItem
                id={item.id}
                value={item.value}
                activeId={activeId}
                level={item.level}
                onIdChange={onIdChange}
              />
            </li>
          );
        })}
      </ul>
    </div>
  );
};

export const BlogTOCItem = ({
  id,
  value,
  level,
  activeId,
  onIdChange,
}: {
  id: string;
  value: string;
  level: number;
  activeId: string;
  onIdChange?: (id: string) => void;
}) => {
  React.useEffect(() => {
    const targetElement = document.getElementById(id);

    if (targetElement) {
      const observer = new IntersectionObserver(
        (entries) => {
          entries.forEach((entry) => {
            if (entry.isIntersecting) {
              onIdChange(id);
            }
          });
        },
        {
          rootMargin: '0px 0px -80% 0px',
        }
      );

      observer.observe(targetElement);

      return () => {
        observer.unobserve(targetElement);
      };
    }
  }, [id]);

  return (
    <a
      href={`#${id}`}
      className={clsx(
        'win32-toc-item',
        'px-4 py-2',
        level === 2 && 'pl-4',
        level === 3 && 'pl-6',
        level === 4 && 'pl-8',
        level === 5 && 'pl-8',
        activeId === id &&
          'bg-win32-blue-2-light dark:bg-win32-blue-2 dark:bg-opacity-10',
        activeId === id &&
          'text-win32-react-light-link dark:text-win32-react-dark-link',
        activeId !== id && 'text-win32-600 dark:text-win32-300',
        activeId !== id && 'hover:bg-gray-100 dark:hover:bg-gray-700',
        activeId !== id && 'hover:text-gray-600 dark:hover:text-gray-300',
        'rounded-[18px]',
        'block',
        'text-sm',
        'no-underline hover:no-underline',
        'transition-colors duration-200 ease-in-out'
      )}
      // biome-ignore lint/security/noDangerouslySetInnerHtml: explicitly disabled
      dangerouslySetInnerHTML={{
        __html: value,
      }}
    />
  );
};

export const useTOC = (toc) => {
  const { hash } = useLocation();
  const baseActiveId = `${hash}`.replace('#', '');
  const [activeId, setActiveId] = React.useState<string | undefined>(
    baseActiveId
  );

  React.useEffect(() => {
    setActiveId(baseActiveId);
  }, [baseActiveId]);

  const hasTOC = toc?.length > 0;
  return {
    toc,
    activeId,
    setActiveId,
    hasTOC,
  };
};
