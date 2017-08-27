.class public final Lcom/xiaomi/push/b/e;
.super Lcom/google/protobuf/micro/c;
.source "ChannelMessage.java"


# instance fields
.field private bcS:I

.field private bdo:Z

.field private bdp:Z

.field private bdq:Z

.field private bdr:I

.field private bds:Z

.field private bdt:I

.field private bdu:Z

.field private bdv:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    .line 15
    iput-boolean v0, p0, Lcom/xiaomi/push/b/e;->bdp:Z

    .line 32
    iput v0, p0, Lcom/xiaomi/push/b/e;->bdr:I

    .line 49
    iput v0, p0, Lcom/xiaomi/push/b/e;->bdt:I

    .line 66
    iput v0, p0, Lcom/xiaomi/push/b/e;->bdv:I

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/b/e;->bcS:I

    .line 10
    return-void
.end method

.method public static v([B)Lcom/xiaomi/push/b/e;
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/xiaomi/push/b/e;

    invoke-direct {v0}, Lcom/xiaomi/push/b/e;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/b/e;->s([B)Lcom/google/protobuf/micro/c;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/b/e;

    check-cast v0, Lcom/xiaomi/push/b/e;

    return-object v0
.end method


# virtual methods
.method public FQ()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/xiaomi/push/b/e;->bcS:I

    if-gez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/xiaomi/push/b/e;->getSerializedSize()I

    .line 117
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/b/e;->bcS:I

    return v0
.end method

.method public Ij()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/xiaomi/push/b/e;->bdp:Z

    return v0
.end method

.method public Ik()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/xiaomi/push/b/e;->bdo:Z

    return v0
.end method

.method public Il()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/xiaomi/push/b/e;->bdr:I

    return v0
.end method

.method public Im()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/xiaomi/push/b/e;->bdq:Z

    return v0
.end method

.method public In()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/xiaomi/push/b/e;->bdt:I

    return v0
.end method

.method public Io()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/xiaomi/push/b/e;->bds:Z

    return v0
.end method

.method public Ip()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/xiaomi/push/b/e;->bdv:I

    return v0
.end method

.method public Iq()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/xiaomi/push/b/e;->bdu:Z

    return v0
.end method

.method public synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/b/e;->e(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/xiaomi/push/b/e;->Ik()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/b/e;->Ij()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/e;->Im()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/b/e;->Il()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/e;->Io()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/b/e;->In()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/b/e;->Iq()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/b/e;->Ip()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 108
    :cond_3
    return-void
.end method

.method public cl(Z)Lcom/xiaomi/push/b/e;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/e;->bdo:Z

    .line 20
    iput-boolean p1, p0, Lcom/xiaomi/push/b/e;->bdp:Z

    .line 21
    return-object p0
.end method

.method public e(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/e;
    .locals 1

    .prologue
    .line 148
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readTag()I

    move-result v0

    .line 149
    sparse-switch v0, :sswitch_data_0

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/b/e;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    :sswitch_0
    return-object p0

    .line 159
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readBool()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/e;->cl(Z)Lcom/xiaomi/push/b/e;

    goto :goto_0

    .line 163
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/e;->eX(I)Lcom/xiaomi/push/b/e;

    goto :goto_0

    .line 167
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/e;->eY(I)Lcom/xiaomi/push/b/e;

    goto :goto_0

    .line 171
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/e;->eZ(I)Lcom/xiaomi/push/b/e;

    goto :goto_0

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
    .end sparse-switch
.end method

.method public eX(I)Lcom/xiaomi/push/b/e;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/e;->bdq:Z

    .line 37
    iput p1, p0, Lcom/xiaomi/push/b/e;->bdr:I

    .line 38
    return-object p0
.end method

.method public eY(I)Lcom/xiaomi/push/b/e;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/e;->bds:Z

    .line 54
    iput p1, p0, Lcom/xiaomi/push/b/e;->bdt:I

    .line 55
    return-object p0
.end method

.method public eZ(I)Lcom/xiaomi/push/b/e;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/e;->bdu:Z

    .line 71
    iput p1, p0, Lcom/xiaomi/push/b/e;->bdv:I

    .line 72
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/xiaomi/push/b/e;->Ik()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const/4 v1, 0x1

    .line 125
    invoke-virtual {p0}, Lcom/xiaomi/push/b/e;->Ij()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/e;->Im()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    const/4 v1, 0x3

    .line 129
    invoke-virtual {p0}, Lcom/xiaomi/push/b/e;->Il()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/e;->Io()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    const/4 v1, 0x4

    .line 133
    invoke-virtual {p0}, Lcom/xiaomi/push/b/e;->In()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/b/e;->Iq()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    const/4 v1, 0x5

    .line 137
    invoke-virtual {p0}, Lcom/xiaomi/push/b/e;->Ip()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_3
    iput v0, p0, Lcom/xiaomi/push/b/e;->bcS:I

    .line 140
    return v0
.end method
