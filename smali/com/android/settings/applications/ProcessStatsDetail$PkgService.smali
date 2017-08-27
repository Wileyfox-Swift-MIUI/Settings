.class Lcom/android/settings/applications/ProcessStatsDetail$PkgService;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"


# instance fields
.field final MP:Ljava/util/ArrayList;

.field mDuration:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail$PkgService;->MP:Ljava/util/ArrayList;

    return-void
.end method
