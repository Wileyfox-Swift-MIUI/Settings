.class Lcom/android/settings/bz;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/widget/e;


# instance fields
.field final synthetic iy:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1537
    iput-object p1, p0, Lcom/android/settings/bz;->iy:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bM()V
    .locals 4

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/settings/bz;->iy:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/bz;->iy:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->n(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->xd()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/settings/DataUsageSummary;->b(Lcom/android/settings/DataUsageSummary;J)V

    .line 1541
    return-void
.end method

.method public bN()V
    .locals 4

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/android/settings/bz;->iy:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/bz;->iy:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->n(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->xe()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;J)V

    .line 1546
    iget-object v0, p0, Lcom/android/settings/bz;->iy:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->b(Lcom/android/settings/DataUsageSummary;)V

    .line 1547
    return-void
.end method

.method public bO()V
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/settings/bz;->iy:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->A(Lcom/android/settings/DataUsageSummary;)V

    .line 1552
    return-void
.end method

.method public bP()V
    .locals 1

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/settings/bz;->iy:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->A(Lcom/android/settings/DataUsageSummary;)V

    .line 1557
    return-void
.end method
