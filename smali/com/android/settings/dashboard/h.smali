.class Lcom/android/settings/dashboard/h;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"


# instance fields
.field public Wa:Ljava/lang/String;

.field public Wb:Ljava/lang/String;

.field public Wc:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field public iconResId:I

.field public key:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-object p1, p0, Lcom/android/settings/dashboard/h;->context:Landroid/content/Context;

    .line 501
    iput-object p2, p0, Lcom/android/settings/dashboard/h;->title:Ljava/lang/String;

    .line 502
    iput-object p3, p0, Lcom/android/settings/dashboard/h;->Wa:Ljava/lang/String;

    .line 503
    iput-object p4, p0, Lcom/android/settings/dashboard/h;->Wb:Ljava/lang/String;

    .line 504
    iput-object p5, p0, Lcom/android/settings/dashboard/h;->Wc:Ljava/lang/String;

    .line 505
    iput p6, p0, Lcom/android/settings/dashboard/h;->iconResId:I

    .line 506
    iput-object p7, p0, Lcom/android/settings/dashboard/h;->key:Ljava/lang/String;

    .line 507
    return-void
.end method
