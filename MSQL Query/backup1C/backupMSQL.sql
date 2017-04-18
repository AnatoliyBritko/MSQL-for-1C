declare @path varchar(max)=N'E:\BackupSQLBD\BASE_backup_'+REPLACE (convert(varchar(max),getdate(),120), ':' , '_' )+'.bak'
BACKUP DATABASE [DATABASENAME] TO  DISK = @path  WITH  COPY_ONLY, NOFORMAT, NOINIT,  NAME = N'DATABASENAME-Полная База данных Резервное копирование', SKIP, NOREWIND, NOUNLOAD,   STATS = 10
GO