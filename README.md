# Bitmap editor

### Program input
The input consists of a file containing a sequence of commands, where a command is represented by a single capital letter at the beginning of the line. Parameters of the command are separated by white spaces and they follow the command character.
Pixel coordinates are a pair of integers: a column number between 1 and 250, and a row number between 1 and 250. Bitmaps starts at coordinates 1,1. Colours are specified by capital letters.

### Commands
There are 6 supported commands:
* I N M - Create a new M x N image with all pixels coloured white (O).
* C - Clears the table, setting all pixels to white (O).
* L X Y C - Colours the pixel (X,Y) with colour C.
* V X Y1 Y2 C - Draw a vertical segment of colour C in column X between rows Y1 and Y2 (inclusive).
* H X1 X2 Y C - Draw a horizontal segment of colour C in row Y between columns X1 and X2 (inclusive).
* S - Show the contents of the current image
### Example
To run the application you must supply a command file like so bin/bitmap_editor examples/show.txt
**Input File:**
```
I 5 6
L 1 3 A
V 2 3 6 W
H 3 5 2 Z
S
```
**Expected Output:**
```
OOOOO
OOZZZ
AWOOO
OWOOO
OWOOO
OWOOO
```
### Running
* Install dependencies with `bundle install`
* Run the script with `bin/bitmap_editor examples/show.txt`
* Run the tests with `rspec`

## Approach
Ruby version is 2.6.3 and can be found in the `.ruby-version` file.

The app is namespaced to avoid naming conflicts. Following a composition pattern all commands live in different files and execute depending on the input of the text input file.

The final bitmap is persisted in a file which makes it easier to retrieve without having to pass it around as a param or store it a global variable.

Validation rules are in place for the min and max dimensions the bitmap can take and out of bounds index errors are handled gracefully. 
 
For testing fixtures are used that contain different configurations and demonstrate how valid and invalid input is handled. 

## Further development
* More tests could be added to cover edge cases
* Depending on how much feedback we want to provide to user of the program we could introduce messages or raise exceptions in order to
   alert the user that is something has gone wrong and they need to take action to rectify the input. 
