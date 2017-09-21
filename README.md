# Gramada
Gramada is a live programming environment for developing programming languages. There is an online [demo video](https://vimeo.com/180190846) giving an overview of the Gramada tool set.

## Installation

### Get a Prepared Image
You can get a prepared image [here](https://www.hpi.uni-potsdam.de/hirschfeld/artefacts/gramada/).

### Build your Own
1. Get [Squeak 5.0 or later](http://www.squeak.org)
2. Load [Metacello](https://github.com/dalehenrich/metacello-work). To speed up the process you can also get a prebuild Vivide image from the Vivide repository.
3. Execute the following script to install Gramada

````Smalltalk
Metacello new
  baseline: 'Gramada';
  repository: 'github://hpi-swa-lab/gramada/repository';
  load.
			
(Smalltalk at: #GramadaScripts) installAndOpenGramada.
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
  repository: 'github://hpi-swa-lab/gramada/repository'
}
do: [:b | b get];
do: [:b | b load].
````

## Further Documentation

Patrick Rein and Robert Hirschfeld and Marcel Taeumel.
*Gramada: Immediacy in Programming Language Development.*
In Proceedings of the ACM Symposium for New Ideas, New Paradigms, and Reflections on Everything to do with Programming and Software (Onward!) 2016, co-located with the Conference on Object-oriented Programming, Systems, Languages, and Applications (OOPSLA) 2016. pages 165–179, ACM, 2016. [online version](http://dl.acm.org/authorize?N26270)

### How to cite this work
If you did work based on / or build with Gramada and want to write about the work, you can reference Gramada as following:

````Bibtex
@inproceedings{rein_gramada_2016,
  author    = {Patrick Rein and
               Robert Hirschfeld and
               Marcel Taeumel},
  title     = {Gramada: Immediacy in Programming Language Development},
  booktitle = {Symposium on New Ideas, New Paradigms, and
               Reflections on Programming and Software (Onward!) 2016},
  pages     = {165--179},
  year      = {2016},
  month     = {November},
  location  = {Amsterdam, The Netherlands},
  crossref  = {DBLP:conf/oopsla/2016onward},
  url       = {http://doi.acm.org/10.1145/2986012.2986022},
  doi       = {10.1145/2986012.2986022},
  timestamp = {Thu, 27 Oct 2016 15:08:50 +0200},
  biburl    = {http://dblp.uni-trier.de/rec/bib/conf/oopsla/ReinHT16},
  bibsource = {dblp computer science bibliography, http://dblp.org}
}
````
