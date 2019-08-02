# Ring 2 [![Build Status](https://travis-ci.org/pavel-krivanek/Ring2.svg?branch=master)](https://travis-ci.org/pavel-krivanek/Ring2)
Ring metamodel reimplementation

### How to load

```smalltalk
Metacello new
  baseline: 'Ring2';
  repository: 'github://pavel-krivanek/Ring2/src';
  load.
```

in Pharo 8.0, use

```smalltalk
Metacello new
  baseline: 'Ring2';
  repository: 'github://pavel-krivanek/Ring2:RGPackageRenamed/src';
  load.
```
