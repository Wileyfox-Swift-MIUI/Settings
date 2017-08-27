.class public Lcom/android/settings/display/H;
.super Ljava/lang/Object;
.source "PaperModeTimeModeUtil.java"


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/display/H;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static a(ZLandroid/content/Context;)V
    .locals 3

    .prologue
    .line 115
    const-string v0, "PaperModeTimeModeUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPaperModeTimeOnOff the OnOff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_enabled"

    invoke-static {v0, v1, p0}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 118
    return-void
.end method

.method private static b(Landroid/content/Context;JJ)V
    .locals 9

    .prologue
    const/high16 v7, 0x10000000

    const/high16 v6, 0x8000000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 69
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 70
    const-string v2, "miui.intent.action.PAPER_MODE_ON"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    invoke-static {p0, v4, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 75
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 76
    const-string v3, "miui.intent.action.PAPER_MODE_OFF"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    invoke-static {p0, v4, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 81
    invoke-virtual {v0, v5, p1, p2, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 82
    invoke-virtual {v0, v5, p3, p4, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 84
    return-void
.end method

.method public static bA(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_time_end"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static bT(I)J
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    const/4 v3, 0x0

    .line 121
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 123
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 124
    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v2

    .line 125
    if-lt v1, p0, :cond_0

    .line 126
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 128
    :cond_0
    div-int/lit8 v1, p0, 0x3c

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 129
    rem-int/lit8 v1, p0, 0x3c

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 130
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 131
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 132
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bv(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_time_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bw(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/android/settings/display/H;->bv(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {p0}, Landroid/provider/MiuiSettings$System;->isInPaperModeTimeSchedule(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/settings/display/H;->a(ZLandroid/content/Context;)V

    .line 39
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/settings/display/H;->bx(Landroid/content/Context;)V

    .line 40
    invoke-static {p0}, Lcom/android/settings/display/H;->by(Landroid/content/Context;)V

    .line 41
    return-void

    .line 36
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/settings/display/H;->a(ZLandroid/content/Context;)V

    goto :goto_0
.end method

.method public static bx(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/high16 v4, 0x8000000

    const/4 v3, 0x0

    .line 44
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 45
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 46
    const-string v2, "miui.intent.action.PAPER_MODE_ON"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 51
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 52
    const-string v2, "miui.intent.action.PAPER_MODE_ON"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 56
    return-void
.end method

.method private static by(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 60
    invoke-static {p0}, Lcom/android/settings/display/H;->bz(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/display/H;->bT(I)J

    move-result-wide v0

    .line 62
    invoke-static {p0}, Lcom/android/settings/display/H;->bA(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/android/settings/display/H;->bT(I)J

    move-result-wide v2

    .line 63
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/settings/display/H;->b(Landroid/content/Context;JJ)V

    .line 64
    return-void
.end method

.method public static bz(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_time_start"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static o(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_time_start"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    return-void
.end method

.method public static p(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_time_end"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    return-void
.end method
