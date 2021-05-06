Class {
	#name : #Topic,
	#superclass : #Object,
	#instVars : [
		'name',
		'description',
		'questions'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'intance creation' }
Topic class >> name: aName description: aDescription [
	^ self new initializeName: aName description: aDescription; yourself. 
]

{ #category : #accessing }
Topic >> addQuestion: aQuetion [
	questions add: aQuetion 
]

{ #category : #accessing }
Topic >> description [
	^ description
]

{ #category : #initialize }
Topic >> initializeName: aName description: aDescription [
	name := aName.
	description := aDescription.
	questions := OrderedCollection new
	
]

{ #category : #accessing }
Topic >> name [
	^name
]

{ #category : #accessing }
Topic >> questions [
	^ questions
]
