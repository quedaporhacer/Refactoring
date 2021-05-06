Class {
	#name : #Post,
	#superclass : #Object,
	#instVars : [
		'timestamp',
		'user',
		'votes',
		'description'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Post class >> new: aDescription user: aUser [ 
	^ self new
		initializeWithDescription: aDescription
			user: aUser;
		yourself
]

{ #category : #adding }
Post >> addVote: aVote [
	votes add: aVote
]

{ #category : #accessing }
Post >> description [
	^ description
]

{ #category : #initialization }
Post >> initializeWithDescription: aDescription user: aUser [
	votes := OrderedCollection new.
	timestamp := DateAndTime now.
	description := aDescription.
	user := aUser.
]

{ #category : #'as yet unclassified' }
Post >> negativeVotes [
	^votes	reject: [ :vote | vote isLike ].
]

{ #category : #'as yet unclassified' }
Post >> positiveVotes [
		^ votes select: [ :vote | vote isLike ]
]

{ #category : #accessing }
Post >> timestamp [
	^ timestamp
]

{ #category : #accessing }
Post >> user [
	^ user
]

{ #category : #accessing }
Post >> votes [
	^ votes
]
