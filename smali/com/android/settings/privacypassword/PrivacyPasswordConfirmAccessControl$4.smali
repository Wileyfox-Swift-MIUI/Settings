.class Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$4;
.super Ljava/lang/Object;
.source "PrivacyPasswordConfirmAccessControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aqk:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$4;->aqk:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$4;->aqk:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->finish()V

    .line 192
    return-void
.end method
