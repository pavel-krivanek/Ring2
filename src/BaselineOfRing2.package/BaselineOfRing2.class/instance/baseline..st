baseline
baseline: spec
	<baseline>

	spec for: #common do: [
		spec 
			package: 'Ring2-Core';
			package: 'Ring2-Monticello';
			package: 'Ring2-ChunkImporter';
			package: 'Ring2-Bootstrap';
			package: 'Ring2-Tests-Core';
			package: 'Ring2-Tests-Monticello';
			package: 'Ring2-Tests-ChunkImporter';
			package: 'Calypso-Ring2'.

		spec group: 'core' with: #('Ring2-Core' 'Ring2-Monticello' 'Ring2-ChunkImporter').
		spec group: 'tests' with: #('Ring2-Tests-Core' 'Ring2-Tests-Monticello' 'Ring2-Tests-ChunkImporter').
		spec group: 'default' with: #('core' 'tests').
		spec group: 'bootstrap' with: #('default' 'Ring2-Bootstrap').
		spec group: 'calypso' with: #('default' 'Calypso-Ring2').
		spec group: 'all' with: #('bootstrap' 'calypso').
	].		
