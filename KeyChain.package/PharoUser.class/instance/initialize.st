initialize
initialize
	"Initialization code for PharoUser"

	super initialize.

	avatar := self defaultAvatar.
	self updateGravatarFor: ''.
	keychain := KeyChain new.
	unlockedKeychain := UnlockedKeyChain new.