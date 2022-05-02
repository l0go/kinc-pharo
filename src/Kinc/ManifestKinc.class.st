"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestKinc,
	#superclass : #PackageManifest,
	#category : #'Kinc-Manifest'
}

{ #category : #'code-critics' }
ManifestKinc class >> ruleReGuardClauseRuleV1FalsePositive [
	^ #(#(#(#RGPackageDefinition #(#Kinc)) #'2022-05-02T09:56:32.464988-04:00') )
]
