.class Lcom/android/settings/applications/PreferredSmsSettings$1;
.super Ljava/lang/Object;
.source "PreferredSmsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic LN:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

.field final synthetic LO:Lcom/android/settings/applications/PreferredSmsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/PreferredSmsSettings;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings/applications/PreferredSmsSettings$1;->LO:Lcom/android/settings/applications/PreferredSmsSettings;

    iput-object p2, p0, Lcom/android/settings/applications/PreferredSmsSettings$1;->LN:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/applications/PreferredSmsSettings$1;->LO:Lcom/android/settings/applications/PreferredSmsSettings;

    iget-object v1, p0, Lcom/android/settings/applications/PreferredSmsSettings$1;->LN:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/applications/PreferredSmsSettings;->a(Lcom/android/settings/applications/PreferredSmsSettings;Ljava/lang/String;)V

    .line 121
    return-void
.end method
