NOW=$(date +"%Y-%m-%d-%H-%M")
tar -czvg snapshot.inc -f backups/$NOW.tar.gz /home/daniel/* 2>/dev/null
