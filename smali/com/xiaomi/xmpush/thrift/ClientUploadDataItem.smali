.class public Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
.super Ljava/lang/Object;
.source "ClientUploadDataItem.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field private static final biN:Lorg/apache/thrift/protocol/g;

.field public static final biY:Ljava/util/Map;

.field private static final bmS:Lorg/apache/thrift/protocol/a;

.field private static final bmT:Lorg/apache/thrift/protocol/a;

.field private static final bmU:Lorg/apache/thrift/protocol/a;

.field private static final bmV:Lorg/apache/thrift/protocol/a;

.field private static final bmW:Lorg/apache/thrift/protocol/a;

.field private static final bmX:Lorg/apache/thrift/protocol/a;

.field private static final bmY:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public category:Ljava/lang/String;

.field public channel:Ljava/lang/String;

.field public counter:J

.field public data:Ljava/lang/String;

.field public fromSdk:Z

.field public name:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0xb

    const/4 v5, 0x2

    .line 20
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "ClientUploadDataItem"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->biN:Lorg/apache/thrift/protocol/g;

    .line 22
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "channel"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->bmS:Lorg/apache/thrift/protocol/a;

    .line 23
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "data"

    invoke-direct {v0, v1, v6, v5}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->bmT:Lorg/apache/thrift/protocol/a;

    .line 24
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "name"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->bmU:Lorg/apache/thrift/protocol/a;

    .line 25
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "counter"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->bmV:Lorg/apache/thrift/protocol/a;

    .line 26
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "timestamp"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->bmW:Lorg/apache/thrift/protocol/a;

    .line 27
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "fromSdk"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->bmX:Lorg/apache/thrift/protocol/a;

    .line 28
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "category"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->bmY:Lorg/apache/thrift/protocol/a;

    .line 122
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 123
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bmZ:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "channel"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bna:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "data"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bnb:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "name"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bnc:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "counter"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bnd:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "timestamp"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bne:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "fromSdk"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;->bnf:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "category"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->biY:Ljava/util/Map;

    .line 138
    const-class v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->biY:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 139
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->__isset_bit_vector:Ljava/util/BitSet;

    .line 142
    return-void
.end method


