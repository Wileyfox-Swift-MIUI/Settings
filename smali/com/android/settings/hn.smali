.class Lcom/android/settings/hn;
.super Lcom/android/settings/search/a;
.source "SecuritySettings.java"


# instance fields
.field wV:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 943
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    .line 945
    invoke-static {}, Lcom/android/settings/SecuritySettings;->hM()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/hn;->wV:Z

    .line 946
    return-void

    .line 945
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public b(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6

    .prologue
    .line 992
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 993
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 995
    const v0, 0x7f0a01bb

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 997
    new-instance v0, Lcom/android/settings/search/p;

    invoke-direct {v0, p1}, Lcom/android/settings/search/p;-><init>(Landroid/content/Context;)V

    .line 998
    iput-object v3, v0, Lcom/android/settings/search/p;->title:Ljava/lang/String;

    .line 999
    iput-object v3, v0, Lcom/android/settings/search/p;->arC:Ljava/lang/String;

    .line 1000
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1002
    iget-boolean v0, p0, Lcom/android/settings/hn;->wV:Z

    if-nez v0, :cond_0

    .line 1003
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0a01b7

    .line 1006
    :goto_0
    new-instance v4, Lcom/android/settings/search/p;

    invoke-direct {v4, p1}, Lcom/android/settings/search/p;-><init>(Landroid/content/Context;)V

    .line 1007
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings/search/p;->title:Ljava/lang/String;

    .line 1008
    iput-object v3, v4, Lcom/android/settings/search/p;->arC:Ljava/lang/String;

    .line 1009
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    :cond_0
    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 1015
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1016
    new-instance v0, Lcom/android/settings/search/p;

    invoke-direct {v0, p1}, Lcom/android/settings/search/p;-><init>(Landroid/content/Context;)V

    .line 1017
    const v4, 0x7f0a01bf

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/p;->title:Ljava/lang/String;

    .line 1018
    iput-object v3, v0, Lcom/android/settings/search/p;->arC:Ljava/lang/String;

    .line 1019
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1023
    :cond_1
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1025
    const-string v4, "no_config_credentials"

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1026
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1028
    invoke-virtual {v0}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0a07bc

    .line 1032
    :goto_1
    new-instance v4, Lcom/android/settings/search/p;

    invoke-direct {v4, p1}, Lcom/android/settings/search/p;-><init>(Landroid/content/Context;)V

    .line 1033
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings/search/p;->title:Ljava/lang/String;

    .line 1034
    iput-object v3, v4, Lcom/android/settings/search/p;->arC:Ljava/lang/String;

    .line 1035
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    :cond_2
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1040
    invoke-static {}, Lcom/android/settings/SecuritySettings;->hM()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1041
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-static {v4, v1, v0}, Lcom/android/settings/SecuritySettings;->b(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1044
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1045
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ih;

    .line 1046
    new-instance v5, Lcom/android/settings/search/p;

    invoke-direct {v5, p1}, Lcom/android/settings/search/p;-><init>(Landroid/content/Context;)V

    .line 1047
    iget-object v0, v0, Lcom/android/settings/ih;->title:Ljava/lang/String;

    iput-object v0, v5, Lcom/android/settings/search/p;->title:Ljava/lang/String;

    .line 1048
    iput-object v3, v5, Lcom/android/settings/search/p;->arC:Ljava/lang/String;

    .line 1049
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1044
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1003
    :cond_3
    const v0, 0x7f0a01b5

    goto/16 :goto_0

    .line 1028
    :cond_4
    const v0, 0x7f0a07bd

    goto :goto_1

    .line 1052
    :cond_5
    return-object v2
.end method

.method public c(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3

    .prologue
    .line 952
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 954
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 956
    invoke-static {p1, v0}, Lcom/android/settings/SecuritySettings;->b(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v1

    .line 958
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 959
    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 960
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    iget-boolean v0, p0, Lcom/android/settings/hn;->wV:Z

    if-eqz v0, :cond_0

    .line 963
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 966
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 977
    :goto_0
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 978
    iput v0, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 979
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 983
    :cond_0
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 984
    const v1, 0x7f080097

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 985
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 987
    return-object v2

    .line 969
    :pswitch_1
    const v0, 0x7f080093

    .line 970
    goto :goto_0

    .line 973
    :pswitch_2
    const v0, 0x7f08009d

    goto :goto_0

    .line 966
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public n(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    .prologue
    .line 1057
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1059
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1061
    invoke-static {p1, v2}, Lcom/android/settings/SecuritySettings;->b(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    .line 1064
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1065
    iget-boolean v3, p0, Lcom/android/settings/hn;->wV:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1066
    :cond_0
    const-string v0, "sim_lock"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1069
    :cond_1
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1070
    const-string v3, "no_config_credentials"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1071
    const-string v0, "credentials_management"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    :cond_2
    invoke-static {}, Lcom/android/settings/SecuritySettings;->hM()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1076
    const-string v0, "trust_agent"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1077
    const-string v0, "manage_trust_agents"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    :cond_3
    return-object v1
.end method
