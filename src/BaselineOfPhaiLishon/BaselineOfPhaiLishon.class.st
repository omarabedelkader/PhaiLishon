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
		spec package: 'PhaiLishon-Model' with: [ 
			spec requires: 'PhaiLishon-APIl' ].
		].
	

]
