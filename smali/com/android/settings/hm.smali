.class Lcom/android/settings/hm;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic zH:Lcom/android/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lcom/android/settings/hm;->zH:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/settings/hm;->zH:Lcom/android/settings/SecuritySettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/SecuritySettings;->a(Lcom/android/settings/SecuritySettings;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    .line 672
    return-void
.end method
