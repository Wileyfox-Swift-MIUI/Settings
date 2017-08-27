.class public Lcom/android/b/d/d;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# instance fields
.field public aLX:J

.field public aLY:J

.field public aLZ:Landroid/util/SparseLongArray;

.field public aMa:Landroid/util/SparseArray;

.field public aMb:Landroid/util/SparseLongArray;

.field public aMc:Landroid/util/SparseLongArray;

.field public cacheSize:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/b/d/d;->aLZ:Landroid/util/SparseLongArray;

    .line 145
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/b/d/d;->aMa:Landroid/util/SparseArray;

    .line 151
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/b/d/d;->aMb:Landroid/util/SparseLongArray;

    .line 157
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/b/d/d;->aMc:Landroid/util/SparseLongArray;

    return-void
.end method
