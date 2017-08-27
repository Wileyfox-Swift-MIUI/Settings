.class public Lcom/android/settings/dndmode/m;
.super Ljava/lang/Object;
.source "DoNotDisturbModeUtils.java"


# static fields
.field private static MODE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "mode"

    sput-object v0, Lcom/android/settings/dndmode/m;->MODE:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ADD_FIREWALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    const-string v1, "vnd.android.cursor.item/firewall-blacklist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    sget-object v1, Lcom/android/settings/dndmode/m;->MODE:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    const-string v1, "numbers"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    return-void
.end method

.method public static bF(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 83
    const-string v0, "AntiSpamUtils"

    const-string v1, "Start auto DNDM."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->getStartTimeForQuietMode(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/dndmode/m;->cb(I)J

    move-result-wide v0

    .line 86
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->getEndTimeForQuietMode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/android/settings/dndmode/m;->cb(I)J

    move-result-wide v2

    .line 88
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/settings/dndmode/m;->c(Landroid/content/Context;JJ)V

    .line 89
    return-void
.end method

.method public static bG(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 107
    invoke-static {p0}, Lcom/android/settings/dndmode/m;->bI(Landroid/content/Context;)V

    .line 108
    invoke-static {p0}, Lcom/android/settings/dndmode/m;->bF(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public static bH(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 112
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->getStartTimeForQuietMode(Landroid/content/Context;)I

    move-result v2

    .line 113
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->getEndTimeForQuietMode(Landroid/content/Context;)I

    move-result v3

    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 115
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 116
    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 117
    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v4, v5

    .line 119
    if-le v2, v3, :cond_2

    .line 121
    if-lt v4, v3, :cond_1

    if-ge v4, v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 126
    goto :goto_0

    .line 128
    :cond_2
    if-ge v2, v3, :cond_0

    .line 130
    if-lt v4, v2, :cond_0

    if-ge v4, v3, :cond_0

    move v0, v1

    .line 132
    goto :goto_0
.end method

.method public static bI(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 144
    const-string v0, "AntiSpamUtils"

    const-string v1, "Cancel auto DNDM."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    const-string v0, "com.android.settings.dndm.AUTO_TIME_TURN_ON"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 149
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 150
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 151
    const-string v2, "com.android.settings.dndm.AUTO_TIME_TURN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 154
    return-void
.end method

.method public static c(Landroid/content/Context;JJ)V
    .locals 7

    .prologue
    const/high16 v5, 0x8000000

    const/4 v4, 0x0

    .line 69
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 70
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    const-string v2, "com.android.settings.dndm.AUTO_TIME_TURN_ON"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-static {p0, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 74
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    const-string v3, "com.android.settings.dndm.AUTO_TIME_TURN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-static {p0, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 78
    invoke-virtual {v0, v4, p1, p2, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 79
    invoke-virtual {v0, v4, p3, p4, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 80
    return-void
.end method

.method public static cb(I)J
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    const/4 v3, 0x0

    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 94
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 95
    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v2

    .line 96
    if-lt v1, p0, :cond_0

    .line 97
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 99
    :cond_0
    div-int/lit8 v1, p0, 0x3c

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 100
    rem-int/lit8 v1, p0, 0x3c

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 101
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 102
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 103
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static q(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 53
    const/16 v0, 0xb

    div-int/lit8 v2, p1, 0x3c

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 54
    const/16 v0, 0xc

    rem-int/lit8 v2, p1, 0x3c

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 55
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    const v0, 0x7f0a0b88

    .line 63
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    const v0, 0x7f0a0b87

    goto :goto_0
.end method
