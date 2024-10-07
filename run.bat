@echo off


mkdir files
wacreatekey --hex (Get-Content key.txt)
wadecrypt encrypted_backup.key ./msgstore.db.crypt15 ./files/msgstore.db
wadecrypt encrypted_backup.key ./wa.db.crypt15 ./files/wa.db

cd files
wtsexporter -a