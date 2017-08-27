.class Lcom/android/settings/widget/n;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# instance fields
.field final synthetic aAO:Lcom/android/settings/widget/m;

.field final synthetic val$desiredState:Z


# direct methods
.method constructor <init>(Lcom/android/settings/widget/m;Z)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/settings/widget/n;->aAO:Lcom/android/settings/widget/m;

    iput-boolean p2, p0, Lcom/android/settings/widget/n;->val$desiredState:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 471
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/n;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 474
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->xz()Lcom/android/b/b/Q;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/widget/n;->val$desiredState:Z

    invoke-virtual {v0, v1}, Lcom/android/b/b/Q;->bX(Z)V

    .line 475
    const/4 v0, 0x0

    return-object v0
.end method
