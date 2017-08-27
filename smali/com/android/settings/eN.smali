.class Lcom/android/settings/eN;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"


# instance fields
.field final synthetic sn:Lcom/android/settings/eL;

.field private so:I


# direct methods
.method constructor <init>(Lcom/android/settings/eL;I)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/settings/eN;->sn:Lcom/android/settings/eL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput p2, p0, Lcom/android/settings/eN;->so:I

    .line 680
    return-void
.end method


# virtual methods
.method public declared-synchronized fF()V
    .locals 2

    .prologue
    .line 684
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/settings/eN;->so:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    :goto_0
    monitor-exit p0

    return-void

    .line 684
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 685
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 690
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    monitor-exit p0

    return-void

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
