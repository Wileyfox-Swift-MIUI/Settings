.class public Lcom/android/settings/device/y;
.super Landroid/os/AsyncTask;
.source "ReadDeviceInfoTask.java"


# instance fields
.field private WC:Ljava/lang/String;

.field private WD:Ljava/lang/String;

.field private WE:Ljava/lang/String;

.field private Xd:Lcom/android/settings/device/z;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/device/z;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/settings/device/y;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/android/settings/device/y;->Xd:Lcom/android/settings/device/z;

    .line 21
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/device/y;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/device/y;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->bh(Landroid/content/Context;)Lcom/android/settings/device/MiuiAboutPhoneUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->ps()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/y;->WC:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/android/settings/device/y;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->bh(Landroid/content/Context;)Lcom/android/settings/device/MiuiAboutPhoneUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->pm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/y;->WD:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/android/settings/device/y;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->bh(Landroid/content/Context;)Lcom/android/settings/device/MiuiAboutPhoneUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->pr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/y;->WE:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/device/y;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/device/y;->WC:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/device/y;->WD:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/device/y;->WE:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 34
    iget-object v1, p0, Lcom/android/settings/device/y;->Xd:Lcom/android/settings/device/z;

    invoke-interface {v1, v0}, Lcom/android/settings/device/z;->h([Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 36
    return-void
.end method
