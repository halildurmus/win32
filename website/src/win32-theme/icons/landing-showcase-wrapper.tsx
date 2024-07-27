import clsx from 'clsx';
import { motion, useInView } from 'framer-motion';
import React from 'react';

type Props = {
  className?: string;
  dark?: boolean;
  render: string;
};

export const ShowcaseWrapper = React.memo(
  function ShowcaseWrapperBase({ className, dark, render }: Props) {
    const ref = React.useRef<HTMLDivElement>(null);
    const inView = useInView(ref);
    const [mounted, setMounted] = React.useState(false);

    React.useEffect(() => {
      if (inView) {
        const t = setTimeout(() => {
          setMounted(true);
        }, 500);

        return () => {
          clearTimeout(t);
        };
      }
    }, [inView]);

    return (
      <div ref={ref} className={clsx(className)}>
        <svg
          width={1168}
          height={736}
          viewBox="0 0 1168 736"
          fill="none"
          xmlns="http://www.w3.org/2000/svg"
          className={clsx(
            'relative',
            'w-full',
            'h-auto',
            'pointer-events-none'
          )}
        >
          <image x={0} y={0} width={1168} height={736} href={render} />
          {mounted && (
            <motion.foreignObject
              x={0}
              y={0}
              width={1168}
              height={736}
              initial={{
                opacity: 0,
              }}
              animate={{
                opacity: 1,
              }}
              className="relative group/all pointer-events-none hidden landing-md:block"
            >
              <div
                className={clsx(
                  'absolute',
                  'left-0',
                  'top-0',
                  'pointer-events-none',
                  'opacity-0',
                  'duration-150',
                  'ease-in-out',
                  'transition-opacity',
                  'group-hover/all:opacity-100',
                  'group-hover/all:z-[3]',
                  dark ? 'bg-gray-900' : 'bg-gray-0',
                  'bg-opacity-20',
                  'backdrop-blur-sm',
                  'w-full',
                  'h-full'
                )}
              />
            </motion.foreignObject>
          )}
        </svg>
      </div>
    );
  },
  (prev, next) =>
    prev.render === next.render && prev.className === next.className
);
