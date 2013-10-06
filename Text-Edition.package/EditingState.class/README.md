I store the current state of an editing session. An instance of mine is shared by all TextEditor instances that are created during an editing session managed by a TextMorph (see below for more explanations about editing session). The state data are basically made of an undo/redo manager and of all data needed in order to manage text editing undo and redo (mainly all informations for the current and previous selection intervals).