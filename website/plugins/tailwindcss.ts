import { PostCssOptions } from '@docusaurus/types';

export default async function tailwindcss() {
  return {
    name: 'docusaurus-tailwindcss',
    configurePostCss(postcssOptions: PostCssOptions) {
      postcssOptions.plugins = [
        require('tailwindcss'),
        require('autoprefixer'),
      ];
      return postcssOptions;
    },
  };
}
