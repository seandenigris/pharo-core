private
renameMethodAllItem: aBuilder

	^ (aBuilder item: #'Rename method (all)')
			keyText: 'r, m' if: Nautilus useOldStyleKeys not;
			keyText: 'r' if: Nautilus useOldStyleKeys;
			action: [ | scroll target |
				target := aBuilder model.
				scroll := target methodWidget vScrollValue.
				target refactor renameMethodFor: target selectedMethod.
				target methodWidget vScrollValue: scroll ].