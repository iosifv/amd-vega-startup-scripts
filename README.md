# RX Vega Startup Scripts
AMD's RX Vega cards need to be rebooted every time in order to mine at full speed. This helps you set up this process to be automatic.


### 1. Copy/Clone

  This usage example uses C:/vega-startup/ , so clone this repo in that path.
  
### 2. Install OverdriveNTool

  Install it from somewere online, it's a free tool.
  
  Save a profile called "startup".
  
  Optionally just use the .exe file provided in this repo.
  
### 3. Have your miner ready

  If you're using Vega, most likely you'd like to use xmr-stak.

### 4. Create Startup Task

a) Using search you can open *Task Scheduler*

b) Optionally create a new Folder

c) Create a new task

d) The task must have "Run with highest priviledges" checked in the "General" tab

e) In action it must have 3 actions set:

e1) Start A Program >> C:/vega-startup/start-ps-elevated.cmd (from this repository)

e2) Start A Program >> C:/vega-startup/OverdriveNTool/burn-startup.bat

e3) Start A Program >> {PATH TO YOUR MINER} - for START IN set the same directory so that it uses your predefined settings (especially for xmr-stack which uses about 3 config files)

Reboot windows and check if it works

## Test

- Disable some of your vega cards and check if they are enabled back at Windows startup
- Check if new overclocking settings in OverdriveNTool are set at startup
- Make sure mining is at full efficiency all the time

## Happy rebooting and mining :)
