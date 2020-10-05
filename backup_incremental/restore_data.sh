mkdir -p data_restored
ls -crt backups/* | while read backup
do
        tar -xzvf $backup -C data_restored
done
