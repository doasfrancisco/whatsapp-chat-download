# How to download all my WhatsApp chats?

1. Activate E2E in WhatsApp and choose to get a hexadecimal key

2. Pip install https://github.com/ElDavoo/wa-crypt-toolsand uncrypt your WhatsApp backup
        
    ```bash
    decrypt14_15 <hexadecimal key> ./msgstore.db.crypt15 ./msgstore.db
    ```
        
3. Other possible tools to decrypt backups: https://github.com/KnugiHK/WhatsApp-Chat-Exporter
            
    ```bash
    pip install whatsapp-chat-exporter["crypt15"] # install along with this software
    ```
            
    ```bash
    wtsexporter -a -k <hexadecimal key> -b msgstore.db.crypt15
    ```
            
3. Use https://github.com/KnugiHK/WhatsApp-Chat-Exporter to access your chats in html and json format
        
    ```bash
    pip install whatsapp-chat-exporter
    ```

    ```bash
    wtsexporter -a
    ```
        
4. Configure daily WhatsApp backups and to code something that uncrypts them and sends the SQL data from your phone to a server to automatize user feedback. 