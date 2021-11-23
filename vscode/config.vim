{
  // 查看VSCODE 插件 内存、CPU占用 eveloper: Open Process Explorer
  // vscode
  "json.maxItemsComputed": 10000,
  "vsintellicode.modify.editor.suggestSelection": "automaticallyOverrodeDefaultValue",
  // theme
  "oneDarkPro.editorTheme": "One Dark Pro Flat",
  "material-icon-theme.showWelcomeMessage": false,
  // editor
  "editor.semanticHighlighting.enabled": "configuredByTheme",
  "editor.codeLens": true,
  "editor.scrollbar.horizontal": "hidden",
  "editor.scrollbar.vertical": "hidden",
  // 补全总是有延时, 难受
  // "editor.hover.enabled": false,
  // "editor.hover.delay": 0,
  "editor.cursorBlinking": "solid",
  "editor.fontFamily": "JetBrainsMono Nerd Font, Hack, Menlo, Monaco, 'Courier New', monospace",
  "editor.wordBasedSuggestionsMode": "allDocuments",
  "editor.wordBasedSuggestions": true,
  "editor.quickSuggestions": {
    "other": true,
    "comments": true,
    "strings": true,
  },
  // "editor.hover.sticky": false,
  "editor.parameterHints.enabled": false,
  "editor.quickSuggestionsDelay": 0,
  "editor.suggest.snippetsPreventQuickSuggestions": false,
  "editor.inlineSuggest.enabled": true,
  "editor.suggestSelection": "first",
  "editor.linkedEditing": true,
  "editor.suggest.preview": true,
  "editor.suggest.showStatusBar": true,
  "editor.tabCompletion": "on",
  "editor.suggest.showDeprecated": false,
  "editor.suggest.insertMode": "replace",
  "editor.suggest.localityBonus": true,
  "editor.minimap.enabled": false,
  "editor.formatOnSave": true,
  "editor.suggest.showTypeParameters": true,
  "editor.snippetSuggestions": "bottom",
  // "editor.suggestSelection": "first",
  "editor.acceptSuggestionOnCommitCharacter": false,
  "editor.formatOnPaste": true,
  "editor.autoClosingBrackets": "languageDefined",
  "editor.autoClosingQuotes": "languageDefined",
  // 控制编辑器是否应在用户键入、粘贴、移动或缩进行时自动调整缩进。
  //  - none: 编辑器不会自动插入缩进。
  //  - keep: 编辑器将保留当前行的缩进。
  //  - brackets: 编辑器将保留当前行的缩进并遵循语言定义的括号。
  //  - advanced: 编辑器将保留当前行的缩进、使用语言定义的括号并调用语言定义的特定 onEnterRules。
  //  - full: 编辑器将保留当前行的缩进，使用语言定义的括号，调用由语言定义的特殊输入规则，并遵循由语言定义的缩进规则。
  "editor.autoIndent": "full",
  // 控制编辑器是否应自动包住所选内容。
  //  - languageDefined: 使用语言配置确定何时自动包住所选内容。
  //  - quotes: 使用引号而非括号来包住所选内容。
  //  - brackets: 使用括号而非引号来包住所选内容。
  //  - never
  "editor.autoSurround": "languageDefined",
  // 双击选中包含这类字符
  "editor.wordSeparators": "`~!@#$%^&*()=+[{]}\\|;:'\",.<>/?",
  // 光标移动效果
  "editor.cursorSmoothCaretAnimation": true,
  "editor.tokenColorCustomizations": {
    "[One Dark Pro]": {
      "textMateRules": [
        {
          "scope": [
            "support.class.component.open.jsx",
            "support.class.component.close.jsx",
            "entity.name.function.js"
          ],
          "settings": {
            "foreground": "#61afef"
          }
        },
        {
          "scope": [
            "variable.other.constant.object.js",
            "punctuation.section.embedded.begin.jsx",
            "punctuation.section.embedded.end.jsx"
          ],
          "settings": {
            "foreground": "#abb2bf"
          }
        },
        {
          "scope": [
            "punctuation.definition.tag.jsx"
          ],
          "settings": {
            "foreground": "#5c6370"
          }
        },
        {
          "scope": [
            "variable.other.readwrite.js",
            "variable.other.property.js",
            "variable.parameter",
            "variable.other.object.js"
          ],
          "settings": {
            "foreground": "#56b6c2"
          }
        },
        {
          "scope": [
            "entity.other.attribute-name.jsx"
          ],
          "settings": {
            "foreground": "#e5c07b"
          }
        },
        {
          "scope": [
            "keyword.operator.assignment.js",
            "keyword.operator.assignment.jsx",
            "string.unquoted.js",
            "keyword.operator.typeof.js",
            "meta.embedded.expression.js",
            "constant.other.object.key.js",
            "keyword.operator.logical.js"
          ],
          "settings": {
            "foreground": "#c678dd"
          }
        },
        {
          "scope": [
            "variable.other.constant.object.js"
          ],
          "settings": {
            "foreground": "#e06c75"
          }
        }
      ]
    }
  },
  "workbench.colorCustomizations": {
    "[Default Dark+]": {
      "statusBar.background": "#2E2E2E",
      "statusBar.foreground": "#8C8C8C",
      "statusBarItem.remoteBackground": "#2E2E2E",
      "statusBarItem.remoteForeground": "#8C8C8C",
      "activityBar.background": "#2E2E2E",
      "tab.inactiveBackground": "#2E2E2E"
    },
    "[One Dark Pro]": {
      "editor.background": "#1e2127",
      "terminal.foreground": "#abb2bf",
      "terminal.ansiBlack": "#1e2127",
      "terminal.ansiBlue": "#61afef",
      "terminal.ansiCyan": "#56b6c2",
      "terminal.ansiGreen": "#98C379",
      "terminal.ansiMagenta": "#c678dd",
      "terminal.ansiRed": "#e06c75",
      "terminal.ansiWhite": "#abb2bf",
      "terminal.ansiYellow": "#d19a66",
      "terminal.ansiBrightBlack": "#5c6370",
      "terminal.ansiBrightBlue": "#61afef",
      "terminal.ansiBrightCyan": "#56b6c2",
      "terminal.ansiBrightGreen": "#98c379",
      "terminal.ansiBrightMagenta": "#c678dd",
      "terminal.ansiBrightRed": "#e06c75",
      "terminal.ansiBrightWhite": "#ffffff",
      "terminal.ansiBrightYellow": "#d19a66"
    }
  },
  "workbench.settings.editor": "json",
  "workbench.settings.useSplitJSON": true,
  "workbench.list.automaticKeyboardNavigation": false,
  "workbench.iconTheme": "material-icon-theme",
  "workbench.startupEditor": "newUntitledFile",
  // terminal
  "terminal.integrated.automationShell.osx": "/bin/zsh",
  "terminal.external.osxExec": "iTerm.app",
  // 系统界面缩放大小
  "window.zoomLevel": 1,
  // sync 
  "sync.gist": "03ed2e1db590002729afbc6180fba4d6",
  // gitlens
  // "gitlens.hovers.currentLine.over": "line",
  // "gitlens.currentLine.enabled": false,
  // "gitlens.codeLens.enabled": false,
  // "git.autofetch": true,
  "files.exclude": {
    "**/.git": false,
    "**/.svn": false,
    "**/..DS_Store": false,
    "**/.classpath": true,
    "**/.project": true,
    "**/.settings": true,
    "**/.factorypath": true
  },
  "files.watcherExclude": {
    "**/.git/objects/**": true,
    "**/.git/subtree-cache/**": true,
    "**/node_modules/*/**": true,
    "**/target/debug/**": true,
    "**/target/release/**": true,
    "**/.hg/store/**": true
  },
  // leetcode
  "leetcode.defaultLanguage": "golang",
  "leetcode.hint.configWebviewMarkdown": false,
  "leetcode.hint.commentDescription": false,
  // bracket-pair-colorizer-2
  "bracket-pair-colorizer-2.forceUniqueOpeningColor": true,
  "bracket-pair-colorizer-2.forceIterationColorCycle": true,
  "bracket-pair-colorizer-2.colorMode": "Consecutive",
  "editor.matchBrackets": "never",
  "bracket-pair-colorizer-2.highlightActiveScope": true,
  "bracket-pair-colorizer-2.activeScopeCSS": [
    "borderStyle : solid",
    "borderWidth : 1px",
    "borderColor : {color}; opacity: 1",
  ],
  "bracket-pair-colorizer-2.showBracketsInGutter": true,
  "bracket-pair-colorizer-2.showHorizontalScopeLine": false,
  "bracket-pair-colorizer-2.showVerticalScopeLine": true,
  // code-runner
  "code-runner.executorMap": {
    "python": "$pythonPath $fileName",
    "java": "cd $dir && javac $fileName && java $fileNameWithoutExt",
    "c": "cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt"
  },
  // 前端配置 ~ javascript, css, html, vue, reactor, emmet
  /*************************** JavaScript ***************************/
  "javascript.suggest.completeFunctionCalls": true,
  "typescript.suggest.completeFunctionCalls": true,
  /*************************** Emmet ***************************/
  "emmet.showSuggestionsAsSnippets": true,
  /*************************** Golang ***************************/
  "go.toolsManagement.autoUpdate": true,
  "go.useCodeSnippetsOnFunctionSuggest": true,
  "go.autocompleteUnimportedPackages": true,
  "go.editorContextMenuCommands": {
    "removeTags": true,
    "fillStruct": true,
    "testFile": true,
    "testPackage": true,
    "generateTestForFile": true,
    "generateTestForPackage": true,
    "benchmarkAtCursor": true
  },
  "gopls": {
    // 非 go.mod 根目录 即WorkSpace中 正确加载go
    // error: gopls requires a module at the root of your workspace
    "experimentalWorkspaceModule": true
  },
  "go.lintTool": "golangci-lint",
  "go.formatTool": "goimports",
  "go.gotoSymbol.includeGoroot": true,
  "go.gotoSymbol.includeImports": true,
  // 作用是把本地项目的src也包含到gopath中，但是不污染全局gopath，
  "go.inferGopath": true,
  "go.installDependenciesWhenBuilding": true,
  // Code Lens 好功能， 函数上显示Run / Run Tests 等
  "go.enableCodeLens": {
    "references": true
  },
  "errorLens.onSave": true,
  // "errorLens.onSaveTimeout": 10000,
  /*************************** Rust ***************************/
  // "[rust]": {
  //   "editor.formatOnSave": false
  // },
  "rust-analyzer.updates.channel": "nightly",
  // rustup +nightly component add rust-analyzer-preview
  // "rust-analyzer.server.path": "~/.cargo/bin/rust-analyzer-preview",
  "rust-analyzer.inlayHints.enable": true,
  "rust-analyzer.inlayHints.parameterHints": true,
  "rust-analyzer.inlayHints.chainingHints": true,
  // 这个一定更要关闭，不然补全提示速度都太慢了
  // 类似 IntelliJ的 `Run external linter to analyze code on the fly
  "files.autoSave": "off",
  "rust-analyzer.checkOnSave.enable": false,
  /////////////////
  "rust-analyzer.checkOnSave.allTargets": false,
  // optional: don't activate parameterHints automatically
  "rust-analyzer.updates.askBeforeDownload": true,
  // "rust-analyzer.checkOnSave.command": "clippy",
  "editor.suggest.shareSuggestSelections": true,
  "rust-analyzer.assist.importPrefix": "crate",
  "rust-analyzer.cargo.allFeatures": true,
  "rust-analyzer.debug.openDebugPane": true,
  "rust-analyzer.diagnostics.enable": false,
  "rust-analyzer.hoverActions.references": true,
  "rust-analyzer.lens.methodReferences": true,
  // drawio
  "hediet.vscode-drawio.theme": "Kennedy",
  "hediet.vscode-drawio.local-storage": "eyIuZHJhd2lvLWNvbmZpZyI6IntcImxhbmd1YWdlXCI6XCJcIixcImN1c3RvbUZvbnRzXCI6W10sXCJsaWJyYXJpZXNcIjpcImdlbmVyYWxcIixcImN1c3RvbUxpYnJhcmllc1wiOltcIkwuc2NyYXRjaHBhZFwiXSxcInBsdWdpbnNcIjpbXSxcInJlY2VudENvbG9yc1wiOltdLFwiZm9ybWF0V2lkdGhcIjoyNDAsXCJjcmVhdGVUYXJnZXRcIjpmYWxzZSxcInBhZ2VGb3JtYXRcIjp7XCJ4XCI6MCxcInlcIjowLFwid2lkdGhcIjo4NTAsXCJoZWlnaHRcIjoxMTAwfSxcInNlYXJjaFwiOnRydWUsXCJzaG93U3RhcnRTY3JlZW5cIjp0cnVlLFwiZ3JpZENvbG9yXCI6XCIjZDBkMGQwXCIsXCJkYXJrR3JpZENvbG9yXCI6XCIjNmU2ZTZlXCIsXCJhdXRvc2F2ZVwiOnRydWUsXCJyZXNpemVJbWFnZXNcIjpudWxsLFwib3BlbkNvdW50ZXJcIjowLFwidmVyc2lvblwiOjE4LFwidW5pdFwiOjEsXCJpc1J1bGVyT25cIjpmYWxzZSxcInVpXCI6XCJcIn0ifQ==",
  // vim 
  "vim.leader": "<space>",
  "vim.easymotion": true,
  "vim.incsearch": true,
  "vim.useSystemClipboard": true,
  "vim.useCtrlKeys": true,
  "vim.hlsearch": true,
  "vim.handleKeys": {
    "<C-a>": false,
    "<C-f>": false
  },
  // which-key
  "whichkey.sortOrder": "alphabetically",
  "whichkey.bindings": [
    {
      "key": " ",
      "name": "Commands",
      "type": "command",
      "command": "workbench.action.showCommands"
    },
    {
      "key": "m",
      "name": "motion",
      "type": "bindings",
      "bindings": []
    },
    { // UI 界面等
      "key": "u",
      "name": "UI Toggles...",
      "type": "bindings",
      "bindings": [
        { // VSCode 活动栏: Extension 等
          "key": "t",
          "name": "Toggle tool/activity bar visibility",
          "type": "command",
          "command": "workbench.action.toggleActivityBarVisibility"
        },
        { // 左侧的侧边栏: Project等
          "key": "h",
          "name": "Toggle side bar visibility",
          "type": "command",
          "command": "workbench.action.toggleSidebarVisibility"
        },
        { // 面板: 底部的Terminal, Outputs 等
          "key": "j",
          "name": "Toggle panel visibility",
          "type": "command",
          "command": "workbench.action.togglePanel"
        },
        { // 全屏
          "key": "F",
          "name": "Toggle full screen",
          "type": "command",
          "command": "workbench.action.toggleFullScreen"
        },
        // {
        //   "key": "!",
        //   "name": "Show terminal",
        //   "type": "command",
        //   "command": "workbench.action.terminal.focus"
        //   "command": "workbench.action.terminal.toggleTerminal"
        // },
      ]
    }
  ],
  "vim.normalModeKeyBindingsNonRecursive": [
    // redo
    {
      "before": [
        "U"
      ],
      "after": [
        "<C-r>"
      ]
    },
    {
      // ************** . vim easymotion . ************** //
      "before": [
        "/"
      ],
      "after": [
        "<leader>",
        "<leader>",
        "/"
      ]
    },
    {
      "before": [
        "<leader>",
        "h"
      ],
      "after": [
        "<leader>",
        "<leader>",
        "h"
      ]
    },
    {
      "before": [
        "<leader>",
        "k"
      ],
      "after": [
        "<leader>",
        "<leader>",
        "k"
      ]
    },
    {
      "before": [
        "<leader>",
        "j"
      ],
      "after": [
        "<leader>",
        "<leader>",
        "j"
      ]
    },
    {
      "before": [
        "<leader>",
        "l"
      ],
      "after": [
        "<leader>",
        "<leader>",
        "l"
      ]
    },
    // ****** . vim easymotion .END  ****** //
    {
      "before": [
        "<space>"
      ],
      "commands": [
        "whichkey.show"
      ]
    },
    // {
    //   "before": [
    //     ","
    //   ],
    //   "commands": [
    //     "vspacecode.space",
    //     {
    //       "command": "whichkey.triggerKey",
    //       "args": "m"
    //     }
    //   ]
    // }
  ],
  "vim.visualModeKeyBindingsNonRecursive": [
    {
      "before": [
        "<space>"
      ],
      "commands": [
        "whichkey.show"
      ]
    },
    // {
    //   "before": [
    //     ","
    //   ],
    //   "commands": [
    //     "vspacecode.space",
    //     {
    //       "command": "whichkey.triggerKey",
    //       "args": "m"
    //     }
    //   ]
    // }
  ],
  "http.proxySupport": "off",
  "workbench.colorTheme": "One Dark Pro Flat",
}