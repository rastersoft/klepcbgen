# KLE PCB Generator

This script takes a json file exported from the online [Keyboard Layout Editor](http://www.keyboard-layout-editor.com/) and generates a KiCAD schematic and layout out of this. The resulting schematic is pretty much complete: it contains all key switches connected in rows and columns, a functional control circuit built around the ATmega32U4 (including external crystal, reset switch, programming header and a USB connector) and mounting holes. The layout is only partly connected, but most crucially it contains all switches in the right positions (including holes for stabilizers for keys that need it).

This is a branch from the original code made by Jeroen94704, with several enhancements.

## Features

Current klepcbgen features are:

* Keys of different widths and/or heights
* Adds stabilizers for keys 2 units or more wide
* Cherry MX switch mount
* Keyboard layouts with at most 18 columns and 7 rows
* Uses only standard KiCad libraries
* Keys with secondary width/height (like ISO/big-ass ENTER keys)
* Vertical keys (e.g. numpad ENTER and "+")

Currently **not** supported are:

* Rotated keys
* Alps switches

## Installation

klepcbgen requires python 3 and the jinja2 template module. Assuming you have a reasonably recent python install which includes pip by default, you can simply install jinja2 using the following command:

`pip install jinja2`

(Note: On Windows, make sure to execute this command in a shell with admin rights)

Then either [download and unzip the code](https://github.com/rastersoft/klepcbgen/archive/master.zip) or clone the repository:

    `git clone https://github.com/rastersoft/klepcbgen`

## Usage

While this script takes care of a lot of the tedious and error-prone drudge-work (most notably correctly positioning all switches), the end-result is not a finished layout you can immediately send off to be manufactured. There are a few manual steps required to get everything in working order:

* Execute the script from the commandline, e.g. using the provided example layout as input: `python3 klepcbgen.py example_layout.json mykeyboard` You can add these optional parameters:
  * --normal-diodes: will add normal, passthrough diodes instead of surface-mount ones
  * --no-grid-background-tracks: will remove the background, horizontal tracks and its vias (if using normal diodes, the diode itself is a via)
  * --no-grid-background-tracks: will remove the foreground, vertical tracks and its vias (the key pin is itself a via)
  * --track-width: followed by a decimal value that indicates the width, in millimeters, for the tracks (default value is 0.25)
  * --no-vias: don't add vias in the tracks
* This generates a KiCad project in the subdirectory "mykeyboard"
* Load the project in KiCad (the *.pro* file) and double-click the kicad_pcb file to open it.
* From the **Tools** menu, select **Update Footprints from Library...**
* Make sure **Update all footprints on board** is the selected option, then click **Apply**. Once it finishes the update, click **Close**
* From the **Tools** menu, select **Update PCB from Schematic...**
* This will open the **Annotate** dialog for the schematic. Ensure **Keep existing annotations** is selected, then click **Annotate**
* KiCad will automatically switch back to the **Update PCB from Schematic...** dialog once it finishes the annotation
* Ensure the Match Method is set to **Re-associate footprints by reference** (**THIS IS NOT THE DEFAULT, SO BE SURE TO CHANGE IT**) and click **Update PCB**

The schematic and pcb layout are now properly linked. You will see a lot of unconnected traces. Automatically routing these connections is beyond the scope of this script, so you will have to do this manually. Also, the microcontroller circuit and USB connector are placed outside the board outline. The best placement for these is highly board-specific, and even depends on your preference, so this has to be done manually as well.

Once you finish the PCB, you can generate the set of Gerber files, as explained for example [in this guide](https://github.com/ruiqimao/keyboard-pcb-guide).

## Future improvements

* Support foorprints with stabilizers for vertical keys (numpad enter and 0)
* Add the option to use Alps footprints (Supported in KiCad as Matias switches)
* Support rotated keys

I also have a bunch of ideas for this generator, such as:

* A board outline compatible with [swillkb's online Plate&Case Builder](http://builder.swillkb.com/).
* Lighting: obviously RGB is all the rage, so I would like to add options to generate a PCB which includes lighting
* Split layout: I'm a big fan of ergonomic/split layouts (I'm currently typing this on a Kinesis Freestyle Pro)
* Wireless: Cables are a nuisance.
* Multiple options for the control circuit: The ATmega32U4 is not the only option, and frankly doesn't have a lot of spare pins, e.g. for lighting

As you can guess, I'd love to make my own split, wireless, RGB-lit keyboard.

## Author

This fork is created by Sergio Costas (Raster Software Vigo) based on an original project from Jeroen94704.

<https://github.com/rastersoft/klepcbgen>
rastersoft@gmail.com
