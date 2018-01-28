% ![](20110717032101!Fedora_infinity.png "Fedora Logo"){ width=128 } ![](HaskellLogoStyPreview-1.png "Haskell Logo")\
  Fedora Haskell and tracking Stackage
% Jens Petersen
% Devconf.cz 2018, Brno (Jan 28)

## I am Jens Petersen

Red Hat and Fedora

Fedora Haskell project and [SIG](https://fedoraproject.org/wiki/Haskell_SIG#History) founder

# Haskell

## Why Haskell and GHC?

- Functional purity and immutability
- Lazy evaluation
- Statically and strongly typed
- Good concurrency
- Native executables
- Garbage collected

<small><https://www.snoyman.com/blog/2017/12/what-makes-haskell-unique></small>

## Examples of Haskell packages?

## Haskell packages

- pandoc
- ShellCheck
- xmonad and xmobar
- git-annex
- hledger
- shake

also: ghc, Purescript, Elm, Agda and idris

## [Enterprise Haskell](http://industry.haskell.org/)

- Facebook
- Banks (financial trading, etc)
- Blockchain
- Cardano blockchain
- etc

Services: Well Typed, FP Complete, ...

# Haskell Ecosystem

## [Hackage](http://hackage.haskell.org)

main Haskell upstream package source repository

- cabal-install package tool
- has revisions of dependency bounds!

Package .cabal files have detailed metadata including dependencies allowing most packages to be packaged completely automatically

- [example](https://hackage.haskell.org/package/cabal-rpm)

## [Stackage](http://stackage.org)

Stable consistent buildable Haskell package sets

stack build tool

# Fedora Haskell

## Fedora Haskell challenges

~450 Haskell sources packages in Fedora currently

GHC has strict version binary dependencies:

- Updating ghc or libraries requires a lot of rebuilding

- <http://fedoraproject.org/wiki/Changes/GHC_8.2>

Lack of packaging manpower led to some deps subpackaging

## Fedora Haskell Packagers

Many people have helped with packaging including:

- Active:
 Elliott\ Sales\ de\ Andrade,\
 Robert-André\ Mauchin, Jens\ Petersen

- Packagers:
 Ben\ Boeckel, Ricky\ Elrod, Zach\ Oglesby

- Former:
 Bryan\ O'Sullivan, Yaakov\ Nemoy, Conrad\ Meyer, Lakshmi\ Narasimhan, Shakthi\ Kannan, Michel\ Salim

# Tools for Fedora Haskell

# cabal-rpm

## [cabal-rpm](https://hackage.haskell.org/package/cabal-rpm)

RPM packaging tool

- converts Haskell package .cabal files to RPM .spec files
- can update packages and refresh packaging

OpenSuse has also used cabal-rpm

## Demo of cabal-rpm

# Fedora Haskell Tools

## fedora-haskell-tools

- fhpkg
- fhbuild
- fhbz

Currently Fedora does not provide any easy way to query for all Haskell packages

## Demo of fedora-haskell-tools

# Todo

## Improvements to tools

- improve reliability (updating and koji building)
- async parallel building (also koji chain-build)
- docker for local building
- performance: caching of built package info
- editors for .cabal and .spec files
- push Haskell types

- querying for Fedora (Haskell) packages\
  (in the post-pkgdb world)

## Distro Haskell competition

- Nixos: all of Hackage!
- OpenSuse: Stackage LTS

## Continuous integration?

To keep Fedora in sync with Stackage LTS

Copr: build a subset of Stackage?

Koschei

Fedora CI

# Fedora Haskell Contributions

# Questions?

## More information

- Freenode #fedora-haskell
- Fedora Haskell SIG: <https://fedoraproject.org/wiki/Haskell_SIG>
- <https://github.com/juhp/cabal-rpm>
- <https://github.com/fedora-haskell/fedora-haskell-tools>
- <https://pagure.io/haskell-sig/blob/master/f/scripts>
