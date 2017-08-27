.class final Lse/dirac/acs/api/m;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lse/dirac/acs/api/m;->u(Landroid/os/Parcel;)Lse/dirac/acs/api/Device;

    move-result-object v0

    return-object v0
.end method

.method public fR(I)[Lse/dirac/acs/api/Device;
    .locals 1

    .prologue
    .line 55
    new-array v0, p1, [Lse/dirac/acs/api/Device;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lse/dirac/acs/api/m;->fR(I)[Lse/dirac/acs/api/Device;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroid/os/Parcel;)Lse/dirac/acs/api/Device;
    .locals 1

    .prologue
    .line 50
    invoke-static {p1}, Lse/dirac/acs/api/Device;->t(Landroid/os/Parcel;)Lse/dirac/acs/api/Device;

    move-result-object v0

    return-object v0
.end method
