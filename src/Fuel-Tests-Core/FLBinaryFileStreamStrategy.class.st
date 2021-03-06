"
Specific to BinaryFileStream
"
Class {
	#name : #FLBinaryFileStreamStrategy,
	#superclass : #FLFileStreamStrategy,
	#category : #'Fuel-Tests-Core-StreamStrategies'
}

{ #category : #reading }
FLBinaryFileStreamStrategy >> readStreamDo: aValuable [
	"Evaluates the argument with a read stream. Answers the result."
	
	^ FLPlatform current
		fileNamed: self fileName
		readStreamDo: [ :aStream |
			aValuable value: aStream binary ]
]

{ #category : #writing }
FLBinaryFileStreamStrategy >> writeStreamDo: aValuable [
	"Evaluates the argument with a write stream. Answers the result."

	^ FLPlatform current
		fileNamed: self fileName
		writeStreamDo: [ :aStream | 
			aValuable value: aStream binary ]
]
