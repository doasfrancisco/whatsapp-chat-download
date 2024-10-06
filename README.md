# How to download all my WhatsApp chats?

1. Activate E2E in WhatsApp and choose to get a hexadecimal key. Save key in `key.txt`

2. Use https://github.com/ElDavoo/wa-crypt-tools to decrypt your WhatsApp backup

    ```bash
    pip install wa-crypt-tools
    ```

    ```bash
    wacreatekey --hex key.txt
    ```
     
    ```bash
    wadecrypt encrypted_backup.key ./msgstore.db.crypt15 ./msgstore.db
    ```

    ```bash
    wadecrypt encrypted_backup.key ./wa.db.crypt15 ./wa.db
    ```
            
3. Use https://github.com/KnugiHK/WhatsApp-Chat-Exporter to access your chats in html and json format
        
    ```bash
    pip install whatsapp-chat-exporter
    ```

    ```bash
    mkdir files
    cd files
    wtsexporter -a
    ```

4. Configure daily WhatsApp backups and code something that decrypts them and sends the SQL data from your phone to a server to automatize user feedback. 

# Media folders

- Stickers: Already in msgstore.db or wa.db
- Audio: WhatsApp Audio and WhatsApp Voice Notes
- Images: WhatsApp Images
- Videos: WhatsApp Videos