.class public Lcom/xiaomi/push/service/a/a;
.super Ljava/lang/Object;
.source "GeoFenceMessage.java"


# instance fields
.field private action:I

.field private bhz:Ljava/lang/String;

.field private content:[B

.field private deadline:J

.field private messageId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public F([B)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/xiaomi/push/service/a/a;->content:[B

    .line 57
    return-void
.end method

.method public K(J)V
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/xiaomi/push/service/a/a;->deadline:J

    .line 33
    return-void
.end method

.method public Kf()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/xiaomi/push/service/a/a;->deadline:J

    return-wide v0
.end method

.method public Kg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xiaomi/push/service/a/a;->bhz:Ljava/lang/String;

    return-object v0
.end method

.method public eN(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/xiaomi/push/service/a/a;->bhz:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/xiaomi/push/service/a/a;->action:I

    return v0
.end method

.method public getContent()[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/xiaomi/push/service/a/a;->content:[B

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xiaomi/push/service/a/a;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/xiaomi/push/service/a/a;->action:I

    .line 65
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/xiaomi/push/service/a/a;->messageId:Ljava/lang/String;

    .line 41
    return-void
.end method
