version131: spec
	<version: '1.31' imports: #('1.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: '1.30 : Fixing minor issue: window should be updated when the user commit a project.
1.31 : fixing bug: Update list of configuration and versions after commit,update,load, new.'.
		spec author: 'JuanPabloSandovalAlcocer'.
		spec timestamp: '6/30/2012 21:23'.
		spec 
			project: 'Metacello ToolBox' with: #'stable';
			project: 'Glamour for Versionner' with: #'stable';
			project: 'Spec for Versionner' with: #'stable'.
		spec 
			package: 'Versionner-Core-Model' with: 'Versionner-Core-Model-JuanPabloSandovalAlcocer.13';
			package: 'Versionner-Core-Commands' with: 'Versionner-Core-Commands-JuanPabloSandovalAlcocer.15';
			package: 'Versionner-Core-Announcements' with: 'Versionner-Core-Announcements-JuanPabloSandovalAlcocer.4';
			package: 'Versionner-Tests-Core-Model' with: 'Versionner-Tests-Core-Model-JuanPabloSandovalAlcocer.5';
			package: 'Versionner-Tests-Core-Commands' with: 'Versionner-Tests-Core-Commands-JuanPabloSandovalAlcocer.2';
			package: 'Versionner-Help' with: 'Versionner-Help-JuanPabloSandovalAlcocer.3';
			package: 'Versionner-Cache' with: 'Versionner-Cache-JuanPabloSandovalAlcocer.13';
			package: 'Versionner-Spec-Browser' with: 'Versionner-Spec-Browser-JuanPabloSandovalAlcocer.11';
			package: 'Versionner-GLM-Browser' with: 'Versionner-GLM-Browser-JuanPabloSandovalAlcocer.18';
			package: 'Versionner-Tests-Resources' with: 'Versionner-Tests-Resources-JuanPabloSandovalAlcocer.2'. ].
