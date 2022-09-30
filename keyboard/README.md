## File Desciption

- `Q2_knob_ANSI_VIA_keymap_V1.0.2.json` is the product file
- `qmk-keychron-q2.json` is the custom setting that I have.

## FAQ

> What are the related Product Docs?

1. [The key combinations Table of Keychron Q2](https://www.keychron.com/blogs/news/q2-key-combinations)
2. [How To Use VIA To Program Your Keyboard](https://www.keychron.com/blogs/archived/how-to-use-via-to-program-your-keyboard)
   1. VIA download link: https://github.com/the-via/releases/releases

> Capslock toggle between Chinese and English doesn't work

Set NKRO to `off` via toggling by `FN + CAPSLOCK`. Refer to [this](https://www.reddit.com/r/Keychron/comments/tn7rmw/comment/i25a63c/?utm_source=share&utm_medium=web2x&context=3) for further detail.

# How can I set macro?

A macro is a series of keys pressed together to perform an action, now, you can program to just use one key to perform the same action, for example, holding Shift+Command+4 (screenshot on macOS) can be done with just one key. Here is how:

1. Go to MACROS on the top left corner of the Configure tab.

2. Search the keycodes that represent the key you want at https://docs.qmk.fm/#/keycodes_basic, then, copy and paste the Aliases on the page onto the VIA.

3. For example, enter {KC_LSFT,KC_LGUI,KC_4} in the Macro 0 box area, and press Save. The M0 key will become Shift+Command+4 (screenshot on macOS).

4. Select the KEYMAP section, click on the key that you want to replace, and the key will then flash slowly on VIA. Go to the MACRO section on the lower-left corner, click the M0 key, and it’s done.
