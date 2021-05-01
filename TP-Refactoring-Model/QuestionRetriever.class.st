Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#instVars : [
		'option',
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
QuestionRetriever class >> new: cuoora [
	^ self new cuoora: cuoora
]

{ #category : #'instance creation' }
QuestionRetriever class >> new: cuoora and: aSymbol [
	^ self new cuoora: cuoora; option:aSymbol; yourself.
]

{ #category : #accesing }
QuestionRetriever >> cuoora: aCuooraInstance [
	cuoora := aCuooraInstance 
]

{ #category : #initializing }
QuestionRetriever >> initialize [
	option := #social
]

{ #category : #accesing }
QuestionRetriever >> option: anOption [
	option := anOption
]

{ #category : #retrieving }
QuestionRetriever >> retrieveQuestions: aUser [
	| qRet |
	qRet := OrderedCollection new.
	option = #social
		ifTrue: [ qRet := aUser social ].
	option = #topics
		ifTrue: [ qRet := aUser topicsRetriver  ].
	option = #news
		ifTrue: [ qRet := cuoora news ].
	option = #popularToday
		ifTrue: [ qRet := cuoora popularToday ].
	^ qRet reject: [ :q | q user = aUser ]
]
