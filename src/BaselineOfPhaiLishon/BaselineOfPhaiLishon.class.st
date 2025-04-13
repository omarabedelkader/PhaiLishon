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
		spec package: 'HeuristicCompletion-Model'.
		spec package: 'HeuristicCompletion-Morphic' with: [ 
			spec requires: 'HeuristicCompletion-Model' ].
		spec package: 'HeuristicCompletion-Tests' with: [ 
			spec requires: 'HeuristicCompletion-Model' ].
		spec package: 'HeuristicCompletion-Benchmarks' with:[
			spec requires: 'HeuristicCompletion-Model']
		].
		spec package: 'HeuristicCompletion-Benchmarks-Tests' with: [ 
			spec requires: 'HeuristicCompletion-Benchmarks' 
		].
	

]
