# Gramada
Gramada is a live programming environment for developing programming languages. There is an online [demo video](https://vimeo.com/180190846) giving an overview of the Gramada tool set.

## Installation
As Gramada is currently not public yet, the installation process is a little bit involved.

1. First get a Squeak5.0 image and install the most recent Metacello version. To speed up the process you can also get a prebuild Vivide image from the Vivide repository.
2. Clone this repository to your disk
3. Execute the following script to initially install Gramada
````Smalltalk
((Smalltalk at: #Metacello) new
  baseline: 'Gramada';
  repository: 'filetree://<Add path to Gramada git repository>')
    get;
    load.
			
VivideLight open.
GramadaScripts merge.
GramadaScripts AllGramadaScripts third openScript
````


## Updating
To update Gramada first pull the latest version of the git repository. Then execute the following script:

````Smalltalk
{
(Metacello new
  baseline: 'Vivide';
  repository: 'github://hpi-swa/vivide/repository') .
(Metacello new
  baseline: 'Ohm';
  repository: 'github://hpi-swa/ohm-s/packages') .
(Smalltalk at: #Metacello) new
  baseline: 'Gramada';
  repository: 'filetree://<Path to Gramada filetree repository>\Gramada\repository'
}
do: [:b | b get];
do: [:b | b load].
````
