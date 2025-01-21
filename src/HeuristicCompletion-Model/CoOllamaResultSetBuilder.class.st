Class {
	#name : 'CoOllamaResultSetBuilder',
	#superclass : 'CoResultSetBuilder',
	#category : 'HeuristicCompletion-Model-SystemIntegration',
	#package : 'HeuristicCompletion-Model',
	#tag : 'SystemIntegration'
}

{ #category : 'instance creation' }
CoOllamaResultSetBuilder class >> initializeOnContext: aSystemCompletionContext [ 
    ^ self new
        initializeOnContext: aSystemCompletionContext;
        yourself
]

{ #category : 'API - building' }
CoOllamaResultSetBuilder >> buildCompletion [
    | textUpToCaret response suggestions completion api |

    "Grab the portion of text up to the caret. 
     (Adjust copyFrom:/to: as you wish.)
    "
    textUpToCaret := completionContext source
        copyFrom: 1
        to: completionContext position.

    "Instantiate OllamaAPI (optionally configure model/temperature/etc.)"
    api := OllamaAPI new.

    "Send query to Ollama server"
    response := api query: textUpToCaret.

    "Parse the returned JSON/dict/whatever shape Ollama gives. 
     Suppose the response is something like:
       { #content -> 'Your suggested completion...' }
     Adjust below logic to match your real JSON shape.
    "
    suggestions := OrderedCollection new.
    (response at: #content ifAbsent: [ '' ]) ifNotEmpty: [ :someText |
        suggestions add: someText ].

    "CoCompletion can hold many items. 
     Here we just store the single 'content' from Ollama. 
     You can adapt it to parse multiple suggestions if your API returns them.
    "
    completion := CoCompletionEngine new.
    completion items: suggestions.
    ^ completion
]

{ #category : 'API - building' }
CoOllamaResultSetBuilder >> initializeOnContext: aSystemCompletionContext [ 
    "Store the passed-in context so we can access source, position, etc."
    completionContext := aSystemCompletionContext
]
