.class Lcom/android/settings/device/r;
.super Ljava/lang/Object;
.source "MiuiAboutPhoneUtils.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic WG:Lcom/android/settings/device/MiuiAboutPhoneUtils;


# direct methods
.method constructor <init>(Lcom/android/settings/device/MiuiAboutPhoneUtils;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/settings/device/r;->WG:Lcom/android/settings/device/MiuiAboutPhoneUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 263
    const-string v0, "cpu[0-9]{1}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
