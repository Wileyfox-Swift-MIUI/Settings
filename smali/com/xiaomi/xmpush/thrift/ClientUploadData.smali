.class public Lcom/xiaomi/xmpush/thrift/ClientUploadData;
.super Ljava/lang/Object;
.source "ClientUploadData.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field private static final biN:Lorg/apache/thrift/protocol/g;

.field public static final biY:Ljava/util/Map;

.field private static final bmP:Lorg/apache/thrift/protocol/a;


# instance fields
.field public uploadDataItems:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xf

    const/4 v8, 0x1

    .line 21
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "ClientUploadData"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->biN:Lorg/apache/thrift/protocol/g;

    .line 23
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "uploadDataItems"

    invoke-direct {v0, v1, v9, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->bmP:Lorg/apache/thrift/protocol/a;

    .line 89
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 90
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;->bmQ:Lcom/xiaomi/xmpush/thrift/ClientUploadData$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "uploadDataItems"

    new-instance v4, Lorg/apache/thrift/meta_data/ListMetaData;

    new-instance v5, Lorg/apache/thrift/meta_data/StructMetaData;

    const/16 v6, 0xc

    const-class v7, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    invoke-direct {v5, v6, v7}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/ListMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->biY:Ljava/util/Map;

    .line 94
    const-class v0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->biY:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method


# virtual methods
.method public Lq()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public Lr()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 4

    .prologue
    .line 260
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Ob()Lorg/apache/thrift/protocol/g;

    .line 263
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Od()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 264
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 291
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Oc()V

    .line 294
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->validate()V

    .line 295
    return-void

    .line 267
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bwe:S

    packed-switch v1, :pswitch_data_0

    .line 287
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 289
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Oe()V

    goto :goto_0

    .line 269
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    .line 271
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Oh()Lorg/apache/thrift/protocol/b;

    move-result-object v1

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    iget v2, v1, Lorg/apache/thrift/protocol/b;->size:I

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    .line 273
    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/b;->size:I

    if-ge v0, v2, :cond_1

    .line 276
    new-instance v2, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;-><init>()V

    .line 277
    invoke-virtual {v2, p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->a(Lorg/apache/thrift/protocol/d;)V

    .line 278
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 280
    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Oi()V

    goto :goto_1

    .line 283
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/ClientUploadData;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 213
    if-nez p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v0

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->Lr()Z

    move-result v1

    .line 217
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->Lr()Z

    move-result v2

    .line 218
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 219
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 221
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/ClientUploadData;)I
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
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

    .line 251
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->Lr()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->Lr()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 242
    if-nez v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->Lr()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->b(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 247
    if-nez v0, :cond_0

    .line 251
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 3

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->validate()V

    .line 300
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->biN:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 301
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 302
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->bmP:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 304
    new-instance v0, Lorg/apache/thrift/protocol/b;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/protocol/b;-><init>(BI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/b;)V

    .line 305
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 307
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->b(Lorg/apache/thrift/protocol/d;)V

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NZ()V

    .line 311
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NW()V

    .line 313
    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NX()V

    .line 314
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->NV()V

    .line 315
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lcom/xiaomi/xmpush/thrift/ClientUploadData;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->b(Lcom/xiaomi/xmpush/thrift/ClientUploadData;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 205
    if-nez p1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadData;

    if-eqz v1, :cond_0

    .line 208
    check-cast p1, Lcom/xiaomi/xmpush/thrift/ClientUploadData;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->a(Lcom/xiaomi/xmpush/thrift/ClientUploadData;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientUploadData("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    const-string v1, "uploadDataItems:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    if-nez v1, :cond_0

    .line 324
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :goto_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'uploadDataItems\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    return-void
.end method
