"If e.g. your tests change code in the image dynamically, the image will require you to set 
author initials which might fail these tests. So we set some dummy initials here to avoid this."

[MCMcmUpdater updateFromServer] valueSupplyingAnswer: true.

(Smalltalk at: #MetacelloPlatform) current authorName: 'Gramada'.

"Load Gramada into image"
Metacello new
  baseline: 'Gramada';
  repository: 'github://hpi-swa-lab/Gramada/repository';
  load.
  
GramadaScripts installScriptsAndOpenProfile.

"Save image and quit"
SmalltalkImage current snapshot: true andQuit: true.
!
