# MVVM-C XCTemplate

A template for XCode to create ViewControllers in MVVM-C framework in Swift 4.2

## MVVM-C Framework
![alt text][mvvm-c]

[mvvm-c]: https://koenig-media.raywenderlich.com/uploads/2018/04/MVVM_Diagram.png "Cocoa MVVM-C"

The idea here is to separate the view controller responsibilities in some parts:
* View - It is responsable to inform user interactions and display information to user
* ViewController - Responsible to mantain the Instances and App Life-Cycle
* Model - Holds the data needed to display information
* ViewModel - Transform the Models into conpreensive information that can be displayed to user
* Coordinator - Contains the navigation logic, and presents the next flux, it creates and set all the layers of the framework.

This is a helper to create all this layers, just adding the Name from the new UIViewController class. It will create the Protocols needed to manage this interactions, to be more productive and easy to test.

## Instalation

If you don't know where to paste a XCTemplate in your MAC, consider to use my easy script in ruby:
<https://github.com/TucoBZ/template_xcode_Installer>

## How To Use it

After instalation, you just need to `New File...` in your Xcode Project, look for `MVVM-CTemplate` (by default in Custom category, if you use my Instalation method), give the `Screen Name` to the new controller (Observe the preview of the names of the files that will be created) and confirm the location where the files will be created. The files have the minimum required for the MVVM-C architecture.

## How It works?

The easy way, is to thing what interations you will need and set it in the protocols, and you will need to conform your class with the new interations. With this way you can centralize the needs from your MVVM-C Screen, easy to test and update.

## Bibliography

Inspired by:          
<https://www.raywenderlich.com/34-design-patterns-by-tutorials-mvvm>
