import {
  listTagsByLetters,
  type TagLetterEntry,
} from '@docusaurus/theme-common';
import Heading from '@theme/Heading';
import Tag from '@theme/Tag';
import type { Props } from '@theme/TagsListByLetter';
import styles from './styles.module.css';

function TagLetterEntryItem({ letterEntry }: { letterEntry: TagLetterEntry }) {
  return (
    <article>
      <Heading as="h2" id={letterEntry.letter}>
        {letterEntry.letter}
      </Heading>
      <ul className="padding--none">
        {letterEntry.tags.map((tag) => (
          <li key={tag.permalink} className={styles.tag}>
            <Tag {...tag} />
          </li>
        ))}
      </ul>
      <hr />
    </article>
  );
}

export default function TagsListByLetter({ tags }: Props): JSX.Element {
  const letterList = listTagsByLetters(tags);
  return (
    <section className="margin-vert--lg">
      {letterList.map((letterEntry) => (
        <TagLetterEntryItem
          key={letterEntry.letter}
          letterEntry={letterEntry}
        />
      ))}
    </section>
  );
}
