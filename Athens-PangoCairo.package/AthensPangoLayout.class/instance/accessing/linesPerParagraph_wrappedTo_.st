linesPerParagraph: aNumber  wrappedTo: aWidth
"
If height is negative, it will be the (negative of) maximum number of lines per paragraph. That is, the total number of lines shown may well be more than this value if the layout contains multiple paragraphs of text. The default value of -1 means that first line of each paragraph is ellipsized. This behvaior may be changed in the future to act per layout instead of per paragraph. File a bug against pango at http://bugzilla.gnome.org/ if your code relies on this behavior.
"

"Height setting only has effect if a positive width is set on layout and ellipsization mode of layout is not PANGO_ELLIPSIZE_NONE. "

	self ellipsizeHeight: aNumber rounded negated ; wrapWidth: aWidth rounded