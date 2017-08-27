.class Lcom/android/settings/io;
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
    .line 700
    iput-object p1, p0, Lcom/android/settings/io;->Cl:Lcom/android/settings/im;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 702
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 703
    return-void
.end method
