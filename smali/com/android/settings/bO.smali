.class public Lcom/android/settings/bO;
.super Landroid/widget/ArrayAdapter;
.source "DataUsageSummary.java"


# instance fields
.field private iI:Z

.field private iJ:Z

.field private final iK:Lcom/android/settings/bP;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1629
    const v0, 0x7f04005a

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1623
    iput-boolean v1, p0, Lcom/android/settings/bO;->iI:Z

    .line 1624
    iput-boolean v1, p0, Lcom/android/settings/bO;->iJ:Z

    .line 1630
    const v0, 0x7f04005b

    invoke-virtual {p0, v0}, Lcom/android/settings/bO;->setDropDownViewResource(I)V

    .line 1631
    new-instance v0, Lcom/android/settings/bP;

    invoke-direct {v0, p1}, Lcom/android/settings/bP;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bO;->iK:Lcom/android/settings/bP;

    .line 1632
    return-void
.end method

.method private bQ()V
    .locals 1

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/android/settings/bO;->iK:Lcom/android/settings/bP;

    invoke-virtual {p0, v0}, Lcom/android/settings/bO;->remove(Ljava/lang/Object;)V

    .line 1646
    iget-boolean v0, p0, Lcom/android/settings/bO;->iI:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/bO;->iJ:Z

    if-eqz v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/android/settings/bO;->iK:Lcom/android/settings/bP;

    invoke-virtual {p0, v0}, Lcom/android/settings/bO;->add(Ljava/lang/Object;)V

    .line 1649
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/bR;)I
    .locals 3

    .prologue
    .line 1656
    if-eqz p1, :cond_2

    .line 1657
    invoke-virtual {p0}, Lcom/android/settings/bO;->getCount()I

    move-result v0

    .line 1658
    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 1659
    invoke-virtual {p0, v1}, Lcom/android/settings/bO;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bR;

    .line 1660
    instance-of v2, v0, Lcom/android/settings/bP;

    if-eqz v2, :cond_1

    .line 1658
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1662
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/settings/bR;->b(Lcom/android/settings/bR;)I

    move-result v0

    if-ltz v0, :cond_0

    move v0, v1

    .line 1667
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public n(Z)V
    .locals 0

    .prologue
    .line 1635
    iput-boolean p1, p0, Lcom/android/settings/bO;->iI:Z

    .line 1636
    invoke-direct {p0}, Lcom/android/settings/bO;->bQ()V

    .line 1637
    return-void
.end method

.method public o(Z)V
    .locals 0

    .prologue
    .line 1640
    iput-boolean p1, p0, Lcom/android/settings/bO;->iJ:Z

    .line 1641
    invoke-direct {p0}, Lcom/android/settings/bO;->bQ()V

    .line 1642
    return-void
.end method
