items creation
buildBrowseClassVarsButton

	^ ( PluggableThreePhaseButtonMorph on: self )
					actionSelector: #browseClassVars;
					stateSelector: #isAClassSelected ;
					onImage: (self iconClass iconNamed: #classVarsSelectedIcon);
					offImage: (self iconClass iconNamed: #classVarsUnselectedIcon);
					pressedImage: (self iconClass iconNamed: #classVarsPressedIcon);	
					extent: 24@24;
					helpText: 'Show class variables';
					yourself.