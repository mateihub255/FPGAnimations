# FPGAnimations
SystemVerilog project designed to animate Eight 7-Segment displays on the RealDigital Boolean Board.

## Features

Toggle between the two snaking animations using an onboard switch.

Speed control via two switches, with selectable clock frequencies of 5Hz, 10Hz, 15Hz, and 30Hz, using two onboard switches.

Enable switch and Reset pushbutton.

## Project Structure

Clock Divider : Generates the required clock signals by dividing the onboard 100MHz clock.

Counter : Provides the addresses for the Transcoders, switches between two counters for the two animations' frame count.

Transcoders : ROM memory which provides the left group and right group segment select pins and the digit select pins with the needed signal for each animation. An animation needs 3 Transcoders, totaling 6 for this project. Note: The 7-segment displays of this board operate in negative logic.

Demux and Mux : Handle animation selection.

top.sv : The top-level module that instantiates and connects all the modules mentioned above.

## Requirements

This project was developed using **Vivado 2020.2**. <br>
It is written in SystemVerilog and was designed for the RealDigital Boolean Board, using its 100MHz clock, both groups of 4 digit 7-segment displays, four switches and one pushbutton.
