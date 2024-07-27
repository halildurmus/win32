import isInternalUrl from '@docusaurus/isInternalUrl';
import { githubRepoUrl } from '../config';

/**
 * This function will generate rel attribute for links.
 * @param {string} URL to be dest for link
 */
export const getLinkRel = (URL?: string): string => {
  const isInternalURL = isInternalUrl(URL);

  let rel = 'noopener noreferrer nofollow';
  if (URL?.includes(githubRepoUrl)) {
    rel = 'noopener';
  }
  if (isInternalURL || URL?.includes('win32.pub')) {
    rel = 'noopener dofollow';
  }

  return rel;
};
