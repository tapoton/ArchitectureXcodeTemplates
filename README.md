# Architecture Xcode Templates

This repository is meant to contain Xcode templates to generate modules for iOS arcitecture patterns.
For now it contains only basic VIPER pattern.

## Plans

- [x] Create repository for VIPER template.
- [ ] Add different variations for VIPER template.
- [ ] Create template generator???
- [ ] Add templates for other patterns (MVVM, Coordinator, etc)

## Installation

Add `VIPER module.xctemplate` to `~/Library/Developer/Xcode/Templates/`.

For your convenience you can clone the whole repo at this path and name the working copy folder whatever you want.

## Usage

Right click the on group you need to add new module to -> New File -> VIPER module.

Xcode dialog tips:
"File Name": All types, files and module directory names will begin from this value.

Xcode adds directories as folders. To add them as groups just re-add module to the project.
Don't use folders.

## VIPER module description

VIPER module consists of the following layers:
- View - UIViewController subclass + everything related to the presentation of data and interaction with user, e.g. subclasses of all UIKit or any other UI framework entities, DTO, UI-related factories, etc. View state is controlled via the ViewType protocol. View notifies about user actions via ViewDelegate protocol.
- Interactor - business logic layer. Manages entities.
- Router - knows how to create other modules and how to show them.
- Presenter – mediates the data flow between View and Interactor, manages View state, knows when to ask Router to create new module, becomes a delegate to modules shown by router.
