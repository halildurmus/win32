const defaultTheme = require('tailwindcss/defaultTheme');
const plugin = require('tailwindcss/plugin');

/** @type {import('tailwindcss').Config} */
module.exports = {
  darkMode: ['class', '[data-theme="dark"]'],
  content: ['./src/**/*.{js,jsx,ts,tsx}', './docs/**/*.{md,mdx,tsx}'],
  theme: {
    extend: {
      zIndex: {
        popover: 9,
        modal: 100,
        mobileNavbar: 1000,
        'announcement-bar': 1000,
      },
      colors: {
        dart: {
          navy: '#01579B',
          blue: '#40C4FF',
          sky: '#29B6F6',
        },
        flutter: {
          navy: '#042B59',
          blue: '#0553B1',
          sky: '#027DFD',
        },
        gray: {
          0: 'rgb(var(--color-gray-0) / <alpha-value>)',
          50: 'rgb(var(--color-gray-50) / <alpha-value>)',
          100: 'rgb(var(--color-gray-100) / <alpha-value>)',
          200: 'rgb(var(--color-gray-200) / <alpha-value>)',
          300: 'rgb(var(--color-gray-300) / <alpha-value>)',
          400: 'rgb(var(--color-gray-400) / <alpha-value>)',
          500: 'rgb(var(--color-gray-500) / <alpha-value>)',
          600: 'rgb(var(--color-gray-600) / <alpha-value>)',
          700: 'rgb(var(--color-gray-700) / <alpha-value>)',
          800: 'rgb(var(--color-gray-800) / <alpha-value>)',
          900: 'rgb(var(--color-gray-900) / <alpha-value>)',
          1000: 'rgb(var(--color-gray-1000) / <alpha-value>)',
        },
        win32: {
          red: '#FF4C4D',
          orange: '#FF9933',
          yellow: '#FFBF00',
          green: '#1FAD66',
          'green-alt': '#26D97F',
          cyan: '#0F8A8A',
          'cyan-alt': '#47EBEB',
          blue: '#0080FF',
          selection: '#6EF7F7',
          'blue-alt': '#6EB3F7',
          'blue-2': '#58AFDF',
          'blue-2-light': '#E6F7FF',
          'react-dark-link': '#149ECA',
          'react-light-link': '#087EA4',
          'react-dark-code': '#16181D',
          'react-light-code': '#FFFFFF',
          indigo: '#3333FF',
          'indigo-alt': '#8080FF',
          purple: '#8000FF',
          'purple-alt': '#B366FF',
          pink: '#ED5EC9',
          bg: '#0A0A29',
          kdb: '#DBDBF0',
          'react-dark-orange': '#DB7D27',
          'react-dark-purple': '#8891EC',
          'react-dark-green': '#44AC99',
          'react-dark-green-alt': '#26D97F',
          'react-light-orange': '#C76A15',
          'react-light-purple': '#575FB7',
          'react-light-green': '#2B6E62',
          'react-light-green-alt': '#24A866',
          'react-light-orange-bg': '#FEF5E7',
          'react-light-purple-bg': '#F3F4FD',
          'react-light-green-bg': '#F4FBF9',
          'bg-alt': '#262640',
          'link-dark': '#6EB3F7',
          'link-light': '#0080FF',
          'landing-stats-fallback-bg': '#242442',
          'walkthrough-button-bg': '#4D4DB2',
          'walkthrough-button-alt-bg': '#474E6B',
          'react-1': '#F6F7F9',
          'react-2': '#EAEBEF',
          'react-3': '#E3E4E5',
          'react-4': '#99A1B3',
          'react-5': '#667084',
          'react-6': '#444955',
          'react-7': '#343A46',
          'react-8': '#23272F',
        },
      },
      fontFamily: {
        sans: ['var(--primary-font-sans)', ...defaultTheme.fontFamily.sans],
        mono: ['Source Code Pro', ...defaultTheme.fontFamily.mono],
        montserrat: ['Montserrat', ...defaultTheme.fontFamily.serif],
        disket: ['Disket Mono', ...defaultTheme.fontFamily.mono],
        inter: ['Inter', ...defaultTheme.fontFamily.serif],
        'jetBrains-mono': [
          'JetBrains Mono',
          'SFMono-Regular',
          'Menlo',
          'Monaco',
          'Consolas',
          '"Liberation Mono"',
          '"Courier New"',
          'monospace',
        ],
      },
      dropShadow: {
        'github-stars-glow': [
          '0px 0px 3px #FF993330',
          '0px 0px 6px #FF9933A0',
          '0px 0px 16px #FF9933A0',
          '0px 0px 16px #FF9933',
        ],
        'landing-hero-animation-center-glow': [
          '0 0px 9px rgba(71, 235, 235, 0.5)',
          '0 0px 9px rgba(71, 235, 235, 0.5)',
        ],
        'showcase-highlight': [
          '0px 3px 7px rgba(108, 119, 147, 0.141)',
          '0px 13px 13px rgba(108, 119, 147, 0.141)',
          '0px 20px 18px rgba(108, 119, 147, 0.18)',
          '0px 34px 21px rgba(108, 119, 147, 0.2)',
          '0px 54px 23px rgba(108, 119, 147, 0)',
        ],
      },
      boxShadow: {
        modal: '4px 8px 16px rgba(42, 42, 66, 0.25)',
        tile: '6px 8px 16px 0 rgba(42, 42, 66, 0.4)',
        packageTile: '3px 4px 8px 0 rgba(42, 42, 66, 0.25)',
        tagTile: '3px -2px 8px 0 rgba(42, 42, 66, 0.25)',
        startTiles: '4px 8px 16px rgba(42, 42, 66, 0.25)',
        menuItem: '2px 4px 8px rgba(36, 36, 54, 0.2)',
        'menu-dark': '0px 0px 0px 4px rgba(48, 52, 80, 0.25)',
        'menu-light': '0px 0px 0px 4px rgba(222, 229, 237, 0.25)',
        'menu-blog-dark': '0px 0px 0px 4px #4449551A',
        'menu-blog-light': '0px 0px 0px 4px #99A1B31A',
      },
      backgroundColor: {
        'landing-header-bg': 'rgba(10, 10, 41, 0.70)',
        'landing-header-border': 'rgba(48, 52, 80, 0.70)',
        'common-header-bg-dark': 'rgba(29, 30, 48, 0.70)',
        'common-header-bg-light': 'rgba(244, 248, 251, 0.85)',
      },
      backdropBlur: {
        'header-blur': '12px',
      },
      backgroundImage: {
        'landing-noise': ['url(/assets/landing-noise.webp)'],
        noise: 'url(/assets/landing-noise.webp)',
        'walkthrough-button-shadow':
          'conic-gradient(from 231deg at 50% 50%, #A3A3F5 0%, #4D4DB2 6%, #4D4DB2 44%, #A3A3F5 50%, #4D4DB2 56%, #4D4DB2 94%, #A3A3F5 100%)',
        'walkthrough-button-alt-shadow':
          'conic-gradient(from 231deg at 50% 50%, #A3A3F5 0%, #474E6B 6%, #474E6B 44%, #A3A3F5 50%, #474E6B 56%, #474E6B 94%, #A3A3F5 100%)',
        'selected-tab-light':
          'linear-gradient(180deg, rgba(110, 179, 247, 0) 50%, rgba(0, 128, 255, 0.25) 100%)',
        'selected-tab-dark':
          'linear-gradient(180deg, rgba(110, 179, 247, 0) 50%, rgba(0, 128, 255, 0.25) 100%)',
        'landing-component-divider-dark':
          'linear-gradient(90deg, rgba(48, 52, 80, 0) 0%, #303450 12.5%, #303450 87.5%, rgba(48, 52, 80, 0) 100%)',
        'landing-component-divider':
          'linear-gradient(270deg, rgba(31, 173, 102, 0) 0%, rgba(31, 173, 102, 0.5) 12.5%, rgba(31, 173, 102, 0.5) 87.5%, rgba(31, 173, 102, 0) 100%)',
        'landing-component-badge': [
          'linear-gradient(306deg, #303450 0%, rgba(20, 20, 31, 0.5) 100%)',
          'linear-gradient(168deg, rgba(38, 217, 127, 0.9) 15%, rgba(71, 235, 235, 0) 50%)',
          'linear-gradient(0deg, #303450, #303450)',
        ],
        'landing-component-badge-glow':
          'radial-gradient(50% 50% at 50% 50%, rgba(38, 217, 127, 0.1) 0%, rgba(71, 235, 235, 0) 100%)',
        'landing-text-bg':
          'linear-gradient(180deg, #FFFFFF 0%, rgba(255, 255, 255, 0.6) 100%)',
        'landing-text-bg-alt':
          'linear-gradient(180deg, #FFFFFF 0%, rgba(255, 255, 255, 0.4) 80%, rgba(255,255,255,0.4) 100%)',
        'landing-sliding-highlight-bg':
          'linear-gradient(180deg, #3FDCF7 0%, rgba(63, 220, 247, 0.6) 100%)',
        'landing-rainbow':
          'conic-gradient(from 180deg at 50% 50%, #3FDCF7 0deg, #1890FF 51.43deg, #6813CB 102.86deg, #FF003D 154.29deg, #FF8A00 205.71deg, #FFD600 257.14deg, #67BE23 308.57deg, #3FDCF7 360deg)',
        'landing-stats-bg': [
          'radial-gradient(59.21% 56.25% at 0% 0%, #17174F 0%, rgba(23, 23, 79, 0) 100%)',
          'linear-gradient(180deg, rgba(0, 0, 0, 0.33) 0%, rgba(0, 0, 0, 0.165) 100%)',
        ],
        'landing-stats-border-bg':
          'conic-gradient(from -90deg at 50% 50%, rgba(77, 77, 179, 0) 0deg, #4D4DB3 39.37deg, rgba(77, 77, 179, 0) 86.25deg, rgba(77, 77, 179, 0) 198.75deg, #4D4DB3 232.5deg, rgba(77, 77, 179, 0) 275.62deg, rgba(77, 77, 179, 0) 360deg)',
        'landing-stats-text-dark':
          'linear-gradient(180deg, #FFF 25%, rgba(255, 255, 255, 0.25) 100%)',
        'landing-stats-text':
          'linear-gradient(180deg, #14141F 25%, rgba(20, 20, 31, 0.50) 100%)',
        'landing-sponsors-dark': [
          'url(/assets/landing-noise.webp)',
          'radial-gradient(40% 100% at 110% 0%, rgba(71, 235, 235, 0.15) 0%, rgba(71, 235, 235, 0.00) 100%)',
        ],
        'landing-sponsors': [
          'radial-gradient(40% 100% at 110% 20%, rgba(0, 128, 255, 0.15) 0%, #F4F8FB 100%)',
        ],
        'landing-packages-dark': [
          'url(/assets/landing-noise.webp)',
          'radial-gradient(50% 100% at 50% -40%, rgba(71, 235, 235, 0.15) 0%, rgba(71, 235, 235, 0.00) 100%)',
        ],
        'landing-packages': [
          'radial-gradient(50% 100% at 50% -60%, rgba(0, 128, 255, 0.15) 0%, #F4F8FB 100%)',
        ],
        'landing-packages-text':
          'linear-gradient(180deg, #14141F 0%, #474E6B 100%)',
        'landing-packages-text-dark':
          'linear-gradient(180deg, #FFF 0%, rgba(255, 255, 255, 0.50) 100%)',
        'banner-examples-gray': [
          'url(/assets/landing-noise.webp)',
          'radial-gradient(70.09% 100% at 50% 0%, #474E6B 0%, #303450 100%)',
        ],
        'banner-examples-purple': [
          'url(/assets/landing-noise.webp)',
          'radial-gradient(294.84% 141.42% at 100% 100%, #33F 0%, #8000FF 50%, #303450 100%)',
        ],
        'banner-examples-modal-gray': [
          'url(/assets/landing-noise.webp)',
          'radial-gradient(75.69% 100% at 50% 0%, #474E6B 0%, #303450 100%)',
        ],
        'banner-examples-modal-purple': [
          'url(/assets/landing-noise.webp)',
          'radial-gradient(152.26% 141.42% at 100% 100%, #33F 0%, #8000FF 50%, #303450 100%)',
        ],
        'banner-examples-sider-gray': [
          'url(/assets/landing-noise.webp)',
          'radial-gradient(75.69% 100% at 50% 0%, #474E6B 0%, #303450 100%)',
        ],
        'banner-examples-sider-purple': [
          'url(/assets/landing-noise.webp)',
          'radial-gradient(191.28% 141.42% at 100% 100%, #33F 0%, #8000FF 50%, #303450 100%)',
        ],
        'banner-examples-text':
          'linear-gradient(180deg, #FFF 0%, rgba(255, 255, 255, 0.50) 100%)',
        'announcement-bar-text':
          'linear-gradient(90deg, rgba(31, 63, 72, 0.00) 0%, #1F3F48 10%, #1F3F48 90%, rgba(31, 63, 72, 0.00) 100%)',
        'sidebar-item-shiny-dark':
          'radial-gradient(457.67% 141.42% at 0% 0%, rgba(71, 235, 235, 0.10) 0%, rgba(71, 235, 235, 0.20) 100%)',
        'sidebar-item-shiny-light':
          'radial-gradient(457.67% 141.42% at 0% 0%, rgba(0, 128, 255, 0.20) 0%, rgba(0, 128, 255, 0.10) 100%)',
        'landing-hero-item-name-gradient':
          'linear-gradient(180deg, #FFFFFF 0%, rgba(255, 255, 255, 0.5) 100%)',
        'landing-hero-item-background':
          'radial-gradient(104% 104% at 0% 0%, rgba(249, 210, 54, 0.10) 0%, rgba(249, 210, 54, 0.00) 100%)',
        'landing-hero-beam-bottom':
          'linear-gradient(90deg, rgba(255,255,255,0), #47EBEB, rgba(255,255,255,0))',
        'landing-hero-beam-bottom-light':
          'linear-gradient(90deg, rgba(255,255,255,0), #0080FF, rgba(255,255,255,0))',
        'landing-hero-github-stars-gradient':
          'radial-gradient(260.41% 41.87% at 8.38% 50%, rgba(255, 153, 51, 0.10) 0%, rgba(255, 153, 51, 0.00) 100%)',
        'landing-hero-github-stars-text-light':
          'linear-gradient(180deg, #14141F 0%, #6C7793 100%)',
        'landing-hero-github-stars-text-dark':
          'linear-gradient(180deg, #FFF 0%, rgba(255, 255, 255, 0.50) 100%)',
        'landing-hero-xray-dot-center-bg':
          'radial-gradient(100% 100% at 0% 0%, #74FFFF 0%, #0FBDBD 50%, #0FBDBD 100%)',
        'landing-hero-xray-dot-center-bg-light':
          'radial-gradient(100% 100% at 0% 0%, #74FFFF 0%, #0080FF 50%, #0080FF 100%)',
        'landing-wizard-option-bg-dark': [
          'radial-gradient(50% 50% at 50% 50%, rgba(71, 235, 235, 0.15) 0%, rgba(71, 235, 235, 0) 100%)',
          'url(/assets/landing-noise.webp)',
        ],
        'landing-wizard-option-bg-light': [
          'radial-gradient(50% 50% at 50% 50%, rgba(0, 128, 255, 0.15) 0%, rgba(0, 128, 255, 0) 100%)',
        ],
        'landing-hero-beam-bg':
          'conic-gradient(from 280deg, currentColor 6%, transparent 14%, transparent 100%)',
        'footer-landing-dark-bg': [
          'linear-gradient(180deg, rgba(29, 30, 48, 0.5) 0%, #14141F 100%)',
        ],
        'footer-blog-dark-bg': [
          'linear-gradient(180deg, rgba(52, 58, 70, 0) 0%, rgba(52, 58, 70, 0.5) 100%)',
        ],
        'footer-blog-light-bg': [
          'linear-gradient(180deg, #F6F7F9 0%, rgba(246, 247, 249, 0) 100%)',
        ],
        'landing-wizard-side-bg': [
          'radial-gradient(50% 50% at 50% 50%, rgba(48, 52, 80, 0.75) 0%, rgba(48, 52, 80, 0.38) 50%, rgba(48, 52, 80, 0.00) 100%)',
        ],
        'landing-wizard-side-bg-light': [
          'radial-gradient(50% 50% at 50% 50%, rgba(48, 52, 80, 0.75) 0%, rgba(48, 52, 80, 0.1) 50%, rgba(48, 52, 80, 0.00) 100%)',
        ],
        'landing-copy-command-hover-bg-dark': [
          'radial-gradient(transparent 30%, rgba(71, 235, 235, 0.25))',
        ],
        'landing-copy-command-hover-bg-light': [
          'radial-gradient(transparent 30%, rgba(0, 128, 255, 0.1))',
        ],
        'new-badge-border-dark': `conic-gradient(
                    from 45deg at 50% 50%,
                    #194b3a,
                    rgb(38 217 127 / 40%),
                    #194b3a,
                    #194b3a,
                    #194b3a,
                    #26d97f,
                    #194b3a,
                    #194b3a,
                    #194b3a
                )`,
        'new-badge-border-light': `conic-gradient(
                    from 45deg at 50% 50%,
                    #b7dbff,
                    rgb(0 128 255 / 50%),
                    #b7dbff,
                    #b7dbff,
                    #b7dbff,
                    #0080ff,
                    #b7dbff,
                    #b7dbff,
                    #b7dbff
                )`,
      },
      backgroundPosition: {
        'landing-wizard-option-right': 'top -350px right -350px, center',
        'landing-wizard-option-left': 'bottom -350px left -350px, center',
        'landing-wizard-side-left-position': 'center left',
        'landing-wizard-side-right-position': 'center right',
      },
      backgroundSize: {
        'landing-wizard-option': '600px 600px, auto',
        'landing-wizard-side-size': '512px 512px',
        'landing-github-stars-border-bg-size': '72px 72px',
      },
      animation: {
        'spin-slow': 'spin 3s linear infinite',
        beat: '2s ease-in-out 1.5s infinite normal forwards running landing-hero-beat',
        'walkthrough-bounce': 'walkthrough-bounce 3s ease-in-out infinite',
        'announcement-bar-glow':
          'announcement-bar-glow 1s ease-in-out infinite alternate',
        'landing-hero-grid-beats':
          'landing-hero-grid-beats 2s ease-in-out infinite',
        'hero-logo-pulse': 'hero-logo-pulse 4s ease-in-out infinite',
        'mini-bounce': 'mini-bounce 3s ease-in-out infinite',
        'dot-waves': 'dot-waves 2.5s linear infinite',
        'landing-packages-left': 'landing-packages-left 65s linear infinite',
        'landing-packages-right': 'landing-packages-right 60s linear infinite',
        'code-scroll': 'code-scroll 25s linear infinite',
        'beam-spin': 'beam-spin 3s linear 1 forwards',
        'landing-hero-beam-line':
          'landing-hero-beam-line 7.5s ease-in-out infinite',
        'landing-hero-beam-glow':
          'landing-hero-beam-glow 7.5s ease-in-out infinite',
        'landing-hero-beam-bottom':
          'landing-hero-beam-bottom 7.5s ease-in-out infinite',
        'showcase-bottom-fade-reveal':
          'showcase-bottom-fade-reveal 0.3s ease-in-out forwards',
        'opacity-reveal': 'opacity-reveal 1s ease-in-out forwards',
        'showcase-reveal': 'showcase-reveal 0.3s ease-in-out forwards',
        'github-stars-border':
          'github-stars-border 10s linear infinite alternate',
        'github-stars-glow': 'github-stars-glow 10s linear infinite alternate',
        'new-badge-border': 'new-badge-border 4s linear infinite',
        reveal: 'reveal 0.3s ease-in-out forwards',
        'progress-fill': 'progressFill 1s linear 1 forwards',
      },
      keyframes: {
        progressFill: {
          '0%': {
            width: '0%',
          },
          '100%': {
            width: '100%',
          },
        },
        reveal: {
          '0%': {
            opacity: 0,
          },
          '100%': {
            opacity: 1,
          },
        },
        'code-scroll': {
          '0%': {
            transform: 'translateY(0)',
          },
          '100%': {
            transform: 'translateY(-448px)',
          },
        },
        'walkthrough-bounce': {
          '0%': {
            transform: 'translateY(4%)',
          },
          '50%': {
            transform: 'none',
          },
          '100%': {
            transform: 'translateY(4%)',
          },
        },
        'landing-hero-beat': {
          '0%': {
            opacity: 0.4,
          },
          '5%': {
            opacity: 0.4,
          },
          '50%': {
            opacity: 1,
          },
          '95%': {
            opacity: 0.4,
          },
          '100%': {
            opacity: 0.4,
          },
        },
        'announcement-bar-glow': {
          '0%': {
            opacity: 1,
          },
          '100%': {
            opacity: 0,
          },
        },
        'landing-hero-grid-beats': {
          '0%': {
            fillOpacity: 0,
          },
          '50%': {
            fillOpacity: 0.8,
          },
          '100%': {
            fillOpacity: 0,
          },
        },
        'hero-logo-pulse': {
          '0%': {
            fillOpacity: 1,
          },
          '50%': {
            fillOpacity: 0.75,
          },
          '100%': {
            fillOpacity: 1,
          },
        },
        'mini-bounce': {
          '0%': {
            transform: 'translateY(0%)',
          },
          '50%': {
            transform: 'translateY(-8%)',
          },
          '100%': {
            transform: 'translateY(0%)',
          },
        },
        'dot-waves': {
          '0%': {
            transform: 'scale(0)',
            opacity: 1,
          },
          '75%': {
            transform: 'scale(2)',
            opacity: 0,
          },
          '100%': {
            transform: 'scale(0)',
            opacity: 0,
          },
        },
        'landing-packages-left': {
          '0%': { transform: 'translateX(0)' },
          '100%': { transform: 'translateX(-50%)' },
        },
        'landing-packages-right': {
          '0%': { transform: 'translateX(0)' },
          '100%': { transform: 'translateX(50%)' },
        },
        'beam-spin': {
          '0%': {
            transform:
              'translateX(-45px) translateY(-190px) translateZ(0) rotate(0deg)',
          },
          '100%': {
            transform:
              'translateX(-45px) translateY(-190px) translateZ(0) rotate(-360deg)',
          },
        },
        'landing-hero-beam-line': {
          '0%': {
            opacity: 1,
          },
          '50%': {
            opacity: 0.5,
          },
          '100%': {
            opacity: 1,
          },
        },
        'landing-hero-beam-glow': {
          '0%': {
            opacity: 1,
          },
          '50%': {
            opacity: 0.25,
          },
          '100%': {
            opacity: 1,
          },
        },
        'landing-hero-beam-bottom': {
          '0%': {
            opacity: 1,
            transform: 'scaleX(1)',
          },
          '50%': {
            opacity: 0.5,
            transform: 'scaleX(0.5)',
          },
          '100%': {
            opacity: 1,
            transform: 'scaleX(1)',
          },
        },
        'showcase-bottom-fade-reveal': {
          '0%': {
            opacity: 0,
            transform: 'translateY(96px)',
          },
          '100%': {
            opacity: 1,
            transform: 'translateY(0)',
          },
        },
        'opacity-reveal': {
          '0%': {
            opacity: 0,
          },
          '100%': {
            opacity: 1,
          },
        },
        'showcase-reveal': {
          '0%': {
            opacity: 0,
          },
          '100%': {
            transform: 'translateY(0)',
            opacity: 1,
          },
        },
        'github-stars-border': {
          '0%': {
            transform: 'translateX(-72px)',
          },
          '100%': {
            transform: 'translateX(216px)',
          },
        },
        'github-stars-glow': {
          '0%': {
            transform: 'translateX(0) scale(0.5)',
          },
          '50%': {
            transform: 'translateX(78px) scale(1)',
          },
          '100%': {
            transform: 'translateX(156px) scale(0.5)',
          },
        },
        'new-badge-border': {
          '0%': { transform: 'rotate(0deg)' },
          '100%': { transform: 'rotate(360deg)' },
        },
      },
    },
    screens: {
      ...defaultTheme.screens,
      'content-sm': '480px',
      'widening-start': '544px',
      'content-md': '656px',
      'content-xm': '768px',
      'content-xl': '792px',
      'content-xl-safe': '1376px',
      'content-2xl': '864px',
      'content-4xl': '1536px',
      'header-sm': '640px',
      'header-md': '1200px',
      'landing-content': '944px',
      'landing-xs': '360px',
      'landing-sm': '720px',
      'landing-md': '960px',
      'landing-lg': '1296px',
      'landing-xl': '1440px',
      'blog-sm': '592px',
      'blog-md': '720px',
      'blog-lg': '960px',
      'blog-max': '1296px',
      'blog-xl': '1440px',
      'blog-2xl': '1600px',
      walkthrough: '976px',
      'doc-form-lg': '824px',
      'doc-form-md': '688px',
    },
  },
  plugins: [
    require('@tailwindcss/typography'),
    plugin(({ addVariant }) => {
      addVariant('light', `[data-theme="light"] &`);
    }),
  ],
};
