# Poppin!
A Party Explorer App!

## Tech Specifications
- Xcode
- Swift
- SwiftUI

## Installation
Steps to set up and run the project:

### Clone the Repository:
git clone https://github.com/anaghajp1996/poppin.git

### Open Project in Xcode:
- Launch Xcode.
- Open the .xcodeproj file located in the cloned repository.
- Go to the project settings by clicking on the project file in the left sidebar.
- Select the target and navigate to the "Deployment Info" section.
- Set the "Deployment Target" to iOS 17.
- In the "Signing and Capabilities" section, choose the desired team.

### Build and Run:
Choose a simulator or connect a device with iOS 17 installed.
Press the play button (or ⌘ + R) in Xcode to build and run the project.

## Architecture
The project follows the MVVM pattern. 
- The 'Party' model can be found under the 'Model' foler.
- The 'View' folder contains thw Party Card widget.
- The 'ViewModel' folder has the ContentView file, which brings the PartyCard and date together.
- There is a 'Constants' file that has all the constant values.
