building
categoriesFrame
	^LayoutFrame new
		rightFraction: 0.25;
		topOffset: (UITheme current textFont height + 13);
		bottomOffset: self buttonHeight negated