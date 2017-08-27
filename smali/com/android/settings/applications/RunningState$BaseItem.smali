.class Lcom/android/settings/applications/RunningState$BaseItem;
.super Ljava/lang/Object;
.source "RunningState.java"


# instance fields
.field final PB:Z

.field PC:Landroid/content/pm/PackageItemInfo;

.field PD:Ljava/lang/CharSequence;

.field PE:I

.field PF:J

.field PG:Ljava/lang/String;

.field PH:Ljava/lang/String;

.field PI:Z

.field PJ:Z

.field mDescription:Ljava/lang/String;

.field mLabel:Ljava/lang/String;

.field mSize:J

.field final mUserId:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState$BaseItem;->PB:Z

    .line 364
    iput p2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    .line 365
    return-void
.end method
