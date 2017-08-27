.class public Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiSecurityBluetoothDeviceInfoFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private fx:Landroid/security/MiuiLockPatternUtils;

.field private mIsConnected:Z

.field private sr:Lmiui/bluetooth/ble/MiBleUnlockProfile;

.field private ss:Landroid/widget/ImageView;

.field private st:Landroid/widget/ImageView;

.field private su:Landroid/widget/TextView;

.field private sv:Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;

.field sw:Landroid/os/AsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->fx:Landroid/security/MiuiLockPatternUtils;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mIsConnected:Z

    .line 45
    new-instance v0, Lcom/android/settings/eQ;

    invoke-direct {v0, p0}, Lcom/android/settings/eQ;-><init>(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->sv:Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;

    .line 82
    iput-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->sw:Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->st:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mIsConnected:Z

    return v0
.end method

.method static synthetic c(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->su:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->sv:Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->sr:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    return-object v0
.end method

.method private fI()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->sw:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->sw:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->sw:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->sw:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 179
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 120
    const v0, 0x7f040142

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 121
    const v0, 0x7f1302d4

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 122
    const v1, 0x7f1302cf

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 123
    const v2, 0x7f1302d1

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->ss:Landroid/widget/ImageView;

    .line 124
    const v2, 0x7f1302d2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->st:Landroid/widget/ImageView;

    .line 125
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->fx:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->getBluetoothNameToUnlock()Ljava/lang/String;

    move-result-object v2

    .line 126
    iget-object v4, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->fx:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v4}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 131
    :cond_0
    const-string v5, "MI Band 2"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 132
    iget-object v5, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->ss:Landroid/widget/ImageView;

    const v6, 0x7f020057

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    iget-object v5, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->st:Landroid/widget/ImageView;

    const v6, 0x7f020054

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    :cond_1
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 140
    const-string v2, "%s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v4, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :goto_1
    new-instance v1, Lcom/android/settings/eS;

    invoke-direct {v1, p0}, Lcom/android/settings/eS;-><init>(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v0, 0x7f1302d0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->su:Landroid/widget/TextView;

    .line 171
    return-object v3

    .line 134
    :cond_2
    if-eqz v2, :cond_1

    const-string v5, "Amazfit Watch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 135
    iget-object v5, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->ss:Landroid/widget/ImageView;

    const v6, 0x7f020056

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    iget-object v5, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->st:Landroid/widget/ImageView;

    const v6, 0x7f020053

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 142
    :cond_3
    const-string v5, "%s(%s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    aput-object v4, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 202
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 204
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.keyguard.bluetoothdeviceunlock.disable"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->fx:Landroid/security/MiuiLockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothUnlockEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->fx:Landroid/security/MiuiLockPatternUtils;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothAddressToUnlock(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->fx:Landroid/security/MiuiLockPatternUtils;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothNameToUnlock(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->fx:Landroid/security/MiuiLockPatternUtils;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothKeyToUnlock(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->finish()V

    .line 212
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->fx:Landroid/security/MiuiLockPatternUtils;

    .line 95
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->fx:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/settings/eR;

    invoke-direct {v3, p0}, Lcom/android/settings/eR;-><init>(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)V

    invoke-direct {v1, v2, v0, v3}, Lmiui/bluetooth/ble/MiBleUnlockProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V

    iput-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->sr:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    .line 114
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 192
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->fI()V

    .line 193
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->sr:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->sr:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->unregisterUnlockListener()V

    .line 195
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->sr:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->disconnect()V

    .line 198
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 184
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->sr:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->sr:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->connect()V

    .line 187
    :cond_0
    return-void
.end method
