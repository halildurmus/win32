import type { AuthorItemProp } from "@docusaurus/plugin-content-blog";
import {
  HtmlClassNameProvider,
  PageMetadata,
  ThemeClassNames,
} from "@docusaurus/theme-common";
import { translateBlogAuthorsListPageTitle } from "@docusaurus/theme-common/internal";
import Author from "@theme/Blog/Components/Author";
import type { Props } from "@theme/Blog/Pages/BlogAuthorsListPage";
import BlogLayout from "@theme/BlogLayout";
import SearchMetadata from "@theme/SearchMetadata";
import clsx from "clsx";
import { type ReactNode } from "react";
import styles from "./styles.module.css";

function AuthorListItem({ author }: { author: AuthorItemProp }) {
  return (
    <li className={styles.authorListItem}>
      <Author as="h2" author={author} count={author.count} />
    </li>
  );
}

function AuthorsList({ authors }: { authors: Props["authors"] }) {
  return (
    <section className={clsx("margin-vert--lg", styles.authorsListSection)}>
      <ul>
        {authors.map((author) => (
          <AuthorListItem key={author.key} author={author} />
        ))}
      </ul>
    </section>
  );
}

export default function BlogAuthorsListPage({
  authors,
  sidebar,
}: Props): ReactNode {
  const title: string = translateBlogAuthorsListPageTitle();
  return (
    <HtmlClassNameProvider
      className={clsx(
        ThemeClassNames.wrapper.blogPages,
        ThemeClassNames.page.blogAuthorsListPage,
      )}
    >
      <PageMetadata title={title} />
      <SearchMetadata tag="blog_authors_list" />
      <BlogLayout>
        <div className="h-12" />
        <div
          className={clsx(
            "px-4",
            "max-w-[512px]",
            "blog-md:px-7",
            "blog-md:max-w-screen-blog-md",
            "blog-2xl:px-0",
            "blog-2xl:max-w-screen-blog-md",
            "w-full",
            "mx-auto",
          )}
        >
          <h1 className="text-4xl !mb-0 px-0 lg:px-4">{title}</h1>
        </div>
        <AuthorsList authors={authors} />
      </BlogLayout>
    </HtmlClassNameProvider>
  );
}
