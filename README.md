elm-browser-detect
==================

This is a simple Elm 0.18 program that illustrates how one might detect the browser.

I know you're not meant to do browser detection in favour of feature detection, but
I thought I might have needed it because Firefox seems to implement sliders differently from
Chrome and Safari.

Actually, it turns out that it makes absolutely no difference to the performance of
the slider.  It seems quite happy with both "on change" and "on input" present.

In any case, it illustrated a very simple use of programWithFlags.
