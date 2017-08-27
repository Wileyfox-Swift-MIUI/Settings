.class Lcom/android/settings/do;
.super Ljava/lang/Object;
.source "FrequentlySet.java"


# instance fields
.field key:Ljava/lang/String;

.field nt:I

.field nu:I

.field nv:I

.field nw:I

.field nx:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/android/settings/do;->key:Ljava/lang/String;

    .line 181
    iput p2, p0, Lcom/android/settings/do;->nt:I

    .line 182
    iput p3, p0, Lcom/android/settings/do;->nu:I

    .line 183
    iput p4, p0, Lcom/android/settings/do;->nv:I

    .line 184
    iput p5, p0, Lcom/android/settings/do;->nw:I

    .line 185
    iput-boolean p6, p0, Lcom/android/settings/do;->nx:Z

    .line 186
    return-void
.end method
