.class Lcom/android/settings/fB;
.super Ljava/lang/Object;
.source "MiuiTetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic uZ:Lcom/android/settings/MiuiTetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiTetherSettings;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/settings/fB;->uZ:Lcom/android/settings/MiuiTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/settings/fB;->uZ:Lcom/android/settings/MiuiTetherSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/MiuiTetherSettings;->a(Lcom/android/settings/MiuiTetherSettings;I)V

    .line 417
    return-void
.end method
