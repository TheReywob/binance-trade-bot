:: ===========================
::  Author: Connor Bowyer
::  Date: 2/16/2022
::  Description: 
::
::  This script will start the
:: binance-trade-bot and ask
:: if the user wants to delete
:: the cached data, ie. start
:: fresh. This will require
:: the user to change their 
:: held coin to their bridge
:: coin before starting.
:: ===========================
@echo off

cd %~dp0
cd ..
cd ..
echo Current dir: %cd%

echo If your bot had an error the last time you ran it, its a good idea to clear the saved data before running it again.
echo:
set /p rm="Remove saved data? (crypto_trading.db) [y/n]: "
if /i %rm%==y (
	cd data
	del /p crypto_trading.db
	echo Saved data erased.
	echo !! Make sure to swap your current coin to your preferred bridge coin before starting !!
) else (
	echo Continuing with existing saved data.
)
echo:
echo Ready to start trading!
pause
echo Starting trade bot.
python -m binance_trade_bot
echo:
echo Press any key to quit...
pause > nul
exit