# RX Vega Startup Scripts
AMD's RX Vega cards need to be rebooted every time in order to mine at full speed. This helps you set up this process to be automatic.


### 1. Copy/Clone

  This usage example uses C:/vega-startup/ , so clone this repo in that path.
  
### 2. Install OverdriveNTool

  Install it from somewere online, it's a free tool. 
  
  https://forums.guru3d.com/threads/overdriventool-tool-for-amd-gpus.416116/
  
  Save a profile called "startup".
  
  Optionally just use the .exe file provided in this repo.
  
### 3. Have your miner ready

  If you're using Vega, most likely you'd like to use xmr-stak. 
  
  https://github.com/fireice-uk/xmr-stak

### 4. Create Startup Task

- Using search you can open *Task Scheduler*
- Optionally create a new Folder
- Create a new task
- The task must have "Run with highest priviledges" checked in the "General" tab
- In action it must have 3 actions set:
- 1) Start A Program >> C:/vega-startup/start-ps-elevated.cmd (from this repository)
- 2) Start A Program >> C:/vega-startup/OverdriveNTool/burn-startup.bat
- 3) Start A Program >> {PATH TO YOUR MINER} - for START IN set the same directory so that it uses your predefined settings (especially for xmr-stack which uses about 3 config files)

### Notes

- Make sure that start-ps-elevated.cmd calls the correct reboot-vegas.ps1 file located in the right path
- reboot-vegas.ps1 is looking for devices "Radeon RX Vega" within the Device Manager, if yours is called something else change accordingly.
- The logic of reboot-vegas.ps1 is a) find all vega cards b) disable all c) enable all
- if you simply put the miner link in startup the mining will start before the cards are enabled/disabled so this whole thing won't work

## Test

- Disable some of your vega cards and check if they are enabled back at Windows startup
- Check if new overclocking settings in OverdriveNTool are set at startup
- Make sure mining is at full efficiency all the time

## Happy rebooting and mining :)
