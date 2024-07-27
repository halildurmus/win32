import {
  HtmlClassNameProvider,
  PageMetadata,
  ThemeClassNames,
  translateTagsPageTitle,
} from '@docusaurus/theme-common';
import BlogLayout from '@theme/BlogLayout';
import Heading from '@theme/Heading';
import SearchMetadata from '@theme/SearchMetadata';
import TagsListByLetter from '@theme/TagsListByLetter';
import clsx from 'clsx';

export default function BlogTagsListPage({ tags, sidebar }) {
  const title = translateTagsPageTitle();
  return (
    <HtmlClassNameProvider
      className={clsx(
        ThemeClassNames.wrapper.blogPages,
        ThemeClassNames.page.blogTagsListPage
      )}
    >
      <PageMetadata title={title} />
      <SearchMetadata tag="blog_tags_list" />
      <BlogLayout sidebar={sidebar}>
        <Heading as="h1">{title}</Heading>
        <TagsListByLetter tags={tags} />
      </BlogLayout>
    </HtmlClassNameProvider>
  );
}
