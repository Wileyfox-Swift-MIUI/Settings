.class Lcom/android/settings/V;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsAppListSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic bU:Lcom/android/settings/T;

.field final synthetic bV:Lcom/android/settings/X;


# direct methods
.method constructor <init>(Lcom/android/settings/T;Lcom/android/settings/X;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/settings/V;->bU:Lcom/android/settings/T;

    iput-object p2, p0, Lcom/android/settings/V;->bV:Lcom/android/settings/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/settings/V;->bU:Lcom/android/settings/T;

    invoke-static {v0, p2}, Lcom/android/settings/T;->a(Lcom/android/settings/T;I)I

    move-result v0

    .line 414
    iget-object v1, p0, Lcom/android/settings/V;->bV:Lcom/android/settings/X;

    invoke-virtual {v1, v0}, Lcom/android/settings/X;->setFlag(I)V

    .line 415
    iget-object v1, p0, Lcom/android/settings/V;->bU:Lcom/android/settings/T;

    iget-object v1, v1, Lcom/android/settings/T;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->a(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/V;->bV:Lcom/android/settings/X;

    invoke-virtual {v2}, Lcom/android/settings/X;->ad()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lmiui/util/AutoDisableScreenButtonsHelper;->setFlag(Landroid/content/Context;Ljava/lang/String;I)V

    .line 416
    iget-object v0, p0, Lcom/android/settings/V;->bU:Lcom/android/settings/T;

    iget-object v0, v0, Lcom/android/settings/T;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->f(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Lcom/android/settings/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/T;->notifyDataSetChanged()V

    .line 417
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 418
    return-void
.end method
