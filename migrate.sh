@echo off
mysqldump -u root -pHamza@2007 --single-transaction universite_dev > dump.sql
mysql -u root -pHamza@2007 universite_prod < dump.sql
echo Migration terminee
pause

