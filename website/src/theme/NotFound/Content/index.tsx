import Translate from '@docusaurus/Translate';
import { CommonFooter } from '@site/src/win32-theme/common-footer';
import { CommonHeader } from '@site/src/win32-theme/common-header';
import type { Props } from '@theme/NotFound/Content';

export default function NotFoundContent({ className }: Props): JSX.Element {
  return (
    <div className="win32-prose">
      <CommonHeader />
      <div className="pt-32 pb-32 max-w-[520px] w-full mx-auto text-center">
        <h1 className="text-[122px] leading-[122px] landing-sm:text-[188px] landing-sm:leading-[188px] font-bold">
          404
        </h1>
        <h2 className="text-[26px] landing-sm:text-[42px] landing-sm:leading-[60px] font-bold mt-0 mb-5">
          <Translate
            id="theme.NotFound.title"
            description="The title of the 404 page"
          >
            Page Not Found
          </Translate>
        </h2>
        <p>
          <Translate
            id="theme.NotFound.p1"
            description="The first paragraph of the 404 page"
          >
            The page you are looking for might have been removed had its name
            changed or is temporarily unavailable.
          </Translate>
        </p>
      </div>
      <CommonFooter />
    </div>
  );
}
