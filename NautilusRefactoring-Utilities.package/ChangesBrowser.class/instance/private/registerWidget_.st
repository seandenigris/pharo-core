registerWidget: anAnnouncement
	| widget |
	
	widget := anAnnouncement widget.
	widget announcer
		on: LabelClicked send: #labelClicked: to: self