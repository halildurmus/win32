import BrowserOnly from '@docusaurus/BrowserOnly';
import { BannerExamples } from './banner-examples';
import { BannerImageWithText } from './banner-image-with-text';

const data = [
  {
    description: 'TODO description',
    image: {
      src: '/img/social.png',
      alt: 'X tweet about win32',
      href: 'https://win32.pub',
    },
    button: {
      text: 'Learn more',
      href: 'https://win32.pub',
    },
    bannerName: 'banner-twitter',
  },
];

// +1 for BannerExamples
const random = Math.floor(Math.random() * (data.length + 1));

export const BannerRandom = () => {
  // when random is equal to data.length, we will show BannerExamples
  if (random === data.length) {
    return <BrowserOnly>{() => <BannerExamples />}</BrowserOnly>;
  }

  return (
    <BrowserOnly>{() => <BannerImageWithText {...data[random]} />}</BrowserOnly>
  );
};
