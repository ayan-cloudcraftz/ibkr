**Installation Guide for TWS API Library**

Step 1: Keep Tws Api Folder and Setup.sh in a Same Folder 

Step 2: Activate the Shell Script
- Open terminal inside newly created folder
- Run this bash script to activate Setup.sh
	```bash
		chmod +x Setup.sh
	```
- Run this bash script to install all dependencies and tws
	```bash
		./Setup.sh
	```
	
Step 3: Modify Library:
- Move to the path twsapi_macunix.1019.02 -> IBJts -> source -> pythonclient 
-> tws_env -> lib -> python3.8 -> site-packages -> ib_insync -> ib.py
- Open ib.py and serach for qualifyContractsAsync function
- Add this code after line no. 1805
	```py
		return possibles
	```
	
Step 4: Restart the Kernel

Step 5: Put getMarketData.ipynb and main.ipynb file inside pythonclient folder
