.class public final enum Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;
.super Ljava/lang/Enum;
.source "MiuiAboutPhoneUtils.java"


# static fields
.field public static final enum WH:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

.field public static final enum WI:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

.field public static final enum WJ:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

.field public static final enum WK:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

.field private static final synthetic WL:[Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    const-string v1, "LOW_CONFIGURATION_VERSION"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->WH:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    new-instance v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    const-string v1, "STANDARD_CONFIGURATION_VERSION"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->WI:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    new-instance v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    const-string v1, "HIGH_CONFIGURATION_VERSION"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->WJ:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    new-instance v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    const-string v1, "ENJOY_VERSIION"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->WK:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    sget-object v1, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->WH:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->WI:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->WJ:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->WK:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->WL:[Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->WL:[Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    invoke-virtual {v0}, [Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    return-object v0
.end method
