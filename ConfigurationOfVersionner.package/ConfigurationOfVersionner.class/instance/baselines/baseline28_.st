baseline28: spec
	<version: '2.8-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/PharoExtras/Versionner/main/'.
		spec 
			package: 'Versionner-Core-Model';
			package: 'Versionner-Core-Commands' with: [
				spec requires: #('Versionner-Core-Model' ). ];
			package: 'Versionner-Core-Announcements' with: [
				spec requires: #('Versionner-Core-Model' ). ];
			package: 'Versionner-Core-DependenciesModel' with: [
				spec requires: #('Versionner-Core-Model' 'Versionner-Core-Announcements' ). ];
			package: 'Versionner-Spec-Browser' with: [
				spec requires: #('Versionner-Core-DependenciesModel' 'Versionner-Core-Commands' 'Versionner-Core-Announcements' ). ];
			package: 'Versionner-Tests-Resources';
			package: 'Versionner-Tests-Core-Model' with: [
				spec requires: #('Versionner-Core-Model' ). ];
			package: 'Versionner-Tests-Core-Commands' with: [
				spec requires: #('Versionner-Core-Model' 'Versionner-Core-Commands' ). ];
			package: 'Versionner-Tests-Core-DependenciesModel' with: [
				spec requires: #('Versionner-Core-DependenciesModel' ). ];
			package: 'Versionner-Commit'.
		spec group: 'Core' with: #('Versionner-Core-Model' 'Versionner-Core-DependenciesModel' 'Versionner-Core-Commands' 'Versionner-Core-Announcements' ). ].
