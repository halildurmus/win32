import Translate from '@docusaurus/Translate';
import Tag from '@theme/Tag';
import type { Props } from '@theme/TagsListInline';
import clsx from 'clsx';

import styles from './styles.module.css';

export default function TagsListInline({ tags }: Props): JSX.Element {
  return (
    <>
      <b>
        <Translate
          id="theme.tags.tagsListLabel"
          description="The label alongside a tag list"
        >
          Tags:
        </Translate>
      </b>
      <ul className={clsx(styles.tags, 'padding--none', 'margin-left--sm')}>
        {tags.map(({ label, permalink: tagPermalink }) => (
          <li key={tagPermalink} className={styles.tag}>
            <Tag label={label} permalink={tagPermalink} />
          </li>
        ))}
      </ul>
    </>
  );
}
