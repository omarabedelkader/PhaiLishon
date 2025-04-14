Class {
	#name : 'OModelTest',
	#superclass : 'TestCase',
	#instVars : [
		'model'
	],
	#category : 'PhaiLishon-API-Tests',
	#package : 'PhaiLishon-API-Tests'
}

{ #category : 'running' }
OModelTest >> setUp [
   "Create a basic OCodeLlamaModel for testing"
   model := OCodeLlamaModel b7.  "Equivalent to OCodeLlamaModel new tag: '7b'"
]

{ #category : 'running' }
OModelTest >> testFullName [
   "fullName should combine #name and #tag with a colon"
   self assert: model fullName = 'codellama:7b'.
]

{ #category : 'running' }
OModelTest >> testName [
   "OCodeLlamaModel >> name should be 'codellama'"
   self assert: model name = 'codellama'.

]

{ #category : 'running' }
OModelTest >> testTag [
   "We picked the class-side constructor OCodeLlamaModel b7, so tag should be '7b'"
   self assert: model tag = '7b'.

]

{ #category : 'running' }
OModelTest >> testTagAssignment [
   "You can also change the tag afterwards"
   model tag: 'myCustomTag'.
   self assert: model fullName = 'codellama:myCustomTag'.
]
