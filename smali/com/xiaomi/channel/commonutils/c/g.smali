.class Lcom/xiaomi/channel/commonutils/c/g;
.super Lcom/xiaomi/channel/commonutils/c/i;
.source "ScheduledJobManager.java"


# instance fields
.field final synthetic TF:Ljava/lang/String;

.field final synthetic aZt:Lcom/xiaomi/channel/commonutils/c/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/commonutils/c/f;Lcom/xiaomi/channel/commonutils/c/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/c/g;->aZt:Lcom/xiaomi/channel/commonutils/c/f;

    iput-object p3, p0, Lcom/xiaomi/channel/commonutils/c/g;->TF:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xiaomi/channel/commonutils/c/i;-><init>(Lcom/xiaomi/channel/commonutils/c/h;)V

    return-void
.end method


# virtual methods
.method Gn()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Lcom/xiaomi/channel/commonutils/c/i;->Gn()V

    .line 117
    return-void
.end method

.method Go()V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/g;->aZt:Lcom/xiaomi/channel/commonutils/c/f;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/f;->a(Lcom/xiaomi/channel/commonutils/c/f;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/c/g;->TF:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    return-void
.end method
