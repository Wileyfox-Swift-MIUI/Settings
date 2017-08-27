.class Lcom/android/settings/in;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Cl:Lcom/android/settings/im;


# direct methods
.method constructor <init>(Lcom/android/settings/im;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/settings/in;->Cl:Lcom/android/settings/im;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 694
    new-instance v0, Lcom/android/settings/is;

    iget-object v1, p0, Lcom/android/settings/in;->Cl:Lcom/android/settings/im;

    iget-object v1, v1, Lcom/android/settings/im;->Cg:Lcom/android/settings/TrustedCredentialsSettings;

    iget-object v2, p0, Lcom/android/settings/in;->Cl:Lcom/android/settings/im;

    iget-object v2, v2, Lcom/android/settings/im;->Cj:Lcom/android/settings/it;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/is;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/it;Lcom/android/settings/ii;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/is;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 695
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 696
    iget-object v0, p0, Lcom/android/settings/in;->Cl:Lcom/android/settings/im;

    iget-object v0, v0, Lcom/android/settings/im;->Ck:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 697
    return-void
.end method
