"
I am used in order to get Kinc and all of its required dependencies in a way that only gets the required library for each OS.
I clone from the Main branch of the GitHub repository.
I am used at the Kinc setup step. 
Example:
```
GrabKinc new execute.
```
"
Class {
	#name : #GrabKinc,
	#superclass : #Object,
	#category : #Kinc
}

{ #category : #'as yet unclassified' }
GrabKinc >> execute [
	"Clone everything from git"
	| working |
	working := (FileSystem disk workingDirectory / 'vendor').
	"Clone Kinc"
	IceGitClone new
		location: (working / 'kinc');
		url: 'https://github.com/Kode/Kinc';
		execute.
	"Delete and clone Windows x64 Tools"
	(working / 'kinc' / 'Tools' / 'windows_x64') delete.
	OSPlatform current isWin64
		ifTrue: [
			IceGitClone new
				location: (working / 'kinc' / 'Tools' / 'windows_x64');
				url: 'https://github.com/Kode/KincTools_windows_x64';
				execute.
		].
	"Delete and clone MacOS Tools"
	(working / 'kinc' / 'Tools' / 'macos') delete.
	OSPlatform current isMacOS
		ifTrue: [
			IceGitClone new
				location: (working / 'kinc' / 'Tools' / 'macos');
				url: 'https://github.com/Kode/KincTools_macos';
				execute.
		].
	"Delete and clone Linux Tools"
	(working / 'kinc' / 'Tools' / 'linux_x64') delete.
	(working / 'kinc' / 'Tools' / 'linux_arm') delete.
	(working / 'kinc' / 'Tools' / 'linux_arm64') delete.
	OSPlatform current isLinux
		ifTrue: [
			"Delete and clone Linux x64 Tools"
			IceGitClone new
				location: (working / 'kinc' / 'Tools' / 'linux_x64');
				url: 'https://github.com/Kode/KincTools_linux_x64';
				execute.
			"Delete and clone Linux ARM Tools"
			IceGitClone new
				location: (working / 'kinc' / 'Tools' / 'linux_arm');
				url: 'https://github.com/Kode/KincTools_linux_arm';
				execute.
			"Delete and clone Linux ARM 64 Tools"
			IceGitClone new
				location: (working / 'kinc' / 'Tools' / 'linux_arm64');
				url: 'https://github.com/Kode/KincTools_linux_arm64';
				execute.
		].
	"Delete and clone FreeBSD x64 Tools"
	(working / 'kinc' / 'Tools' / 'freebsd_x64') delete.
	OSPlatform current isUnix64
		ifTrue: [
			IceGitClone new
				location: (working / 'kinc' / 'Tools' / 'freebsd_x64');
				url: 'https://github.com/Kode/KincTools_freebsd_x64';
				execute.
		].
]
