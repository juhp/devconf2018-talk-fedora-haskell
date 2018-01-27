% Fedora Haskell and tracking Stackage
% Jens Petersen
% Devconf.cz 2018, Brno (Jan 28)

## I am Jens Petersen

Red Hat and Fedora

Fedora Haskell project and SIG founder

# Haskell

## Why Haskell?

# Haskell Ecosystem

## [Hackage](http://hackage.haskell.org)

main Haskell upstream package source repository

cabal-install package tool

## [Stackage](http://stackage.org)

Stable consistent buildable Haskell package sets

stack build tool

# Fedora Haskell

## Fedora Haskell
About 450 Haskell sources packages in Fedora currently

GHC has strict version binary dependencies

Updating ghc or bottom libraries requires a lot of rebuilding

# Tools for Fedora Haskell

# cabal-rpm

## cabal-rpm

RPM packaging tool

Converts Haskell package .cabal files to RPM .spec files

.cabal files have detailed metadata allowing most packages to be packaged completely automatically

## Demo of cabal-rpm

# Fedora Haskell Tools

## fedora-haskell-tools

- fhpkg
- fhbuild
- fhbz

Currently Fedora does not provide any easy way to query for all Haskell packages

## Demo of fedora-haskell-tools

# CI

## Continuous integration?

To keep Fedora in sync with Stackage LTS

Copr?

Koschei

Fedora CI

# Questions?

## More information

- Freenode #fedora-haskell
- Fedora Haskell SIG: <https://fedoraproject.org/wiki/Haskell_SIG>
- <https://github.com/juhp/cabal-rpm>
- <https://github.com/fedora-haskell/fedora-haskell-tools>
- <https://pagure.io/haskell-sig/blob/master/f/scripts>
