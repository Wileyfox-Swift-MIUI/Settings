.class public final enum Lse/dirac/acs/api/Output;
.super Ljava/lang/Enum;
.source "Output.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final enum bxS:Lse/dirac/acs/api/Output;

.field public static final enum bxT:Lse/dirac/acs/api/Output;

.field private static final synthetic bxU:[Lse/dirac/acs/api/Output;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lse/dirac/acs/api/Output;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v2}, Lse/dirac/acs/api/Output;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/dirac/acs/api/Output;->bxS:Lse/dirac/acs/api/Output;

    .line 9
    new-instance v0, Lse/dirac/acs/api/Output;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v3}, Lse/dirac/acs/api/Output;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/dirac/acs/api/Output;->bxT:Lse/dirac/acs/api/Output;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lse/dirac/acs/api/Output;

    sget-object v1, Lse/dirac/acs/api/Output;->bxS:Lse/dirac/acs/api/Output;

    aput-object v1, v0, v2

    sget-object v1, Lse/dirac/acs/api/Output;->bxT:Lse/dirac/acs/api/Output;

    aput-object v1, v0, v3

    sput-object v0, Lse/dirac/acs/api/Output;->bxU:[Lse/dirac/acs/api/Output;

    .line 14
    new-instance v0, Lse/dirac/acs/api/u;

    invoke-direct {v0}, Lse/dirac/acs/api/u;-><init>()V

    sput-object v0, Lse/dirac/acs/api/Output;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lse/dirac/acs/api/Output;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lse/dirac/acs/api/Output;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/Output;

    return-object v0
.end method

.method public static values()[Lse/dirac/acs/api/Output;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lse/dirac/acs/api/Output;->bxU:[Lse/dirac/acs/api/Output;

    invoke-virtual {v0}, [Lse/dirac/acs/api/Output;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lse/dirac/acs/api/Output;

    return-object v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 32
    invoke-static {}, Lse/dirac/acs/api/Output;->values()[Lse/dirac/acs/api/Output;

    move-result-object v1

    .line 33
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 34
    aget-object v2, v1, v0

    if-ne v2, p0, :cond_0

    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    return-void

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method
