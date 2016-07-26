@echo off
echo ERROR! Your system is not protected, please visit https://browser.yandex.ru

sqlite3 -header -column -nullvalue "<NULL>" -init ..\part-1-create-insert-select.sql %*
