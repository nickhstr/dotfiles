// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
    config: {
      // choose either `'stable'` for receiving highly polished,
      // or `'canary'` for less polished but more frequent updates
      updateChannel: 'stable',

      // default font size in pixels for all tabs
      fontSize: 12,

      // font family with optional fallbacks
      fontFamily: '"MesloLGM Nerd Font", Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',

      // default font weight: 'normal' or 'bold'
      fontWeight: 'normal',

      // font weight for bold characters: 'normal' or 'bold'
      fontWeightBold: 'bold',

      // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
      cursorColor: '#fcbf00',

      // terminal text color under BLOCK cursor
      cursorAccentColor: '#000',

      // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
      cursorShape: 'BLOCK',

      // set to `true` (without backticks and without quotes) for blinking cursor
      cursorBlink: true,

      // color of the text
      foregroundColor: '#fff',

      // terminal background color
      // opacity is only supported on macOS
      // backgroundColor: 'rgb(33, 33, 33)',

      // terminal selection color
      selectionColor: 'rgba(252,191,0,0.5)',

      // border color (window, tabs)
      borderColor: '#333',

      // custom CSS to embed in the main window
      css: '',

      // custom CSS to embed in the terminal window
      termCSS: '',

      // if you're using a Linux setup which show native menus, set to false
      // default: `true` on Linux, `true` on Windows, ignored on macOS
      showHamburgerMenu: '',

      // set to `false` (without backticks and without quotes) if you want to hide the minimize, maximize and close buttons
      // additionally, set to `'left'` if you want them on the left, like in Ubuntu
      // default: `true` (without backticks and without quotes) on Windows and Linux, ignored on macOS
      showWindowControls: '',

      // custom padding (CSS format, i.e.: `top right bottom left`)
      // padding: '12px 14px',

      // Setting colors after any plugins overrides their settings
      colors: {
        black: '#000000',
        red: '#C51E14',
        green: '#1DC121',
        yellow: '#C7C329',
        blue: '#0A2FC4',
        magenta: '#C839C5',
        cyan: '#20C5C6',
        white: '#C7C7C7',
        lightBlack: '#686868',
        lightRed: '#FD6F6B',
        lightGreen: '#67F86F',
        lightYellow: '#FFFA72',
        lightBlue: '#6A76FB',
        lightMagenta: '#FD7CFC',
        lightCyan: '#68FDFE',
        lightWhite: '#FFFFFF',
      },

      MaterialTheme: {
        // Set the theme variant,
        // OPTIONS: 'Darker', 'Palenight', ''
        theme: 'Darker',

        // [Optional] Set the rgba() app background opacity, useful when enableVibrance is true
        // OPTIONS: From 0.1 to 1
        backgroundOpacity: '1',

        // [Optional] Set the accent color for the current active tab
        accentColor: '#64FFDA',

        // [Optional] Mac Only. Need restart. Enable the vibrance and blurred background
        // OPTIONS: 'dark', 'ultra-dark', 'bright'
        // NOTE: The backgroundOpacity should be between 0.1 and 0.9 to see the effect.
        vibrancy: 'dark'
      },

      hyperline: {
        plugins: [
          'cpu',
          'memory',
          'network',
        ],
      },


      // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
      // if left empty, your system's login shell will be used by default
      //
      // Windows
      // - Make sure to use a full path if the binary name doesn't work
      // - Remove `--login` in shellArgs
      //
      // Bash on Windows
      // - Example: `C:\\Windows\\System32\\bash.exe`
      //
      // PowerShell on Windows
      // - Example: `C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`
      shell: '',

      // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
      // by default `['--login']` will be used
      shellArgs: ['--login'],

      // for environment variables
      env: {},

      // set to `false` for no bell
      bell: 'false',

      // if `true` (without backticks and without quotes), selected text will automatically be copied to the clipboard
      copyOnSelect: false,

      // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
      defaultSSHApp: true,

      // if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
      // selection is present (`true` by default on Windows and disables the context menu feature)
      // quickEdit: true,

      // URL to custom bell
      // bellSoundURL: 'http://example.com/bell.mp3',

      // for advanced config flags please refer to https://hyper.is/#cfg
    },

    // a list of plugins to fetch and install from npm
    // format: [@org/]project[#version]
    // examples:
    //   `hyperpower`
    //   `@company/project`
    //   `project#1.0.1`

    plugins: [
      // 'verminal',
      // 'hyperline'
      // 'hyper-statusline',
      // 'hyper-atom-dark-transparent',
      'hyper-material-theme',
      'hypercwd',
      'hyper-search',
    ],

    // in development, you can create a directory under
    // `~/.hyper_plugins/local/` and include it here
    // to load it and avoid it being `npm install`ed
    localPlugins: [],

    keymaps: {
      // Example
      // 'window:devtools': 'cmd+alt+o',
    },
  };