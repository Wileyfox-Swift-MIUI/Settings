.class public Lse/dirac/acs/api/OutputSettings;
.super Ljava/lang/Object;
.source "OutputSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final bxV:Lse/dirac/acs/api/Device;

.field public final bxW:Lse/dirac/acs/api/Filter;

.field private bxX:Z

.field private bxY:Z

.field private bxZ:Z

.field private bya:Z

.field private final byb:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lse/dirac/acs/api/v;

    invoke-direct {v0}, Lse/dirac/acs/api/v;-><init>()V

    sput-object v0, Lse/dirac/acs/api/OutputSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x7

    new-array v0, v0, [F

    iput-object v0, p0, Lse/dirac/acs/api/OutputSettings;->byb:[F

    .line 241
    :try_start_0
    const-class v0, Lse/dirac/acs/api/Device;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/Device;

    iput-object v0, p0, Lse/dirac/acs/api/OutputSettings;->bxV:Lse/dirac/acs/api/Device;

    .line 242
    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->bxV:Lse/dirac/acs/api/Device;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Landroid/os/BadParcelableException;

    const-string v1, "No valid device in parcel"

    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    throw v0

    .line 245
    :cond_0
    const/4 v0, 0x4

    :try_start_1
    new-array v0, v0, [Z

    .line 246
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 248
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->bxX:Z

    .line 249
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->bxY:Z

    .line 250
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->bxZ:Z

    .line 251
    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lse/dirac/acs/api/OutputSettings;->bya:Z

    .line 253
    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->byb:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 255
    const-class v0, Lse/dirac/acs/api/Filter;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/Filter;

    iput-object v0, p0, Lse/dirac/acs/api/OutputSettings;->bxW:Lse/dirac/acs/api/Filter;
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 261
    return-void

    .line 258
    :catch_1
    move-exception v0

    .line 259
    new-instance v1, Landroid/os/BadParcelableException;

    invoke-direct {v1, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lse/dirac/acs/api/v;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lse/dirac/acs/api/OutputSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lse/dirac/acs/api/Device;Lse/dirac/acs/api/Filter;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x7

    new-array v0, v0, [F

    iput-object v0, p0, Lse/dirac/acs/api/OutputSettings;->byb:[F

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a valid device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lse/dirac/acs/api/OutputSettings;->bxV:Lse/dirac/acs/api/Device;

    .line 43
    if-eqz p2, :cond_1

    iget-object v0, p1, Lse/dirac/acs/api/Device;->bxL:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid filter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_2
    iput-object p2, p0, Lse/dirac/acs/api/OutputSettings;->bxW:Lse/dirac/acs/api/Filter;

    .line 46
    return-void
.end method


# virtual methods
.method public PL()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lse/dirac/acs/api/OutputSettings;->bxX:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public du(Z)Lse/dirac/acs/api/OutputSettings;
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lse/dirac/acs/api/OutputSettings;->bxX:Z

    .line 120
    return-object p0
.end method

.method public dv(Z)Lse/dirac/acs/api/OutputSettings;
    .locals 0

    .prologue
    .line 132
    iput-boolean p1, p0, Lse/dirac/acs/api/OutputSettings;->bxY:Z

    .line 133
    return-object p0
.end method

.method public dw(Z)Lse/dirac/acs/api/OutputSettings;
    .locals 2

    .prologue
    .line 145
    if-eqz p1, :cond_0

    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->bxW:Lse/dirac/acs/api/Filter;

    iget-boolean v0, v0, Lse/dirac/acs/api/Filter;->bxN:Z

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filter do not support SFX"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iput-boolean p1, p0, Lse/dirac/acs/api/OutputSettings;->bxZ:Z

    .line 149
    return-object p0
.end method

.method public dx(Z)Lse/dirac/acs/api/OutputSettings;
    .locals 2

    .prologue
    .line 161
    if-eqz p1, :cond_0

    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->bxW:Lse/dirac/acs/api/Filter;

    iget-boolean v0, v0, Lse/dirac/acs/api/Filter;->bxO:Z

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filter do not support EQ"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iput-boolean p1, p0, Lse/dirac/acs/api/OutputSettings;->bya:Z

    .line 165
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    check-cast p1, Lse/dirac/acs/api/OutputSettings;

    .line 54
    iget-object v1, p0, Lse/dirac/acs/api/OutputSettings;->bxV:Lse/dirac/acs/api/Device;

    iget-object v2, p1, Lse/dirac/acs/api/OutputSettings;->bxV:Lse/dirac/acs/api/Device;

    invoke-virtual {v1, v2}, Lse/dirac/acs/api/Device;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lse/dirac/acs/api/OutputSettings;->bxW:Lse/dirac/acs/api/Filter;

    iget-object v2, p1, Lse/dirac/acs/api/OutputSettings;->bxW:Lse/dirac/acs/api/Filter;

    invoke-virtual {v1, v2}, Lse/dirac/acs/api/Filter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->bxX:Z

    iget-boolean v2, p1, Lse/dirac/acs/api/OutputSettings;->bxX:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->bxY:Z

    iget-boolean v2, p1, Lse/dirac/acs/api/OutputSettings;->bxY:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->bxZ:Z

    iget-boolean v2, p1, Lse/dirac/acs/api/OutputSettings;->bxZ:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->bya:Z

    iget-boolean v2, p1, Lse/dirac/acs/api/OutputSettings;->bya:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lse/dirac/acs/api/OutputSettings;->byb:[F

    iget-object v2, p1, Lse/dirac/acs/api/OutputSettings;->byb:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 223
    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->bxV:Lse/dirac/acs/api/Device;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 224
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->bxX:Z

    aput-boolean v1, v0, v3

    const/4 v1, 0x1

    iget-boolean v2, p0, Lse/dirac/acs/api/OutputSettings;->bxY:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lse/dirac/acs/api/OutputSettings;->bxZ:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lse/dirac/acs/api/OutputSettings;->bya:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 230
    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->byb:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 231
    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->bxW:Lse/dirac/acs/api/Filter;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 232
    return-void
.end method
