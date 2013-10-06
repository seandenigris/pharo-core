items creation
buildBrowseInstVarsButton

	^ ( PluggableThreePhaseButtonMorph on: self )
					actionSelector: #browseInstVars;
					stateSelector: #isAClassSelected ;
					onImage: (self iconClass iconNamed: #instVarsSelectedIcon);
					offImage: (self iconClass iconNamed: #instVarsUnselectedIcon);
					pressedImage: (self iconClass iconNamed: #instVarsPressedIcon);	
					extent: 24@24;
					helpText: 'Show instance variables';
					yourself.