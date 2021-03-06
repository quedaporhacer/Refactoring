Class {
	#name : #User,
	#superclass : #Object,
	#instVars : [
		'questionRetriever',
		'questions',
		'answers',
		'username',
		'password',
		'topics',
		'following',
		'votes'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance-creation' }
User class >> username: aUsername password: aPassword questionRetriever: aQuestionRetriever [
	^ self new
		initializeWithUsername: aUsername
		password: aPassword
		questionRetriever: aQuestionRetriever yourself; yourself 
]

{ #category : #accessing }
User >> addAnswer: anAnswer [
	answers add: anAnswer 

]

{ #category : #accessing }
User >> addQuestion: aQuestion [
	questions add: aQuestion
]

{ #category : #accessing }
User >> addTopic: aTopic [
	topics add: aTopic 

]

{ #category : #accessing }
User >> addVote: aVote [
	votes add: aVote
]

{ #category : #accessing }
User >> answers [
	^ answers
]

{ #category : #accessing }
User >> follow: aUser [
	following add: aUser 
]

{ #category : #accessing }
User >> following [
	^ following
]

{ #category : #initialization }
User >> initializeWithUsername: aUsername password: aPassword questionRetriever: aQuestionRetriever [
	username := aUsername.
	password := aPassword.
	questionRetriever := aQuestionRetriever.
	questions := OrderedCollection new.
	answers := OrderedCollection new.
	topics := OrderedCollection new.
	following := OrderedCollection new.
	votes := OrderedCollection new
]

{ #category : #accessing }
User >> password [
	^ password
]

{ #category : #accessing }
User >> questionRetriever [
	^ questionRetriever
]

{ #category : #private }
User >> questionRetriever: aQuestionRetriever [
	questionRetriever := aQuestionRetriever.
]

{ #category : #accessing }
User >> questions [
	^ questions
]

{ #category : #accessing }
User >> questionsOfInterest [
	^ questionRetriever retrieveQuestions: self.
]

{ #category : #'as yet unclassified' }
User >> social [
	^(following flatCollect: [ :follow | follow questions ])
]

{ #category : #accessing }
User >> topics [
	^ topics
]

{ #category : #'as yet unclassified' }
User >> topicsRetriver [
	^ topics flatCollect: [ :topic | topic questions ]
]

{ #category : #accessing }
User >> username [
	^ username
]

{ #category : #accessing }
User >> votes [
	^ votes
]
