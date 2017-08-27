.class Lcom/android/settings/y;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# instance fields
.field final synthetic be:Lcom/android/settings/ApnSettings;

.field private bf:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/settings/y;->be:Lcom/android/settings/ApnSettings;

    .line 616
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 617
    iput-object p3, p0, Lcom/android/settings/y;->bf:Landroid/os/Handler;

    .line 618
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 622
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 630
    :goto_0
    return-void

    .line 624
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/y;->be:Lcom/android/settings/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 625
    iget-object v1, p0, Lcom/android/settings/y;->be:Lcom/android/settings/ApnSettings;

    invoke-static {}, Lcom/android/settings/ApnSettings;->U()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/ApnSettings;->a(Lcom/android/settings/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 626
    iget-object v0, p0, Lcom/android/settings/y;->bf:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
