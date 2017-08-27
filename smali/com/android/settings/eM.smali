.class Lcom/android/settings/eM;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "MiuiMasterClear.java"


# instance fields
.field private sm:Lcom/android/settings/eN;

.field final synthetic sn:Lcom/android/settings/eL;


# direct methods
.method public constructor <init>(Lcom/android/settings/eL;Lcom/android/settings/eN;)V
    .locals 0

    .prologue
    .line 657
    iput-object p1, p0, Lcom/android/settings/eM;->sn:Lcom/android/settings/eL;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 658
    iput-object p2, p0, Lcom/android/settings/eM;->sm:Lcom/android/settings/eN;

    .line 659
    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 663
    packed-switch p2, :pswitch_data_0

    .line 671
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/eM;->sm:Lcom/android/settings/eN;

    invoke-virtual {v0}, Lcom/android/settings/eN;->finish()V

    .line 672
    return-void

    .line 663
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
