import Head from '@docusaurus/Head';
import type {
  BlogPostFrontMatter,
  BlogPostMetadata,
} from '@docusaurus/plugin-content-blog';
import useDocusaurusContext from '@docusaurus/useDocusaurusContext';
import { CommonFooter } from '@site/src/win32-theme/common-footer';
import { CommonHeader } from '@site/src/win32-theme/common-header';
import { CommonLayout } from '@site/src/win32-theme/common-layout';
import { LandingBlogPosts } from '@site/src/win32-theme/landing-blog-posts';
import { LandingFeatures } from '@site/src/win32-theme/landing-features';
import { LandingHeroSection } from '@site/src/win32-theme/landing-hero-section';
import { LandingPackages } from '@site/src/win32-theme/landing-packages';
import { LandingTryItSection } from '@site/src/win32-theme/landing-try-it-section';
import clsx from 'clsx';

export type BlogPostProps = {
  metadata: {
    title: string;
    description: string;
    frontMatter: BlogPostFrontMatter & Record<string, unknown>;
    image: string;
    tags: { label: string; permalink: string }[];
  };
  Preview: {
    metadata: BlogPostMetadata;
  };
};

export type HomePageProps = {
  homePageBlogMetadata: {
    blogBasePath: string;
    blogTitle: string;
    blogDescription: string;
    totalPosts: number;
    totalFeaturedPosts: number;
    totalRecentPosts: number;
  };
  featuredPosts: BlogPostProps[];
  recentPosts: BlogPostProps[];
};

export default function Home({
  homePageBlogMetadata,
  featuredPosts,
  recentPosts,
}: HomePageProps): JSX.Element {
  const {
    siteConfig: { customFields, title, tagline },
  } = useDocusaurusContext();
  const { description } = customFields as { description: string };
  return (
    <>
      <Head>
        <html data-active-page="index" />
        <title>{`${title} | ${tagline}`}</title>
        <meta property="og:title" content={`${title} | ${tagline}`} />
      </Head>
      <CommonLayout description={description}>
        <div className={clsx()}>
          <CommonHeader />
          <div
            className={clsx(
              'flex flex-col',
              'gap-16 landing-sm:gap-20 landing-md:gap-28 landing-lg:gap-40',
              'w-full',
              'max-w-[592px]',
              'landing-sm:max-w-[656px]',
              'landing-md:max-w-[896px]',
              'landing-lg:max-w-[1200px]',
              'px-2 landing-sm:px-0',
              'pb-12 landing-sm:pb-16 landing-md:pb-20 landing-lg:pb-40',
              'mx-auto'
            )}
          >
            <LandingHeroSection
              className={clsx('mt-0', 'landing-sm:mt-8', 'landing-lg:mt-20')}
            />
            <LandingFeatures />
            <LandingPackages />
            <LandingBlogPosts
              homePageBlogMetadata={homePageBlogMetadata}
              featuredPosts={featuredPosts}
              recentPosts={recentPosts}
            />
            {/* <LandingSponsors /> */}
            <LandingTryItSection />
          </div>
          <CommonFooter />
        </div>
      </CommonLayout>
    </>
  );
}
