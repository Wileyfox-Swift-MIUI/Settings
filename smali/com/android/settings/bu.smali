.class Lcom/android/settings/bu;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic iy:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/settings/bu;->iy:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/settings/bu;->iy:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary;->eB()V

    .line 518
    return-void
.end method
