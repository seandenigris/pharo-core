version1214: spec
	<version: '1.2.14' imports: #('0.8-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.2.14'.
		spec author: 'RonieSalgado'.
		spec timestamp: '17/9/2016 18:07'.
		spec 
			project: 'Athens' with: '3.9.3';
			project: 'UFFIOpenGL' with: '1.2'.
		spec 
			package: 'OSWindow-Core' with: 'OSWindow-Core-RonieSalgado.113';
			package: 'OSWindow-SDL2' with: 'OSWindow-SDL2-RonieSalgado.105';
			package: 'OSWindow-VM' with: 'OSWindow-VM-MerwanOuddane.4';
			package: 'NBXLib-Core' with: 'NBXLib-Core-jeanbaptistearnaud.10';
			package: 'OSWindow-X11' with: 'OSWindow-X11-IgorStasenko.5';
			package: 'OSWindow-TUIO' with: 'OSWindow-TUIO-MerwanOuddane.15';
			package: 'OSWindow-SDL2-Examples' with: 'OSWindow-SDL2-Examples-RonieSalgado.13';
			package: 'OSWindow-GLExample' with: 'OSWindow-GLExample-RonieSalgado.5';
			package: 'OSWindow-Tests' with: 'OSWindow-Tests-RonieSalgado.3'. ].
