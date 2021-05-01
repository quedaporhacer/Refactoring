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
	| qRet temp popularTCol averageVotes |
	qRet := OrderedCollection new.
	option = #social
		ifTrue: [ qRet := ((aUser following
				flatCollect: [ :follow | follow questions ])
				asSortedCollection: [ :a :c | a positiveVotes size > c positiveVotes size ])
				last:
					(100
						min:
							((aUser following flatCollect: [ :follow | follow questions ])
								asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ])
								size) ].
	option = #topics
		ifTrue: [ qRet := ((aUser topics flatCollect: [ :follow | follow questions ])
				asSortedCollection: [ :a :c | a positiveVotes size > c positiveVotes size ])
				last:
					(100
						min:
							((aUser topics flatCollect: [ :follow | follow questions ])
								asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ])
								size) ].
	option = #news
		ifTrue: [ qRet := ((cuoora questions
				select: [ :q | q timestamp asDate = Date today ])
				asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ])
				last:
					(100
						min:
							((cuoora questions select: [ :q | q timestamp asDate = Date today ])
								asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ])
								size) ].
							
							
							
	option = #popularToday
		ifTrue: [ 
			qRet := cuoora popularToday .
			].
		
	^ qRet reject: [ :q | q user = aUser ]
]
