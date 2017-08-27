.class final Lse/dirac/acs/api/u;
.super Ljava/lang/Object;
.source "Output.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lse/dirac/acs/api/u;->y(Landroid/os/Parcel;)Lse/dirac/acs/api/Output;

    move-result-object v0

    return-object v0
.end method

.method public fT(I)[Lse/dirac/acs/api/Output;
    .locals 1

    .prologue
    .line 27
    new-array v0, p1, [Lse/dirac/acs/api/Output;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lse/dirac/acs/api/u;->fT(I)[Lse/dirac/acs/api/Output;

    move-result-object v0

    return-object v0
.end method

.method public y(Landroid/os/Parcel;)Lse/dirac/acs/api/Output;
    .locals 2

    .prologue
    .line 19
    :try_start_0
    invoke-static {}, Lse/dirac/acs/api/Output;->values()[Lse/dirac/acs/api/Output;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Landroid/os/BadParcelableException;

    invoke-direct {v1, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
