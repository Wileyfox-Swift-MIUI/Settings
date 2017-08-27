.class public Lcom/android/settings/bP;
.super Lcom/android/settings/bR;
.source "DataUsageSummary.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1618
    const v0, 0x7f0a08a6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bR;-><init>(Ljava/lang/CharSequence;)V

    .line 1619
    return-void
.end method
