.class public Lcom/android/settings/hs;
.super Lmiui/app/Activity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/android/settings/an;


# static fields
.field private static zS:Z

.field private static final zW:[Ljava/lang/String;

.field private static final zX:[Ljava/lang/String;


# instance fields
.field private Aa:Landroid/content/BroadcastReceiver;

.field private final Ab:Lcom/android/settings/search/b;

.field private Ac:Z

.field private Ad:Z

.field private Ae:Z

.field private Af:Z

.field private Ag:Landroid/view/ViewGroup;

.field private Ah:Landroid/widget/SearchView;

.field private Ai:Landroid/view/MenuItem;

.field private Aj:Z

.field private Ak:Lcom/android/settings/dashboard/e;

.field private Al:Ljava/lang/String;

.field private Am:Z

.field private An:I

.field private Ao:Landroid/content/Intent;

.field private em:Landroid/widget/Button;

.field private mCategories:Ljava/util/ArrayList;

.field private mHandler:Landroid/os/Handler;

.field private mt:Lcom/android/settings/widget/SwitchBar;

.field private tP:[I

.field private wA:Landroid/content/SharedPreferences;

.field private zT:Ljava/lang/String;

.field private zU:Ljava/lang/CharSequence;

.field private zV:I

.field private zY:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private zZ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 265
    sput-boolean v3, Lcom/android/settings/hs;->zS:Z

    .line 302
    const/16 v0, 0x48

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-class v2, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/settings/TetherSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/android/settings/LocalePicker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/android/settings/inputmethod/UserDictionaryList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/android/settings/HomeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lcom/android/settings/applications/ManageAssist;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lcom/android/settings/notification/NotificationStation;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Lcom/android/settings/applications/UsageAccessDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-class v2, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-class v2, Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-class v2, Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-class v2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-class v2, Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-class v2, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-class v2, Lcom/android/settings/nfc/AndroidBeam;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-class v2, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-class v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-class v2, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-class v2, Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-class v2, Lcom/android/settings/CryptKeeperSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-class v2, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-class v2, Lcom/android/settings/DreamSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-class v2, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-class v2, Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-class v2, Lcom/android/settings/notification/ZenAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-class v2, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-class v2, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-class v2, Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-class v2, Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-class v2, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-class v2, Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-class v2, Lcom/android/settings/notification/NotificationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-class v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-class v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-class v2, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-class v2, Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-class v2, Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-class v2, Lcom/android/settings/notification/OtherSoundSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-class v2, Lcom/android/settings/ApnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-class v2, Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-class v2, Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-class v2, Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-class v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-class v2, Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-class v2, Lcom/android/settings/notification/ZenModeExternalRuleSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-class v2, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-class v2, Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-class v2, Lcom/android/settings/applications/ProcessStatsSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-class v2, Lcom/android/settings/applications/DrawOverlayDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-class v2, Lcom/android/settings/applications/WriteSettingsDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/hs;->zW:[Ljava/lang/String;

    .line 378
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/hs;->zX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 273
    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/hs;->tP:[I

    .line 385
    iput-boolean v2, p0, Lcom/android/settings/hs;->zZ:Z

    .line 386
    new-instance v0, Lcom/android/settings/ht;

    invoke-direct {v0, p0}, Lcom/android/settings/ht;-><init>(Lcom/android/settings/hs;)V

    iput-object v0, p0, Lcom/android/settings/hs;->Aa:Landroid/content/BroadcastReceiver;

    .line 401
    new-instance v0, Lcom/android/settings/search/b;

    invoke-direct {v0}, Lcom/android/settings/search/b;-><init>()V

    iput-object v0, p0, Lcom/android/settings/hs;->Ab:Lcom/android/settings/search/b;

    .line 419
    iput-boolean v1, p0, Lcom/android/settings/hs;->Aj:Z

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/hs;->mCategories:Ljava/util/ArrayList;

    .line 428
    new-instance v0, Lcom/android/settings/hu;

    invoke-direct {v0, p0}, Lcom/android/settings/hu;-><init>(Lcom/android/settings/hs;)V

    iput-object v0, p0, Lcom/android/settings/hs;->mHandler:Landroid/os/Handler;

    .line 442
    iput-boolean v1, p0, Lcom/android/settings/hs;->Am:Z

    .line 443
    iput v2, p0, Lcom/android/settings/hs;->An:I

    return-void

    .line 273
    nop

    :array_0
    .array-data 4
        0x7f1303c9
        0x7f1303ca
        0x7f1303c6
        0x7f1303cc
        0x7f1303cb
        0x7f1303ce
        0x7f1303cf
        0x7f1303d2
        0x7f1303d1
        0x7f1303d4
        0x7f1303d3
        0x7f1303d5
        0x7f1303da
        0x7f1303db
        0x7f1303dc
        0x7f1303dd
        0x7f1303d7
        0x7f1303c1
        0x7f1303df
        0x7f1303e0
        0x7f1303be
        0x7f1303e1
        0x7f1303e2
        0x7f1303d8
        0x7f1303d0
        0x7f130099
    .end array-data
.end method

.method private X(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 483
    iget-object v0, p0, Lcom/android/settings/hs;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 485
    iput v1, v0, Landroid/os/Message;->what:I

    .line 486
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "msg_data_force_refresh"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 488
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1095
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/hs;->isValidFragment(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1096
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fragment for this activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1100
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1129
    :goto_0
    return-object v0

    .line 1104
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    if-nez p2, :cond_2

    .line 1109
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1111
    :cond_2
    const-string v0, ":android:show_fragment_title"

    invoke-virtual {p2, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1113
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1114
    invoke-virtual {p0}, Lcom/android/settings/hs;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1115
    const v2, 0x7f1302e2

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1116
    if-eqz p7, :cond_3

    .line 1117
    iget-object v2, p0, Lcom/android/settings/hs;->Ag:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1119
    :cond_3
    if-eqz p4, :cond_4

    .line 1120
    const-string v2, ":settings:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1122
    :cond_4
    if-lez p5, :cond_6

    .line 1123
    invoke-virtual {v1, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1127
    :cond_5
    :goto_1
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1128
    invoke-virtual {p0}, Lcom/android/settings/hs;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0

    .line 1124
    :cond_6
    if-eqz p6, :cond_5

    .line 1125
    invoke-virtual {v1, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 1105
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Lcom/android/settings/dashboard/DashboardCategory;
    .locals 3

    .prologue
    .line 1469
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardCategory;

    .line 1470
    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1474
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(ILjava/util/List;Landroid/content/Context;)V
    .locals 12

    .prologue
    .line 1152
    const/4 v1, 0x0

    .line 1154
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 1155
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1159
    :cond_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 1163
    :cond_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1164
    const-string v3, "dashboard-categories"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1165
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XML document must start with <preference-categories> tag; found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1301
    :catch_0
    move-exception v0

    .line 1302
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error parsing categories"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1306
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v0

    .line 1170
    :cond_3
    const/4 v0, 0x0

    .line 1172
    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 1174
    :cond_4
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1c

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v3, :cond_1c

    .line 1175
    :cond_5
    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    .line 1179
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1180
    const-string v5, "dashboard-category"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1181
    new-instance v4, Lcom/android/settings/dashboard/DashboardCategory;

    invoke-direct {v4}, Lcom/android/settings/dashboard/DashboardCategory;-><init>()V

    .line 1183
    sget-object v5, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    invoke-virtual {p2, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1185
    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v4, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    .line 1189
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 1191
    if-eqz v6, :cond_6

    iget v7, v6, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    .line 1192
    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_f

    .line 1193
    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    iput v6, v4, Lcom/android/settings/dashboard/DashboardCategory;->titleRes:I

    .line 1198
    :cond_6
    :goto_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1199
    sget-object v5, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p2, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1201
    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 1203
    if-eqz v6, :cond_7

    iget v7, v6, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_7

    .line 1204
    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_10

    .line 1205
    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/settings/dashboard/DashboardCategory;->key:Ljava/lang/String;

    .line 1210
    :cond_7
    :goto_2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1212
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 1214
    :cond_8
    :goto_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1a

    const/4 v7, 0x3

    if-ne v6, v7, :cond_9

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v5, :cond_1a

    .line 1215
    :cond_9
    const/4 v7, 0x3

    if-eq v6, v7, :cond_8

    const/4 v7, 0x4

    if-eq v6, v7, :cond_8

    .line 1219
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1220
    const-string v7, "dashboard-tile"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1221
    new-instance v6, Lcom/android/settings/dashboard/DashboardTile;

    invoke-direct {v6}, Lcom/android/settings/dashboard/DashboardTile;-><init>()V

    .line 1223
    sget-object v7, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    invoke-virtual {p2, v2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1225
    const/4 v8, 0x1

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, v6, Lcom/android/settings/dashboard/DashboardTile;->id:J

    .line 1228
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    .line 1230
    if-eqz v8, :cond_a

    iget v9, v8, Landroid/util/TypedValue;->type:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_a

    .line 1231
    iget v9, v8, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_11

    .line 1232
    iget v8, v8, Landroid/util/TypedValue;->resourceId:I

    iput v8, v6, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    .line 1237
    :cond_a
    :goto_4
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    .line 1239
    if-eqz v8, :cond_b

    iget v9, v8, Landroid/util/TypedValue;->type:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_b

    .line 1240
    iget v9, v8, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_12

    .line 1241
    iget v8, v8, Landroid/util/TypedValue;->resourceId:I

    iput v8, v6, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    .line 1246
    :cond_b
    :goto_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v6, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    .line 1248
    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    .line 1250
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1252
    if-nez v0, :cond_c

    .line 1253
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1256
    :cond_c
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 1258
    :cond_d
    :goto_6
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_15

    const/4 v9, 0x3

    if-ne v8, v9, :cond_e

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v7, :cond_15

    .line 1259
    :cond_e
    const/4 v9, 0x3

    if-eq v8, v9, :cond_d

    const/4 v9, 0x4

    if-eq v8, v9, :cond_d

    .line 1263
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1264
    const-string v9, "extra"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1265
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "extra"

    invoke-virtual {v8, v9, v2, v0}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1267
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 1303
    :catch_1
    move-exception v0

    .line 1304
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error parsing categories"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1195
    :cond_f
    :try_start_4
    iget-object v6, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v6, v4, Lcom/android/settings/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 1207
    :cond_10
    iget-object v6, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/settings/dashboard/DashboardCategory;->key:Ljava/lang/String;

    goto/16 :goto_2

    .line 1234
    :cond_11
    iget-object v8, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v8, v6, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    goto :goto_4

    .line 1243
    :cond_12
    iget-object v8, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v8, v6, Lcom/android/settings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    goto :goto_5

    .line 1269
    :cond_13
    const-string v9, "intent"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1270
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v1, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v8

    iput-object v8, v6, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto :goto_6

    .line 1274
    :cond_14
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 1278
    :cond_15
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v7

    if-lez v7, :cond_16

    .line 1279
    iput-object v0, v6, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1280
    const/4 v0, 0x0

    .line 1284
    :cond_16
    iget-wide v8, v6, Lcom/android/settings/dashboard/DashboardTile;->id:J

    const-wide/32 v10, 0x7f1303cb

    cmp-long v7, v8, v10

    if-nez v7, :cond_17

    invoke-static {p2}, Lcom/android/settings/iH;->ag(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1285
    :cond_17
    invoke-virtual {v4, v6}, Lcom/android/settings/dashboard/DashboardCategory;->b(Lcom/android/settings/dashboard/DashboardTile;)V

    goto/16 :goto_3

    .line 1288
    :cond_18
    const-string v7, "external-tiles"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1289
    invoke-virtual {v4}, Lcom/android/settings/dashboard/DashboardCategory;->pa()I

    move-result v6

    iput v6, v4, Lcom/android/settings/dashboard/DashboardCategory;->VD:I

    goto/16 :goto_3

    .line 1291
    :cond_19
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 1295
    :cond_1a
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1297
    :cond_1b
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1306
    :cond_1c
    if-eqz v1, :cond_1d

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1308
    :cond_1d
    return-void
.end method

.method private a(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 1

    .prologue
    .line 837
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v0

    .line 838
    if-lez v0, :cond_1

    .line 839
    invoke-virtual {p0, v0}, Lcom/android/settings/hs;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 843
    :goto_0
    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {p0, v0}, Lcom/android/settings/hs;->setTitle(Ljava/lang/CharSequence;)V

    .line 846
    :cond_0
    return-void

    .line 841
    :cond_1
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/hs;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/settings/hs;->n(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;Landroid/os/UserHandle;Ljava/util/Map;)V
    .locals 7

    .prologue
    .line 1422
    invoke-virtual {p0}, Lcom/android/settings/hs;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1423
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1424
    const/16 v2, 0x80

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 1426
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1427
    iget-boolean v2, v0, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v2, :cond_0

    .line 1431
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1432
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1433
    if-eqz v3, :cond_1

    const-string v4, "com.android.settings.category"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1434
    :cond_1
    const-string v2, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " for action "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " missing metadata "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v3, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "com.android.settings.category"

    goto :goto_1

    .line 1439
    :cond_3
    const-string v4, "com.android.settings.category"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1440
    invoke-direct {p0, p1, v3}, Lcom/android/settings/hs;->a(Ljava/util/List;Ljava/lang/String;)Lcom/android/settings/dashboard/DashboardCategory;

    move-result-object v4

    .line 1441
    if-nez v4, :cond_4

    .line 1442
    const-string v2, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " has unknown "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "category key "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1446
    :cond_4
    new-instance v3, Landroid/util/Pair;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v0, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1448
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardTile;

    .line 1449
    if-nez v0, :cond_5

    .line 1450
    new-instance v0, Lcom/android/settings/dashboard/DashboardTile;

    invoke-direct {v0}, Lcom/android/settings/dashboard/DashboardTile;-><init>()V

    .line 1451
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    .line 1453
    invoke-static {p0, v0}, Lcom/android/settings/iH;->a(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardTile;)Z

    .line 1455
    iget v2, v4, Lcom/android/settings/dashboard/DashboardCategory;->VD:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_6

    .line 1458
    invoke-virtual {v4, v0}, Lcom/android/settings/dashboard/DashboardCategory;->b(Lcom/android/settings/dashboard/DashboardTile;)V

    .line 1462
    :goto_2
    invoke-interface {p3, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    :cond_5
    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->VK:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1460
    :cond_6
    iget v2, v4, Lcom/android/settings/dashboard/DashboardCategory;->VD:I

    invoke-virtual {v4, v2, v0}, Lcom/android/settings/dashboard/DashboardCategory;->a(ILcom/android/settings/dashboard/DashboardTile;)V

    goto :goto_2

    .line 1466
    :cond_7
    return-void
.end method

.method private a(Lcom/android/settings/dashboard/DashboardTile;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1479
    const-string v2, "home_prefs"

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/hs;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1480
    const-string v3, "do_show"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1511
    :goto_0
    return v0

    .line 1485
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/hs;->hO()I

    move-result v3

    iput v3, p0, Lcom/android/settings/hs;->An:I

    .line 1486
    iget v3, p0, Lcom/android/settings/hs;->An:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 1491
    sget-boolean v3, Lcom/android/settings/hs;->zS:Z

    if-eqz v3, :cond_1

    .line 1492
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/settings/hs;->zS:Z

    .line 1493
    invoke-static {p0}, Lcom/android/settings/dashboard/d;->c(Landroid/app/Activity;)V

    :cond_1
    move v0, v1

    .line 1495
    goto :goto_0

    .line 1500
    :cond_2
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    if-nez v1, :cond_3

    .line 1501
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p1, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1503
    :cond_3
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const-string v3, "show"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "do_show"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1505
    :catch_0
    move-exception v1

    .line 1507
    const-string v3, "Settings"

    const-string v4, "Problem looking up home activity!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/settings/hs;)Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/settings/hs;->zZ:Z

    return v0
.end method

.method static synthetic a(Lcom/android/settings/hs;Z)Z
    .locals 0

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/android/settings/hs;->zZ:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/hs;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/hs;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/hs;Z)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/settings/hs;->X(Z)V

    return-void
.end method

.method private static h(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 546
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 547
    if-eqz v0, :cond_0

    const-string v1, "com.android.settings.SHORTCUT"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hO()I
    .locals 2

    .prologue
    .line 777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 778
    invoke-virtual {p0}, Lcom/android/settings/hs;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 779
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private hP()I
    .locals 3

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/android/settings/hs;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 820
    if-nez v0, :cond_1

    .line 821
    iget v0, p0, Lcom/android/settings/hs;->zV:I

    if-lez v0, :cond_0

    .line 822
    iget v0, p0, Lcom/android/settings/hs;->zV:I

    invoke-virtual {p0, v0}, Lcom/android/settings/hs;->setTitle(I)V

    .line 826
    :goto_0
    const/4 v0, 0x0

    .line 832
    :goto_1
    return v0

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/android/settings/hs;->zU:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/hs;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 829
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/hs;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v1

    .line 830
    invoke-direct {p0, v1}, Lcom/android/settings/hs;->a(Landroid/app/FragmentManager$BackStackEntry;)V

    goto :goto_1
.end method

.method private hQ()V
    .locals 3

    .prologue
    .line 1516
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/hs;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/hs;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1518
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1

    .line 1524
    :cond_0
    :goto_0
    return-void

    .line 1519
    :cond_1
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/hs;->zT:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1520
    :catch_0
    move-exception v0

    .line 1522
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get Metadata for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/hs;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hR()V
    .locals 1

    .prologue
    .line 1541
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/hs;->zS:Z

    .line 1542
    return-void
.end method

.method private hS()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1584
    iget-object v0, p0, Lcom/android/settings/hs;->Ak:Lcom/android/settings/dashboard/e;

    if-eqz v0, :cond_0

    .line 1597
    :goto_0
    return-void

    .line 1587
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/hs;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f1302e2

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 1588
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/settings/dashboard/e;

    if-eqz v1, :cond_1

    .line 1589
    check-cast v0, Lcom/android/settings/dashboard/e;

    iput-object v0, p0, Lcom/android/settings/hs;->Ak:Lcom/android/settings/dashboard/e;

    .line 1595
    :goto_1
    iget-object v0, p0, Lcom/android/settings/hs;->Ak:Lcom/android/settings/dashboard/e;

    iget-object v1, p0, Lcom/android/settings/hs;->Ah:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/e;->setSearchView(Landroid/widget/SearchView;)V

    .line 1596
    iput-boolean v4, p0, Lcom/android/settings/hs;->Aj:Z

    goto :goto_0

    .line 1591
    :cond_1
    const-class v0, Lcom/android/settings/dashboard/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const v5, 0x7f0a09e8

    move-object v0, p0

    move-object v6, v2

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/hs;->a(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/e;

    iput-object v0, p0, Lcom/android/settings/hs;->Ak:Lcom/android/settings/dashboard/e;

    goto :goto_1
.end method

.method private hU()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1604
    iput-boolean v1, p0, Lcom/android/settings/hs;->Am:Z

    .line 1605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/hs;->Ak:Lcom/android/settings/dashboard/e;

    .line 1606
    iput-boolean v1, p0, Lcom/android/settings/hs;->Aj:Z

    .line 1607
    invoke-virtual {p0}, Lcom/android/settings/hs;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":settings:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 1609
    iget-object v0, p0, Lcom/android/settings/hs;->Ai:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/android/settings/hs;->Ai:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1612
    :cond_0
    return-void
.end method

.method private static i(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 551
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 552
    if-nez v2, :cond_1

    .line 558
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 555
    :goto_1
    sget-object v3, Lcom/android/settings/hs;->zX:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 556
    sget-object v3, Lcom/android/settings/hs;->zX:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 555
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private j(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 783
    const-string v0, ":settings:show_fragment_title_resid"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 784
    if-lez v0, :cond_1

    .line 785
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/hs;->zU:Ljava/lang/CharSequence;

    .line 786
    iput v0, p0, Lcom/android/settings/hs;->zV:I

    .line 788
    const-string v0, ":settings:show_fragment_title_res_package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 790
    if-eqz v0, :cond_0

    .line 792
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/hs;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 794
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/hs;->zV:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/hs;->zU:Ljava/lang/CharSequence;

    .line 795
    iget-object v1, p0, Lcom/android/settings/hs;->zU:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/hs;->setTitle(Ljava/lang/CharSequence;)V

    .line 796
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/hs;->zV:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :goto_0
    return-void

    .line 798
    :catch_0
    move-exception v1

    .line 799
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find package"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 802
    :cond_0
    iget v0, p0, Lcom/android/settings/hs;->zV:I

    invoke-virtual {p0, v0}, Lcom/android/settings/hs;->setTitle(I)V

    goto :goto_0

    .line 805
    :cond_1
    iput v1, p0, Lcom/android/settings/hs;->zV:I

    .line 806
    const-string v0, ":settings:show_fragment_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 807
    if-eqz v0, :cond_2

    :goto_1
    iput-object v0, p0, Lcom/android/settings/hs;->zU:Ljava/lang/CharSequence;

    .line 808
    iget-object v0, p0, Lcom/android/settings/hs;->zU:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/hs;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 807
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/hs;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method private k(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/settings/hs;->zT:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/hs;->zT:Ljava/lang/String;

    .line 979
    :cond_0
    :goto_0
    return-object v0

    .line 967
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 968
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 970
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 974
    :cond_3
    const-class v0, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 976
    :cond_4
    const-string v1, "com.android.settings.wifi.WifiSettings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 977
    const-class v0, Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private n(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 1138
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1139
    const v0, 0x7f080024

    invoke-static {v0, p1, p0}, Lcom/android/settings/hs;->a(ILjava/util/List;Landroid/content/Context;)V

    .line 1140
    invoke-direct {p0, p1}, Lcom/android/settings/hs;->o(Ljava/util/List;)V

    .line 1141
    return-void
.end method

.method private o(Ljava/util/List;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1311
    iget-object v0, p0, Lcom/android/settings/hs;->wA:Landroid/content/SharedPreferences;

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v5, "eng"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1315
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/hs;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1317
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    move v6, v3

    .line 1318
    :goto_0
    if-ge v6, v8, :cond_12

    .line 1320
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/DashboardCategory;

    .line 1323
    iget-wide v10, v1, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    long-to-int v2, v10

    .line 1324
    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardCategory;->pa()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v5, v2

    .line 1325
    :goto_1
    if-ltz v5, :cond_11

    .line 1327
    invoke-virtual {v1, v5}, Lcom/android/settings/dashboard/DashboardCategory;->br(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v2

    .line 1329
    iget-wide v10, v2, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v9, v10

    .line 1330
    const v10, 0x7f1303cd

    if-eq v9, v10, :cond_0

    const v10, 0x7f1303d9

    if-ne v9, v10, :cond_3

    .line 1331
    :cond_0
    invoke-static {p0, v2}, Lcom/android/settings/iH;->a(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardTile;)Z

    move-result v2

    if-nez v2, :cond_13

    move v2, v4

    .line 1393
    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/settings/hs;->tP:[I

    invoke-static {v10, v9}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v9

    if-nez v9, :cond_1

    move v2, v4

    .line 1398
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardCategory;->pa()I

    move-result v2

    if-ge v5, v2, :cond_2

    .line 1399
    invoke-virtual {v1, v5}, Lcom/android/settings/dashboard/DashboardCategory;->bq(I)V

    .line 1401
    :cond_2
    add-int/lit8 v2, v5, -0x1

    move v5, v2

    .line 1402
    goto :goto_1

    .line 1334
    :cond_3
    const v10, 0x7f1303ca

    if-ne v9, v10, :cond_4

    .line 1336
    invoke-virtual {p0}, Lcom/android/settings/hs;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v10, "android.hardware.wifi"

    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    move v2, v4

    .line 1337
    goto :goto_2

    .line 1339
    :cond_4
    const v10, 0x7f1303c6

    if-ne v9, v10, :cond_5

    .line 1341
    invoke-virtual {p0}, Lcom/android/settings/hs;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v10, "android.hardware.bluetooth"

    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    move v2, v4

    .line 1342
    goto :goto_2

    .line 1344
    :cond_5
    const v10, 0x7f1303cc

    if-ne v9, v10, :cond_6

    .line 1346
    invoke-static {}, Lcom/android/settings/iH;->isBandwidthControlEnabled()Z

    move-result v2

    if-nez v2, :cond_13

    move v2, v4

    .line 1347
    goto :goto_2

    .line 1349
    :cond_6
    const v10, 0x7f1303d5

    if-ne v9, v10, :cond_7

    .line 1352
    iget-boolean v2, p0, Lcom/android/settings/hs;->zZ:Z

    if-nez v2, :cond_13

    move v2, v4

    .line 1353
    goto :goto_2

    .line 1355
    :cond_7
    const v10, 0x7f1303d0

    if-ne v9, v10, :cond_8

    .line 1356
    invoke-direct {p0, v2}, Lcom/android/settings/hs;->a(Lcom/android/settings/dashboard/DashboardTile;)Z

    move-result v2

    if-nez v2, :cond_13

    move v2, v4

    .line 1357
    goto :goto_2

    .line 1359
    :cond_8
    const v2, 0x7f1303d7

    if-ne v9, v2, :cond_b

    .line 1360
    const-string v2, "user"

    invoke-virtual {p0, v2}, Lcom/android/settings/hs;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserCount()I

    move-result v2

    if-le v2, v4, :cond_9

    .line 1363
    :cond_9
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/android/settings/iH;->iE()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_a
    move v2, v4

    .line 1366
    goto/16 :goto_2

    .line 1368
    :cond_b
    const v2, 0x7f1303d8

    if-ne v9, v2, :cond_e

    .line 1369
    invoke-virtual {p0}, Lcom/android/settings/hs;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v10, "android.hardware.nfc"

    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v4

    .line 1370
    goto/16 :goto_2

    .line 1373
    :cond_c
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    .line 1374
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/hs;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v10, "android.hardware.nfc.hce"

    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_d
    move v2, v4

    .line 1377
    goto/16 :goto_2

    .line 1380
    :cond_e
    const v2, 0x7f1303e2

    if-ne v9, v2, :cond_f

    .line 1381
    invoke-virtual {p0}, Lcom/android/settings/hs;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v10, "android.software.print"

    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 1383
    if-nez v2, :cond_13

    move v2, v4

    .line 1384
    goto/16 :goto_2

    .line 1386
    :cond_f
    const v2, 0x7f1303e3

    if-ne v9, v2, :cond_13

    .line 1387
    if-eqz v7, :cond_10

    const-string v2, "no_debugging_features"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_10
    move v2, v4

    .line 1389
    goto/16 :goto_2

    .line 1318
    :cond_11
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_0

    .line 1404
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/settings/hs;->p(Ljava/util/List;)V

    .line 1405
    return-void

    :cond_13
    move v2, v3

    goto/16 :goto_2
.end method

.method private p(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 1408
    invoke-virtual {p0}, Lcom/android/settings/hs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1418
    :cond_0
    return-void

    .line 1412
    :cond_1
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1414
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 1415
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 1416
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/hs;->a(Ljava/util/List;Landroid/os/UserHandle;Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1040
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1041
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/hs;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1055
    :goto_0
    return-void

    .line 1044
    :cond_0
    if-gez p3, :cond_2

    .line 1045
    if-eqz p4, :cond_1

    .line 1046
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1052
    :goto_1
    iget-boolean v5, p0, Lcom/android/settings/hs;->Af:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/iH;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    goto :goto_0

    .line 1049
    :cond_1
    const-string v4, ""

    goto :goto_1

    :cond_2
    move-object v4, v5

    goto :goto_1
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1067
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/hs;->setResult(ILandroid/content/Intent;)V

    .line 1068
    invoke-virtual {p0}, Lcom/android/settings/hs;->finish()V

    .line 1069
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 940
    invoke-super {p0}, Lmiui/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 941
    invoke-direct {p0, v2}, Lcom/android/settings/hs;->k(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 944
    if-eqz v0, :cond_1

    .line 945
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 946
    const-string v3, ":settings:show_fragment"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 947
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 948
    if-eqz v3, :cond_0

    .line 949
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 953
    :goto_0
    const-string v3, "intent"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 954
    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-object v0, v1

    .line 957
    :goto_1
    return-object v0

    .line 951
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 957
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/android/settings/hs;->em:Landroid/widget/Button;

    return-object v0
.end method

.method public hN()Lcom/android/settings/widget/SwitchBar;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/settings/hs;->mt:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public hT()V
    .locals 1

    .prologue
    .line 1600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/hs;->Am:Z

    .line 1601
    return-void
.end method

.method public hV()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/android/settings/hs;->Ao:Landroid/content/Intent;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/android/settings/hs;->em:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 930
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/hs;->zW:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 931
    sget-object v1, Lcom/android/settings/hs;->zW:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 935
    :cond_0
    return v2

    .line 930
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public l(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1619
    iput-object p1, p0, Lcom/android/settings/hs;->Ao:Landroid/content/Intent;

    .line 1620
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/android/settings/hs;->hP()I

    .line 815
    return-void
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 1562
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 492
    invoke-super {p0, p1}, Lmiui/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 498
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 564
    invoke-direct {p0}, Lcom/android/settings/hs;->hQ()V

    .line 566
    invoke-virtual {p0}, Lcom/android/settings/hs;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 567
    const-string v0, ":settings:show_fragment"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 568
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 569
    const-string v0, ":android:show_fragment"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 571
    :goto_0
    const-class v0, Lcom/android/settings/MiuiLocalePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/android/settings/Settings$UsageAccessSettingsActivity;

    if-eqz v0, :cond_d

    :cond_0
    move v0, v3

    .line 574
    :goto_1
    if-nez v0, :cond_1

    .line 575
    sget v0, Lmiui/R$style;->Theme_Light_Settings_NoTitle:I

    invoke-virtual {p0, v0}, Lcom/android/settings/hs;->setTheme(I)V

    .line 578
    :cond_1
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 586
    const-string v0, "settings:ui_options"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    invoke-virtual {p0}, Lcom/android/settings/hs;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v2, "settings:ui_options"

    invoke-virtual {v8, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setUiOptions(I)V

    .line 590
    :cond_2
    const-string v0, "development"

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/hs;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/hs;->wA:Landroid/content/SharedPreferences;

    .line 597
    invoke-static {v8}, Lcom/android/settings/hs;->h(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v8}, Lcom/android/settings/hs;->i(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ":settings:show_fragment_as_shortcut"

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_3
    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/hs;->Af:Z

    .line 600
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 601
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 603
    const-class v2, Lcom/android/settings/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/hs;->Ae:Z

    .line 605
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 606
    iput-boolean v4, p0, Lcom/android/settings/hs;->Ae:Z

    .line 613
    :cond_4
    instance-of v0, p0, Lcom/android/settings/SubSettings;

    if-nez v0, :cond_5

    const-string v0, ":settings:show_fragment_as_subsetting"

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_5
    move v2, v3

    .line 617
    :goto_3
    if-eqz v2, :cond_6

    .line 619
    invoke-virtual {p0}, Lcom/android/settings/hs;->getThemeResId()I

    move-result v0

    .line 620
    const v5, 0x7f0f0061

    if-eq v0, v5, :cond_6

    const v5, 0x7f0f0063

    if-eq v0, v5, :cond_6

    .line 627
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/hs;->Ae:Z

    if-eqz v0, :cond_10

    const v0, 0x7f04014a

    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/settings/hs;->setContentView(I)V

    .line 631
    const v0, 0x7f1302e2

    invoke-virtual {p0, v0}, Lcom/android/settings/hs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/hs;->Ag:Landroid/view/ViewGroup;

    .line 633
    invoke-virtual {p0}, Lcom/android/settings/hs;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 635
    iget-boolean v0, p0, Lcom/android/settings/hs;->Ae:Z

    if-eqz v0, :cond_7

    .line 637
    invoke-static {p0}, Lcom/android/settings/iH;->ah(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 638
    invoke-virtual {p0}, Lcom/android/settings/hs;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/e;->cp(Landroid/content/Context;)Lcom/android/settings/search/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search/e;->update()V

    .line 644
    :cond_7
    :goto_5
    if-eqz p1, :cond_12

    .line 647
    const-string v0, ":settings:search_menu_expanded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/hs;->Aj:Z

    .line 648
    const-string v0, ":settings:search_query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/hs;->Al:Ljava/lang/String;

    .line 650
    invoke-direct {p0, v8}, Lcom/android/settings/hs;->j(Landroid/content/Intent;)V

    .line 652
    const-string v0, ":settings:categories"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 654
    if-eqz v0, :cond_8

    .line 655
    iget-object v1, p0, Lcom/android/settings/hs;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 656
    iget-object v1, p0, Lcom/android/settings/hs;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 657
    invoke-direct {p0}, Lcom/android/settings/hs;->hP()I

    .line 660
    :cond_8
    const-string v0, ":settings:show_home_as_up"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/hs;->Ac:Z

    .line 661
    const-string v0, ":settings:show_search"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/hs;->Ad:Z

    .line 662
    const-string v0, ":settings:home_activities_count"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/hs;->An:I

    .line 711
    :goto_6
    iput-boolean v4, p0, Lcom/android/settings/hs;->Ad:Z

    .line 713
    const v0, 0x7f1302e3

    invoke-virtual {p0, v0}, Lcom/android/settings/hs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 714
    instance-of v1, v0, Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_9

    .line 715
    check-cast v0, Lcom/android/settings/widget/SwitchBar;

    iput-object v0, p0, Lcom/android/settings/hs;->mt:Lcom/android/settings/widget/SwitchBar;

    .line 720
    :cond_9
    const-string v0, "extra_prefs_show_button_bar"

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 722
    const v0, 0x7f130136

    invoke-virtual {p0, v0}, Lcom/android/settings/hs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 723
    if-eqz v0, :cond_c

    .line 724
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 726
    const v0, 0x7f13021c

    invoke-virtual {p0, v0}, Lcom/android/settings/hs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 727
    new-instance v1, Lcom/android/settings/hv;

    invoke-direct {v1, p0}, Lcom/android/settings/hv;-><init>(Lcom/android/settings/hs;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    const v1, 0x7f130079

    invoke-virtual {p0, v1}, Lcom/android/settings/hs;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 734
    new-instance v2, Lcom/android/settings/hw;

    invoke-direct {v2, p0}, Lcom/android/settings/hw;-><init>(Lcom/android/settings/hs;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 740
    const v2, 0x7f13007a

    invoke-virtual {p0, v2}, Lcom/android/settings/hs;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/hs;->em:Landroid/widget/Button;

    .line 741
    iget-object v2, p0, Lcom/android/settings/hs;->em:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/hx;

    invoke-direct {v3, p0}, Lcom/android/settings/hx;-><init>(Lcom/android/settings/hs;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 749
    const-string v2, "extra_prefs_set_next_text"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 750
    const-string v2, "extra_prefs_set_next_text"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 751
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 752
    iget-object v2, p0, Lcom/android/settings/hs;->em:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 758
    :cond_a
    :goto_7
    const-string v2, "extra_prefs_set_back_text"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 759
    const-string v2, "extra_prefs_set_back_text"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 760
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 761
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 767
    :cond_b
    :goto_8
    const-string v0, "extra_prefs_show_skip"

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 768
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 773
    :cond_c
    invoke-direct {p0}, Lcom/android/settings/hs;->hO()I

    move-result v0

    iput v0, p0, Lcom/android/settings/hs;->An:I

    .line 774
    return-void

    :cond_d
    move v0, v4

    .line 571
    goto/16 :goto_1

    :cond_e
    move v0, v4

    .line 597
    goto/16 :goto_2

    :cond_f
    move v2, v4

    .line 613
    goto/16 :goto_3

    .line 627
    :cond_10
    const v0, 0x7f04014b

    goto/16 :goto_4

    .line 640
    :cond_11
    const-string v0, "Settings"

    const-string v5, "Cannot update the Indexer as we are running low on storage space!"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 665
    :cond_12
    iget-boolean v0, p0, Lcom/android/settings/hs;->Ae:Z

    if-nez v0, :cond_17

    .line 666
    iput-boolean v4, p0, Lcom/android/settings/hs;->Ad:Z

    .line 668
    iget-boolean v0, p0, Lcom/android/settings/hs;->Af:Z

    if-eqz v0, :cond_15

    .line 669
    iput-boolean v2, p0, Lcom/android/settings/hs;->Ac:Z

    .line 675
    :goto_9
    invoke-direct {p0, v8}, Lcom/android/settings/hs;->j(Landroid/content/Intent;)V

    .line 679
    const-string v0, ":android:show_fragment_args"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 680
    if-nez v2, :cond_13

    .line 681
    const-string v0, ":settings:show_fragment_args"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 683
    :cond_13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 684
    iget-object v1, p0, Lcom/android/settings/hs;->zT:Ljava/lang/String;

    .line 687
    :cond_14
    iget v5, p0, Lcom/android/settings/hs;->zV:I

    iget-object v6, p0, Lcom/android/settings/hs;->zU:Ljava/lang/CharSequence;

    move-object v0, p0

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/hs;->a(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_6

    .line 670
    :cond_15
    if-eqz v2, :cond_16

    .line 671
    iput-boolean v3, p0, Lcom/android/settings/hs;->Ac:Z

    goto :goto_9

    .line 673
    :cond_16
    iput-boolean v4, p0, Lcom/android/settings/hs;->Ac:Z

    goto :goto_9

    .line 691
    :cond_17
    iput-boolean v4, p0, Lcom/android/settings/hs;->Ac:Z

    .line 693
    iput-boolean v3, p0, Lcom/android/settings/hs;->Ad:Z

    .line 694
    const v0, 0x7f0a09e7

    iput v0, p0, Lcom/android/settings/hs;->zV:I

    .line 698
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0, v0}, Lcom/android/settings/hs;->startActivity(Landroid/content/Intent;)V

    .line 700
    invoke-virtual {p0}, Lcom/android/settings/hs;->finish()V

    goto/16 :goto_6

    .line 755
    :cond_18
    iget-object v3, p0, Lcom/android/settings/hs;->em:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 764
    :cond_19
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_1a
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 511
    iget-boolean v0, p0, Lcom/android/settings/hs;->Ad:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 542
    :goto_0
    return v0

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/hs;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 516
    const v3, 0x7f140005

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 519
    iget-object v3, p0, Lcom/android/settings/hs;->Al:Ljava/lang/String;

    .line 521
    const v0, 0x7f13041f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/hs;->Ai:Landroid/view/MenuItem;

    .line 522
    iget-object v0, p0, Lcom/android/settings/hs;->Ai:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/android/settings/hs;->Ah:Landroid/widget/SearchView;

    .line 524
    iget-object v0, p0, Lcom/android/settings/hs;->Ai:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/hs;->Ah:Landroid/widget/SearchView;

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 525
    goto :goto_0

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/android/settings/hs;->Ak:Lcom/android/settings/dashboard/e;

    if-eqz v0, :cond_3

    .line 529
    iget-object v0, p0, Lcom/android/settings/hs;->Ak:Lcom/android/settings/dashboard/e;

    iget-object v1, p0, Lcom/android/settings/hs;->Ah:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/e;->setSearchView(Landroid/widget/SearchView;)V

    .line 534
    :cond_3
    iget-object v0, p0, Lcom/android/settings/hs;->Ah:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 535
    iget-object v0, p0, Lcom/android/settings/hs;->Ah:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 537
    iget-boolean v0, p0, Lcom/android/settings/hs;->Aj:Z

    if-eqz v0, :cond_4

    .line 538
    iget-object v0, p0, Lcom/android/settings/hs;->Ai:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 540
    :cond_4
    iget-object v0, p0, Lcom/android/settings/hs;->Ah:Landroid/widget/SearchView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    move v0, v2

    .line 542
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 920
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 922
    iget-object v0, p0, Lcom/android/settings/hs;->wA:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/hs;->zY:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 924
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/hs;->zY:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 925
    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 1575
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/hs;->Ai:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1576
    iget-boolean v0, p0, Lcom/android/settings/hs;->Aj:Z

    if-eqz v0, :cond_0

    .line 1577
    invoke-direct {p0}, Lcom/android/settings/hs;->hU()V

    .line 1580
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 1567
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/hs;->Ai:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1568
    invoke-direct {p0}, Lcom/android/settings/hs;->hS()V

    .line 1570
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 909
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 910
    iget-boolean v0, p0, Lcom/android/settings/hs;->Ae:Z

    if-eqz v0, :cond_0

    .line 911
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/android/settings/hs;->Aa:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/hs;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 916
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    .line 461
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 462
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    const v3, 0x7f0a03ab

    .line 472
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/hs;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 474
    const/4 v0, 0x1

    return v0

    .line 464
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 467
    const v3, 0x7f0a01b7

    goto :goto_0

    .line 469
    :cond_2
    const v3, 0x7f0a01b5

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1553
    iput-object p1, p0, Lcom/android/settings/hs;->Al:Ljava/lang/String;

    .line 1554
    iget-object v0, p0, Lcom/android/settings/hs;->Ak:Lcom/android/settings/dashboard/e;

    if-nez v0, :cond_0

    .line 1555
    const/4 v0, 0x0

    .line 1557
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/hs;->Ak:Lcom/android/settings/dashboard/e;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/e;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1546
    invoke-direct {p0}, Lcom/android/settings/hs;->hS()V

    .line 1547
    iput-object p1, p0, Lcom/android/settings/hs;->Al:Ljava/lang/String;

    .line 1548
    iget-object v0, p0, Lcom/android/settings/hs;->Ak:Lcom/android/settings/dashboard/e;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/e;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 877
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 878
    iget-boolean v0, p0, Lcom/android/settings/hs;->Ae:Z

    if-eqz v0, :cond_0

    .line 879
    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 882
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/hs;->hO()I

    move-result v0

    .line 883
    iget v1, p0, Lcom/android/settings/hs;->An:I

    if-eq v0, v1, :cond_1

    .line 884
    iput v0, p0, Lcom/android/settings/hs;->An:I

    .line 885
    invoke-direct {p0, v2}, Lcom/android/settings/hs;->X(Z)V

    .line 888
    :cond_1
    new-instance v0, Lcom/android/settings/hy;

    invoke-direct {v0, p0}, Lcom/android/settings/hy;-><init>(Lcom/android/settings/hs;)V

    iput-object v0, p0, Lcom/android/settings/hs;->zY:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 894
    iget-object v0, p0, Lcom/android/settings/hs;->wA:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/hs;->zY:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 897
    iget-object v0, p0, Lcom/android/settings/hs;->Aa:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/hs;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 902
    iget-boolean v0, p0, Lcom/android/settings/hs;->Ad:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/hs;->Al:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 903
    iget-object v0, p0, Lcom/android/settings/hs;->Al:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/hs;->onQueryTextSubmit(Ljava/lang/String;)Z

    .line 905
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 850
    invoke-super {p0, p1}, Lmiui/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 852
    iget-object v0, p0, Lcom/android/settings/hs;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 853
    const-string v0, ":settings:categories"

    iget-object v1, p0, Lcom/android/settings/hs;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 856
    :cond_0
    const-string v0, ":settings:show_home_as_up"

    iget-boolean v1, p0, Lcom/android/settings/hs;->Ac:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 857
    const-string v0, ":settings:show_search"

    iget-boolean v1, p0, Lcom/android/settings/hs;->Ad:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 859
    iget-boolean v0, p0, Lcom/android/settings/hs;->Ad:Z

    if-eqz v0, :cond_1

    .line 865
    iget-object v0, p0, Lcom/android/settings/hs;->Ai:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/hs;->Ai:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 866
    :goto_0
    const-string v1, ":settings:search_menu_expanded"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 868
    iget-object v0, p0, Lcom/android/settings/hs;->Ah:Landroid/widget/SearchView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/hs;->Ah:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 869
    :goto_1
    const-string v1, ":settings:search_query"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    :cond_1
    const-string v0, ":settings:home_activities_count"

    iget v1, p0, Lcom/android/settings/hs;->An:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 873
    return-void

    .line 865
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 868
    :cond_3
    const-string v0, ""

    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 502
    invoke-super {p0}, Lmiui/app/Activity;->onStart()V

    .line 504
    iget-boolean v0, p0, Lcom/android/settings/hs;->Am:Z

    if-eqz v0, :cond_0

    .line 505
    invoke-direct {p0}, Lcom/android/settings/hs;->hU()V

    .line 507
    :cond_0
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 1537
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/hs;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Lmiui/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2

    .prologue
    .line 1079
    invoke-virtual {p0}, Lcom/android/settings/hs;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1080
    const v1, 0x7f1302e2

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1081
    if-eqz p2, :cond_0

    .line 1082
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1083
    const-string v1, ":settings:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1087
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1088
    return-void

    .line 1085
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 8

    .prologue
    .line 1003
    const/4 v6, 0x0

    .line 1004
    if-gez p3, :cond_0

    .line 1005
    if-eqz p4, :cond_1

    .line 1006
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1012
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/settings/hs;->Af:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-static/range {v0 .. v7}, Lcom/android/settings/iH;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 1014
    return-void

    .line 1009
    :cond_1
    const-string v6, ""

    goto :goto_0
.end method
