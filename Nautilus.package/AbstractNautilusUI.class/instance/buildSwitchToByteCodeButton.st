items creation
buildSwitchToByteCodeButton

	^ ( PluggableThreePhaseButtonMorph on: self )
					actionSelector: # switchToByteCodeButton;
					stateSelector: #showByteCode ;
					onImage: (self iconClass iconNamed: #byteCodeSelectedIcon);
					offImage: (self iconClass iconNamed: #byteCodeUnselectedIcon);
					pressedImage: (self iconClass iconNamed: #byteCodePressedIcon);	
					extent: 24@24;
					helpText: 'Show byteCode';
					yourself.