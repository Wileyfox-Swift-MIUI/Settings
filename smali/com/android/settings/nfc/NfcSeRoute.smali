.class public Lcom/android/settings/nfc/NfcSeRoute;
.super Ljava/lang/Object;
.source "NfcSeRoute.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private akt:Landroid/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private vi:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Landroid/preference/ListPreference;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->sz()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/android/settings/nfc/NfcSeRoute;->vi:Landroid/nfc/NfcAdapter;

    .line 46
    iput-object p3, p0, Lcom/android/settings/nfc/NfcSeRoute;->akt:Landroid/preference/ListPreference;

    .line 47
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0a0fab

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSeRoute;->akt:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSeRoute;->akt:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->akt:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->pG()V

    goto :goto_0

    .line 47
    :cond_1
    const v0, 0x7f0a0fb0

    goto :goto_1
.end method

.method private cE(I)V
    .locals 5

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->vi:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setSeRouting"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSeRoute;->vi:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 163
    :goto_1
    const-string v0, "NfcSeRoute"

    const-string v1, "Failed to invoke NfcSeRoute.setSeRouting()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    :catch_1
    move-exception v0

    goto :goto_1

    .line 156
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private pG()V
    .locals 8

    .prologue
    const v2, 0x7f0a0fb4

    const v1, 0x7f0a0faf

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 78
    iget-object v3, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0fac

    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0fb2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 80
    iget-object v5, p0, Lcom/android/settings/nfc/NfcSeRoute;->akt:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->sy()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v7

    aput-object v4, v0, v6

    :goto_1
    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 81
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->sA()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 95
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->akt:Landroid/preference/ListPreference;

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->akt:Landroid/preference/ListPreference;

    sget-boolean v3, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 99
    :goto_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->akt:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 100
    return-void

    .line 78
    :cond_0
    const v0, 0x7f0a0fb1

    goto :goto_0

    .line 80
    :cond_1
    new-array v0, v6, [Ljava/lang/String;

    aput-object v3, v0, v7

    goto :goto_1

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->akt:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-le v0, v6, :cond_2

    .line 85
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->akt:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->akt:Landroid/preference/ListPreference;

    const v1, 0x7f0a0fb3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_3

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->akt:Landroid/preference/ListPreference;

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 89
    iget-object v3, p0, Lcom/android/settings/nfc/NfcSeRoute;->akt:Landroid/preference/ListPreference;

    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    move v1, v2

    .line 96
    goto :goto_2

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private sA()I
    .locals 3

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->vi:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getSeRouting"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSeRoute;->vi:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 146
    :goto_0
    return v0

    .line 140
    :catch_0
    move-exception v0

    .line 145
    :cond_0
    :goto_1
    const-string v0, "NfcSeRoute"

    const-string v1, "Failed to invoke NfcSeRoute.getSeRouting()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x1

    goto :goto_0

    .line 138
    :catch_1
    move-exception v0

    goto :goto_1

    .line 136
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private sy()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    sget-boolean v2, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v2, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.nfc.hce"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 70
    new-instance v2, Lcom/android/settings/nfc/PaymentBackend;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v2}, Lcom/android/settings/nfc/PaymentBackend;->sB()Ljava/util/List;

    move-result-object v2

    .line 72
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 74
    goto :goto_0
.end method

.method private sz()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 122
    const-string v1, "support_se_route"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    .line 125
    :cond_0
    const-string v1, "NfcSeRoute"

    const-string v2, "NfcSeRoute is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->sz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->akt:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 106
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 108
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 112
    :cond_0
    const-string v2, "NfcSeRoute"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set wallet as :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcSeRoute;->cE(I)V

    .line 115
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->pG()V

    .line 118
    :cond_1
    return v1
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->sz()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->pG()V

    .line 58
    :cond_0
    return-void
.end method
