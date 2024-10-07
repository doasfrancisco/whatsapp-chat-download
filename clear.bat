@echo off

rmdir /s /q "files"
del /f /q "encrypted_backup.key"
del /f /q "msgstore.db.crypt15"
del /f /q "wa.db.crypt15"