# virtual methods
.method public Ls()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Lt()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Lu()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Lv()Z
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Lw()Z
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Lx()Z
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Ly()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    const/16 v3, 0xb

    .line 634
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Ob()Lorg/apache/thrift/protocol/g;

    .line 637
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Od()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 638
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 699
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Oc()V

    .line 702
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->validate()V

    .line 703
    return-void

    .line 641
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bwe:S

    packed-switch v1, :pswitch_data_0

    .line 695
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 697
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Oe()V

    goto :goto_0

    .line 643
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_1

    .line 644
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    goto :goto_1

    .line 646
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 650
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_2

    .line 651
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    goto :goto_1

    .line 653
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 657
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_3

    .line 658
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    goto :goto_1

    .line 660
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 664
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_4

    .line 665
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->On()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->counter:J

    .line 666
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->cD(Z)V

    goto :goto_1

    .line 668
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 672
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_5

    .line 673
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->On()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->timestamp:J

    .line 674
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->cE(Z)V

    goto :goto_1

    .line 676
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 680
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 681
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->fromSdk:Z

    .line 682
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->cF(Z)V

    goto :goto_1

    .line 684
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 688
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_7

    .line 689
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    goto :goto_1

    .line 691
    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 641
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 2

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->validate()V

    .line 708
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->biN:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 709
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Ls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->bmS:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 712
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 717
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->bmT:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 719
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 724
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 725
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->bmU:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 726
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 730
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lv()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 731
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->bmV:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 732
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->counter:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/d;->Q(J)V

    .line 733
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 735
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lw()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 736
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->bmW:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 737
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->timestamp:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/d;->Q(J)V

    .line 738
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 740
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lx()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 741
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->bmX:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 742
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->fromSdk:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->dp(Z)V

    .line 743
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 745
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 746
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Ly()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 747
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->bmY:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 748
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 752
    :cond_6
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NX()V

    .line 753
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NV()V

    .line 754
    return-void
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 473
    if-nez p1, :cond_1

    .line 539
    :cond_0
    :goto_0
    return v0

    .line 476
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Ls()Z

    move-result v1

    .line 477
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Ls()Z

    move-result v2

    .line 478
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 479
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 481
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lt()Z

    move-result v1

    .line 486
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lt()Z

    move-result v2

    .line 487
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 488
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 490
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lu()Z

    move-result v1

    .line 495
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lu()Z

    move-result v2

    .line 496
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 497
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 499
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lv()Z

    move-result v1

    .line 504
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lv()Z

    move-result v2

    .line 505
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 506
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 508
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->counter:J

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->counter:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 512
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lw()Z

    move-result v1

    .line 513
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lw()Z

    move-result v2

    .line 514
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 515
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 517
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->timestamp:J

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->timestamp:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 521
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lx()Z

    move-result v1

    .line 522
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lx()Z

    move-result v2

    .line 523
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 524
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 526
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->fromSdk:Z

    iget-boolean v2, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->fromSdk:Z

    if-ne v1, v2, :cond_0

    .line 530
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Ly()Z

    move-result v1

    .line 531
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Ly()Z

    move-result v2

    .line 532
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 533
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 535
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public c(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)I
    .locals 4

    .prologue
    .line 548
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 549
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 625
    :cond_0
    :goto_0
    return v0

    .line 555
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Ls()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Ls()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 556
    if-nez v0, :cond_0

    .line 559
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Ls()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->ad(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 561
    if-nez v0, :cond_0

    .line 565
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lt()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lt()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 566
    if-nez v0, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 570
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->ad(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 571
    if-nez v0, :cond_0

    .line 575
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lu()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 576
    if-nez v0, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lu()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 580
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->ad(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 581
    if-nez v0, :cond_0

    .line 585
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lv()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lv()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 586
    if-nez v0, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lv()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 590
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->counter:J

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->counter:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/a;->g(JJ)I

    move-result v0

    .line 591
    if-nez v0, :cond_0

    .line 595
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lw()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 596
    if-nez v0, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lw()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 600
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->timestamp:J

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->timestamp:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/a;->g(JJ)I

    move-result v0

    .line 601
    if-nez v0, :cond_0

    .line 605
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lx()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lx()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 606
    if-nez v0, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lx()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 610
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->fromSdk:Z

    iget-boolean v1, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->fromSdk:Z

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->f(ZZ)I

    move-result v0

    .line 611
    if-nez v0, :cond_0

    .line 615
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Ly()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Ly()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 616
    if-nez v0, :cond_0

    .line 619
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Ly()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 620
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->ad(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 621
    if-nez v0, :cond_0

    .line 625
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public cD(Z)V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 278
    return-void
.end method

.method public cE(Z)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 301
    return-void
.end method

.method public cF(Z)V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 324
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->c(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 465
    if-nez p1, :cond_1

    .line 469
    :cond_0
    :goto_0
    return v0

    .line 467
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    if-eqz v1, :cond_0

    .line 468
    check-cast p1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->b(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "ClientUploadDataItem("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 759
    const/4 v0, 0x1

    .line 761
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Ls()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 762
    const-string v0, "channel:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 764
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 770
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lt()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 771
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    :cond_1
    const-string v0, "data:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 774
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v0, v1

    .line 780
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lu()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 781
    if-nez v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    :cond_3
    const-string v0, "name:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 784
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v0, v1

    .line 790
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lv()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 791
    if-nez v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    :cond_5
    const-string v0, "counter:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    iget-wide v4, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->counter:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v1

    .line 796
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lw()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 797
    if-nez v0, :cond_7

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    :cond_7
    const-string v0, "timestamp:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    iget-wide v4, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->timestamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v1

    .line 802
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Lx()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 803
    if-nez v0, :cond_9

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    :cond_9
    const-string v0, "fromSdk:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->fromSdk:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 808
    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->Ly()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 809
    if-nez v1, :cond_a

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    :cond_a
    const-string v0, "category:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 812
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    :cond_b
    :goto_4
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 766
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 776
    :cond_d
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 786
    :cond_e
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 814
    :cond_f
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_10
    move v1, v0

    goto :goto_3
.end method

.method public validate()V
    .locals 0

    .prologue
    .line 824
    return-void
.end method
