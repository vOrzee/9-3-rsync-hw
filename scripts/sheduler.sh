#!/bin/bash
LOG="${HOME}/rsync.log"

mkdir -p "${HOME}/log"
rsync -a --delete /home/tual/ /tmp/backup/ 1>/dev/null 2>/dev/null

if [ $? -eq 0 ]; then
    echo "$(date) - Резервное копирование успешно завершено" >> "$LOG"
    exit 0
else
    echo "$(date) - Резервное копирование не удалось" >> "$LOG"
    exit 1
fi
