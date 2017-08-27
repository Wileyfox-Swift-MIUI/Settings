.class final Lse/dirac/acs/api/n;
.super Ljava/lang/Object;
.source "Filter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lse/dirac/acs/api/n;->x(Landroid/os/Parcel;)Lse/dirac/acs/api/Filter;

    move-result-object v0

    return-object v0
.end method

.method public fS(I)[Lse/dirac/acs/api/Filter;
    .locals 1

    .prologue
    .line 151
    new-array v0, p1, [Lse/dirac/acs/api/Filter;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lse/dirac/acs/api/n;->fS(I)[Lse/dirac/acs/api/Filter;

    move-result-object v0

    return-object v0
.end method

.method public x(Landroid/os/Parcel;)Lse/dirac/acs/api/Filter;
    .locals 1

    .prologue
    .line 146
    invoke-static {p1}, Lse/dirac/acs/api/Filter;->w(Landroid/os/Parcel;)Lse/dirac/acs/api/Filter;

    move-result-object v0

    return-object v0
.end method
