import { useDateTimeFormat } from '@docusaurus/theme-common/internal';

export function DateTime({ date }: { date: string }) {
  const dateTimeFormat = useDateTimeFormat({
    day: 'numeric',
    month: 'long',
    year: 'numeric',
    timeZone: 'UTC',
  });
  const formattedDateTime = dateTimeFormat.format(new Date(date));
  return <time dateTime={date}>{formattedDateTime}</time>;
}
