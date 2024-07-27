import {
  createContext,
  FC,
  useCallback,
  useContext,
  useEffect,
  useMemo,
  useState,
} from 'react';

interface ICommunityStatsContext {
  githubStarCount: number;
  githubStarCountText: string;
  loading: boolean;
  refetch: (signal: AbortSignal) => Promise<void>;
}

export const CommunityStatsContext = createContext<
  ICommunityStatsContext | undefined
>(undefined);

type Props = {
  children: React.ReactNode;
};

export const CommunityStatsProvider: FC<Props> = ({ children }) => {
  const [loading, setLoading] = useState(true);
  const [githubStarCount, setGitHubStarCount] = useState(0);

  const fetchGitHubCount = useCallback(async (signal: AbortSignal) => {
    // If the star count is already fetched, don't fetch it again.
    if (githubStarCount > 0) return;

    try {
      setLoading(true);

      const response = await fetch(
        'https://api.github.com/repos/halildurmus/win32',
        {
          method: 'GET',
          headers: {
            'Content-Type': 'application/json',
          },
          signal,
        }
      );

      const json = await response.json();
      setGitHubStarCount(json.stargazers_count ?? 0);
    } catch (error) {
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    const abortController = new AbortController();
    fetchGitHubCount(abortController.signal);

    return () => {
      abortController.abort();
    };
  }, [fetchGitHubCount]);

  const githubStarCountText = useMemo(() => {
    return convertStatToText(githubStarCount);
  }, [githubStarCount]);

  const value = {
    githubStarCount,
    githubStarCountText,
    loading,
    refetch: fetchGitHubCount,
  };

  return (
    <CommunityStatsContext.Provider value={value}>
      {children}
    </CommunityStatsContext.Provider>
  );
};

export const useCommunityStatsContext = () => {
  const context = useContext(CommunityStatsContext);
  if (context === undefined) {
    throw new Error(
      'useCommunityStatsContext must be used within a GitHubProvider'
    );
  }
  return context;
};

export const convertStatToText = (num: number) => {
  const hasIntlSupport =
    typeof Intl === 'object' && Intl && typeof Intl.NumberFormat === 'function';
  if (!hasIntlSupport) return `${(num / 1000).toFixed(1)}k`;

  const formatter = new Intl.NumberFormat('en-US', {
    notation: 'compact',
    compactDisplay: 'short',
    maximumSignificantDigits: 3,
  });

  return formatter.format(num);
};
