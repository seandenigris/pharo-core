testCaseSensitiveLessOrEqual

self assert: ('EEA' caseSensitiveLessOrEqual: 'fgh').
self deny: ('������������' caseSensitiveLessOrEqual: '�������'). 
self assert: ('������������' caseSensitiveLessOrEqual: '������������').
self assert: ('������' caseSensitiveLessOrEqual: '�����').
self assert: ('eea' caseSensitiveLessOrEqual: '���').