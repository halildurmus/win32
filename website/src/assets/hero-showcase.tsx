import { ShowcaseWrapper } from '@site/src/win32-theme/icons/landing-showcase-wrapper';

const ShowcaseTaskManager = ({ className }: { className?: string }) => (
  <ShowcaseWrapper
    className={className}
    dark
    render="/assets/landing-hero-showcase/task_manager.png"
  />
);

const ShowcaseDartNote = ({ className }: { className?: string }) => (
  <ShowcaseWrapper
    className={className}
    render="/assets/landing-hero-showcase/dartnote.png"
  />
);

const ShowcaseSnake = ({ className }: { className?: string }) => (
  <ShowcaseWrapper
    className={className}
    dark
    render="/assets/landing-hero-showcase/snake.png"
  />
);

const ShowcaseTetris = ({ className }: { className?: string }) => (
  <ShowcaseWrapper
    className={className}
    dark
    render="/assets/landing-hero-showcase/tetris.png"
  />
);

export type ShowcaseItem = {
  title: string;
  link: string;
  showcase: React.FC<{ className?: string }>;
  isDark?: boolean;
  ctaText: string;
};

export const showcaseItems: ShowcaseItem[] = [
  {
    title: 'Task Manager App',
    link: 'https://github.com/halildurmus/win32/tree/main/examples/task_manager',
    showcase: ShowcaseTaskManager,
    isDark: true,
    ctaText: 'Source code',
  },
  {
    title: 'DartNote App',
    link: 'https://github.com/halildurmus/win32/tree/main/examples/notepad',
    showcase: ShowcaseDartNote,
    ctaText: 'Source code',
  },
  {
    title: 'Snake Game',
    link: 'https://github.com/halildurmus/win32/blob/main/examples/snake.dart',
    showcase: ShowcaseSnake,
    isDark: true,
    ctaText: 'Source code',
  },
  {
    title: 'Tetris Game',
    link: 'https://github.com/halildurmus/win32/tree/main/examples/tetris',
    showcase: ShowcaseTetris,
    isDark: true,
    ctaText: 'Source code',
  },
];
