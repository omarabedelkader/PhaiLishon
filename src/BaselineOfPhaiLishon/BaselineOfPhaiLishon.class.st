Class {
	#name : 'BaselineOfPhaiLishon',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfPhaiLishon',
	#package : 'BaselineOfPhaiLishon'
}

{ #category : 'baselines' }
BaselineOfPhaiLishon >> baseline: spec [
	<baseline>
	
	spec for: #common do: [ 
		spec package: 'PhaiLishon-Model'.
		spec package: 'PhaiLishon-API' with: [ 
			spec requires: 'PhaiLishon-Model' ].
		].
	

]
