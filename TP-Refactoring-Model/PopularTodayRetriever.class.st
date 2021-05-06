Class {
	#name : #PopularTodayRetriever,
	#superclass : #QuestionRetriever,
	#instVars : [
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
PopularTodayRetriever class >> new: cuoora [
	^ self new initializeWith: cuoora
]

{ #category : #initialization }
PopularTodayRetriever >> initializeWith: aCuooraInstance [
	cuoora := aCuooraInstance
]

{ #category : #retrieving }
PopularTodayRetriever >> retrieveQuestions: aUser [
		^ self
		rejectWithUser: aUser
		aQuestions: (self lastHundred: (self orderedByPositiveVotes: cuoora popularToday ))
]
