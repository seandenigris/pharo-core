instance creation
browserForList: aList

	browser:=  MessageBrowser new.
	browser
		textConverter: DiffMethodReferenceConverter new;
		topologicSort: false;
		sortingBlock: [:a :b | a timeStamp > b timeStamp ];
		displayBlock: [:changeRecord | {	changeRecord stamp firstWord. 
											changeRecord timeStamp asString.
											changeRecord class name.
											changeRecord methodSelector.
											'{',changeRecord  category,'}'} ].
	browser toolbarModel setDropListItems: {	DropListItem named: 'Diff' do: [ browser textConverter: (DiffChangeRecordConverter methodReference: browser textConverter method referencesList: aList) ].
									DropListItem named: 'Source' do: [ browser textConverter: (SourceMethodConverter method: browser textConverter method) ]}.
									
	browser toolbarModel versionModel 
		label: 'Revert';
		action: [ self revert: browser selectedItem ].
										
	^ browser.