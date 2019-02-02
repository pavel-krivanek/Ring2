Class {
	#name : #BaselineOfRing2,
	#superclass : #BaselineOf,
	#category : 'BaselineOfRing2'
}

{ #category : #baseline }
BaselineOfRing2 >> baseline: spec [
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
			package: 'Calypso-Ring2';
			package: 'Ring2-Hermes';
			package: 'Ring2-RuntimeSupport'.
			
		spec for: #'pharo6.x' do: [
			spec package: 'Ring2-TraitsV1Support'.	
			spec group: 'traitsSupport' with: #('Ring2-TraitsV1Support').].
		spec for: #'pharo7.x' do: [
			spec package: 'Ring2-TraitsV2Support'.
			spec group: 'traitsSupport' with: #('Ring2-TraitsV2Support').].
		spec for: #'pharo8.x' do: [
			spec package: 'Ring2-TraitsV2Support'.
			spec group: 'traitsSupport' with: #('Ring2-TraitsV2Support').].

		spec group: 'core' with: #('Ring2-Core' 'Ring2-Monticello' 'Ring2-ChunkImporter' 'traitsSupport').
		spec group: 'tests' with: #('Ring2-Tests-Core' 'Ring2-Tests-Monticello' 'Ring2-Tests-ChunkImporter').
		spec group: 'default' with: #('core' 'tests').
		spec group: 'runtimeSupport' with: #('default' 'Ring2-RuntimeSupport').
		spec group: 'bootstrap' with: #('runtimeSupport' 'Ring2-Bootstrap' 'Ring2-Hermes').
		spec group: 'calypso' with: #('runtimeSupport' 'Calypso-Ring2').
		spec group: 'all' with: #('bootstrap' 'Ring2-Bootstrap' 'Calypso-Ring2').
	].		

]
