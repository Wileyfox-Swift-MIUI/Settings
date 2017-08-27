.class public final enum Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;
.super Ljava/lang/Enum;
.source "AudioControlService.java"


# static fields
.field public static final enum bxF:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

.field public static final enum bxG:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

.field public static final enum bxH:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

.field private static final synthetic bxI:[Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    new-instance v0, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v2}, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;->bxF:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    .line 132
    new-instance v0, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    const-string v1, "DEL"

    invoke-direct {v0, v1, v3}, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;->bxG:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    .line 133
    new-instance v0, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    const-string v1, "CHANGED"

    invoke-direct {v0, v1, v4}, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;->bxH:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    .line 130
    const/4 v0, 0x3

    new-array v0, v0, [Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    sget-object v1, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;->bxF:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    aput-object v1, v0, v2

    sget-object v1, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;->bxG:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    aput-object v1, v0, v3

    sget-object v1, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;->bxH:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    aput-object v1, v0, v4

    sput-object v0, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;->bxI:[Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;
    .locals 1

    .prologue
    .line 130
    const-class v0, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    return-object v0
.end method

.method public static values()[Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;->bxI:[Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    invoke-virtual {v0}, [Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    return-object v0
.end method
