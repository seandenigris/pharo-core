instance creation
buildBrowser
	| changeList |
	
	changeList := self buildChangeList.
	self browserForList: changeList.
	
	^ browser
		messages: changeList;
		title: 'Versions of ' , class name , '>>' , selector;
		openWithSpec