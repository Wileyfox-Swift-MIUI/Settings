.class public Lse/dirac/acs/api/Filter;
.super Ljava/lang/Object;
.source "Filter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final bxM:Lse/dirac/acs/api/Usecase;

.field public final bxN:Z

.field public final bxO:Z

.field public final bxP:Ljava/lang/String;

.field public final bxQ:I

.field public final bxR:Ljava/lang/String;

.field public final id:J

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lse/dirac/acs/api/n;

    invoke-direct {v0}, Lse/dirac/acs/api/n;-><init>()V

    sput-object v0, Lse/dirac/acs/api/Filter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lse/dirac/acs/api/Usecase;ZZILjava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-wide p1, p0, Lse/dirac/acs/api/Filter;->id:J

    .line 94
    iput-object p3, p0, Lse/dirac/acs/api/Filter;->name:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lse/dirac/acs/api/Filter;->bxP:Ljava/lang/String;

    .line 96
    iput-object p5, p0, Lse/dirac/acs/api/Filter;->bxM:Lse/dirac/acs/api/Usecase;

    .line 97
    iput-boolean p6, p0, Lse/dirac/acs/api/Filter;->bxN:Z

    .line 98
    iput-boolean p7, p0, Lse/dirac/acs/api/Filter;->bxO:Z

    .line 99
    iput p8, p0, Lse/dirac/acs/api/Filter;->bxQ:I

    .line 100
    iput-object p9, p0, Lse/dirac/acs/api/Filter;->bxR:Ljava/lang/String;

    .line 101
    return-void
.end method

.method private static v(Landroid/os/Parcel;)Lse/dirac/acs/api/Filter;
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 123
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 124
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lse/dirac/acs/api/Usecase;->fV(I)Lse/dirac/acs/api/Usecase;

    move-result-object v6

    .line 127
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    move v7, v8

    .line 128
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 130
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 131
    new-instance v1, Lse/dirac/acs/api/Filter;

    invoke-direct/range {v1 .. v10}, Lse/dirac/acs/api/Filter;-><init>(JLjava/lang/String;Ljava/lang/String;Lse/dirac/acs/api/Usecase;ZZILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    :cond_0
    move v7, v0

    .line 127
    goto :goto_0

    :cond_1
    move v8, v0

    .line 128
    goto :goto_1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    throw v0

    .line 134
    :catch_1
    move-exception v0

    .line 135
    new-instance v1, Landroid/os/BadParcelableException;

    invoke-direct {v1, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method static synthetic w(Landroid/os/Parcel;)Lse/dirac/acs/api/Filter;
    .locals 1

    .prologue
    .line 13
    invoke-static {p0}, Lse/dirac/acs/api/Filter;->v(Landroid/os/Parcel;)Lse/dirac/acs/api/Filter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x2

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lse/dirac/acs/api/Filter;->id:J

    check-cast p1, Lse/dirac/acs/api/Filter;

    iget-wide v2, p1, Lse/dirac/acs/api/Filter;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lse/dirac/acs/api/Filter;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lse/dirac/acs/api/Filter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    iget-wide v4, p0, Lse/dirac/acs/api/Filter;->id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget-object v0, p0, Lse/dirac/acs/api/Filter;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lse/dirac/acs/api/Filter;->bxP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lse/dirac/acs/api/Filter;->bxM:Lse/dirac/acs/api/Usecase;

    invoke-virtual {v0}, Lse/dirac/acs/api/Usecase;->toInt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-boolean v0, p0, Lse/dirac/acs/api/Filter;->bxN:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 113
    iget-boolean v0, p0, Lse/dirac/acs/api/Filter;->bxO:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 114
    iget v0, p0, Lse/dirac/acs/api/Filter;->bxQ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v0, p0, Lse/dirac/acs/api/Filter;->bxR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return-void

    :cond_0
    move v0, v2

    .line 112
    goto :goto_0

    :cond_1
    move v1, v2

    .line 113
    goto :goto_1
.end method
