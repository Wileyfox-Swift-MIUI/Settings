.class final Lcom/android/settings/privacypassword/PrivacyPasswordUtils$1;
.super Ljava/lang/Object;
.source "PrivacyPasswordUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aqw:Lmiui/security/SecurityManager;

.field final synthetic aqx:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/security/SecurityManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordUtils$1;->aqw:Lmiui/security/SecurityManager;

    iput-object p2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordUtils$1;->aqx:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordUtils$1;->aqw:Lmiui/security/SecurityManager;

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordUtils$1;->aqx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/security/SecurityManager;->removeAccessControlPass(Ljava/lang/String;)V

    .line 85
    return-void
.end method
