.class public Lcom/android/settings/backup/D;
.super Lcom/android/settings/backup/g;
.source "WifiAgent.java"


# direct methods
.method public constructor <init>(Lmiui/app/backup/FullBackupAgent;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/backup/g;-><init>(Lmiui/app/backup/FullBackupAgent;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a(Landroid/os/ParcelFileDescriptor;)I
    .locals 4

    .prologue
    .line 40
    const/4 v2, 0x0

    .line 42
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :try_start_1
    invoke-static {}, Lcom/android/settings/wifi/am;->yZ()Lcom/android/settings/wifi/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/am;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    :goto_1
    :try_start_2
    const-string v2, "Backup:WifiAgent"

    const-string v3, "IOException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 61
    :cond_0
    :goto_2
    const/4 v0, 0x0

    return v0

    .line 48
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :cond_2
    if-eqz v1, :cond_0

    .line 55
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 57
    :catch_1
    move-exception v0

    .line 58
    const-string v1, "Backup:WifiAgent"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 57
    :catch_2
    move-exception v0

    .line 58
    const-string v1, "Backup:WifiAgent"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 53
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 54
    :goto_3
    if-eqz v1, :cond_3

    .line 55
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 59
    :cond_3
    :goto_4
    throw v0

    .line 57
    :catch_3
    move-exception v1

    .line 58
    const-string v2, "Backup:WifiAgent"

    const-string v3, "IOException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 53
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 50
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lmiui/app/backup/BackupMeta;)I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I
    .locals 4

    .prologue
    .line 71
    invoke-static {}, Lcom/android/settings/wifi/am;->yZ()Lcom/android/settings/wifi/am;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/am;->a(Ljava/io/FileDescriptor;)Ljava/util/HashMap;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/android/settings/backup/D;->QB:Lmiui/app/backup/FullBackupAgent;

    invoke-static {v1}, Lcom/android/settings/wifi/ao;->cJ(Landroid/content/Context;)Lcom/android/settings/wifi/ao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/ao;->c(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/backup/D;->QB:Lmiui/app/backup/FullBackupAgent;

    const-class v3, Lcom/android/settings/wifi/MiuiWifiService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    const-string v2, "miui.intent.action.RESTORE_WIFI_CONFIGURATIONS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v2, "wifiConfiguration"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 79
    iget-object v0, p0, Lcom/android/settings/backup/D;->QB:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v0, v1}, Lmiui/app/backup/FullBackupAgent;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 81
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public lM()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method
