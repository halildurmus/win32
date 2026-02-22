const blogPluginExports = require("@docusaurus/plugin-content-blog");
const utils = require("@docusaurus/utils");
const path = require("path");

const defaultBlogPlugin = blogPluginExports.default;

async function blogPluginExtended(context, options) {
  const blogPluginInstance = await defaultBlogPlugin(context, options);
  const { blogTitle, blogDescription, postsPerPage, routeBasePath } = options;

  return {
    ...blogPluginInstance,
    contentLoaded: async function (data) {
      const { content: blogContents, actions } = data;
      const { addRoute, createData } = actions;
      const { blogPosts: allBlogPosts } = blogContents;

      const postLimit = 3;

      // Get the last 3 featured blog posts
      const featuredPosts = [
        ...allBlogPosts.filter(
          (post) => post.metadata.frontMatter.is_featured === true,
        ),
      ].slice(0, postLimit);

      // Get the last 3 blog posts
      const recentPosts = [
        ...allBlogPosts.filter(
          (post) => post.metadata.frontMatter.is_featured !== true,
        ),
      ].slice(0, postLimit);

      async function createFeaturedPostModule(blogPost, index) {
        return {
          // Inject the metadata you need for each recent blog post
          metadata: await createData(
            `home-page-recent-featured-post-metadata-${index}.json`,
            JSON.stringify({
              title: blogPost.metadata.title,
              description: blogPost.metadata.description,
              frontMatter: blogPost.metadata.frontMatter,
              image: blogPost.metadata.frontMatter.image,
              tags: blogPost.metadata.tags,
            }),
          ),

          // Inject the MDX excerpt as a JSX component prop
          // (what's above the <!-- truncate --> marker)
          Preview: {
            __import: true,
            // The markdown file for the blog post will be loaded by webpack
            path: blogPost.metadata.source,
            query: {
              truncated: true,
            },
          },
        };
      }

      async function createRecentPostModule(blogPost, index) {
        return {
          // Inject the metadata you need for each recent blog post
          metadata: await createData(
            `home-page-recent-post-metadata-${index}.json`,
            JSON.stringify({
              title: blogPost.metadata.title,
              description: blogPost.metadata.description,
              frontMatter: blogPost.metadata.frontMatter,
              image: blogPost.metadata.frontMatter.image,
              tags: blogPost.metadata.tags,
            }),
          ),

          // Inject the MDX excerpt as a JSX component prop
          // (what's above the <!-- truncate --> marker)
          Preview: {
            __import: true,
            // The markdown file for the blog post will be loaded by webpack
            path: blogPost.metadata.source,
            query: {
              truncated: true,
            },
          },
        };
      }

      addRoute({
        // Add route for the home page
        path: "/",
        exact: true,

        // The component to use for the "Home" page route
        component: "@site/src/components/home/index.tsx",

        // These are the props that will be passed to our "Home" page component
        modules: {
          homePageBlogMetadata: await actions.createData(
            "home-page-blog-metadata.json",
            JSON.stringify({
              blogBasePath: routeBasePath,
              blogTitle: blogTitle,
              blogDescription: blogDescription,
              totalPosts: allBlogPosts.length,
              totalFeaturedPosts: featuredPosts.length,
              totalRecentPosts: recentPosts.length,
            }),
          ),
          featuredPosts: await Promise.all(
            featuredPosts.map(createFeaturedPostModule),
          ),
          recentPosts: await Promise.all(
            recentPosts.map(createRecentPostModule),
          ),
        },
      });

      return blogPluginInstance.contentLoaded(data);
    },
  };
}

module.exports = {
  ...blogPluginExports,
  default: blogPluginExtended,
};
