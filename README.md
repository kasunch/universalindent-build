# universalindent-build
UniversalIndentGUI is a great application for generating configuration files for source code formating tools such as Uncrustify.

**universalindent-build** is a QMake project for building UniversalIndentGUI together with qscintilla.

## Prerequisites
Qt5 (doesn't work with Qt4)

## How to build

1. Clone the respository
   ```
   git clone https://github.com/kasunch/universalindent-build.git
   ```
2. Create a build directory and build
   ```
   cd universalindent-build
   mkdir build 
   cd biuld
   qmake ../universalindent-biuld.pro
   ```
3. Final binary is in the `build/src/universalindent` folder.
