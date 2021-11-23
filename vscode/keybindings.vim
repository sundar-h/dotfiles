// Place your key bindings in thiso file to override the defaults
[
    //     {
    //         "key": "cmd+]",
    //         "command": "-editor.action.indentLines",
    //         "when": "editorTextFocus && !editorReadonly"
    //     },
    //     {
    //         "key": "cmd+]",
    //         "command": "-markdown.extension.onIndentLines",
    //         "when": "editorTextFocus && !suggestWidgetVisible && editorLangId == 'markdown'"
    //     },
    //     {
    //         "key": "cmd+]",
    //         "command": "workbench.action.navigateForward"
    //     },
    //     {
    //         "key": "ctrl+shift+-",
    //         "command": "-workbench.action.navigateForward"
    //     },
    //     {
    //         "key": "cmd+[",
    //         "command": "-editor.action.outdentLines",
    //         "when": "editorTextFocus && !editorReadonly"
    //     },
    //     {
    //         "key": "cmd+[",
    //         "command": "-markdown.extension.onOutdentLines",
    //         "when": "editorTextFocus && !suggestWidgetVisible && editorLangId == 'markdown'"
    //     },
    //     {
    //         "key": "cmd+[",
    //         "command": "welcome.goBack",
    //         "when": "inWelcome && activeEditor == 'gettingStartedPage'"
    //     },
    //     {
    //         "key": "escape",
    //         "command": "-welcome.goBack",
    //         "when": "inWelcome && activeEditor == 'gettingStartedPage'"
    //     }
    {
        "key": "alt+space",
        "command": "whichkey.show",
        "when": "editorTextFocus"
    },
    //     ************  cmd+[, cmd+] go back, go forward ************
    {
        "key": "cmd+[",
        "command": "-editor.action.outdentLines",
        "when": "editorTextFocus && !editorReadonly"
    },
    {
        "key": "cmd+[",
        "command": "-markdown.extension.onOutdentLines",
        "when": "editorTextFocus && !suggestWidgetVisible && editorLangId == 'markdown'"
    },
    {
        "key": "cmd+]",
        "command": "-editor.action.indentLines",
        "when": "editorTextFocus && !editorReadonly"
    },
    {
        "key": "cmd+]",
        "command": "-markdown.extension.onIndentLines",
        "when": "editorTextFocus && !suggestWidgetVisible && editorLangId == 'markdown'"
    },
    {
        "key": "cmd+]",
        "command": "workbench.action.navigateForward"
    },
    {
        "key": "ctrl+shift+-",
        "command": "-workbench.action.navigateForward"
    },
    {
        "key": "cmd+[",
        "command": "workbench.action.navigateBack"
    },
    {
        "key": "ctrl+-",
        "command": "-workbench.action.navigateBack"
    },
    //     ************  END  ************
    // hover document
    // {
    //     "key": "cmd+k",
    //     "command": "editor.action.showHover",
    //     "when": "editorTextFocus"
    // }
    {
        "key": "cmd+k",
        "command": "editor.action.showDefinitionPreviewHover",
        "when": "editorTextFocus"
    },
    {
        "key": "ctrl+j",
        "command": "-editor.action.joinLines",
        "when": "editorTextFocus && !editorReadonly"
    },
    {
        "key": "ctrl+k",
        "command": "-deleteAllRight",
        "when": "textInputFocus && !editorReadonly"
    },
    {
        "key": "ctrl+n",
        "command": "-workbench.action.quickOpenSelectNext",
        "when": "inQuickOpen"
    },
    {
        "key": "ctrl+j",
        "command": "workbench.action.quickOpenSelectNext",
        "when": "inQuickOpen"
    },
    {
        "key": "ctrl+j",
        "command": "selectNextSuggestion",
        "when": "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus"
    },
    {
        "key": "ctrl+k",
        "command": "workbench.action.quickOpenSelectPrevious",
        "when": "inQuickOpen"
    },
    {
        "key": "ctrl+k",
        "command": "selectPrevSuggestion",
        "when": "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus"
    }
]