.class final Lcom/xiaomi/push/service/n;
.super Ljava/lang/Object;
.source "JobScheduler.java"


# instance fields
.field private beZ:I

.field private bfa:[Lcom/xiaomi/push/service/o;

.field private bfb:I

.field private size:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/16 v0, 0x100

    iput v0, p0, Lcom/xiaomi/push/service/n;->beZ:I

    .line 145
    iget v0, p0, Lcom/xiaomi/push/service/n;->beZ:I

    new-array v0, v0, [Lcom/xiaomi/push/service/o;

    iput-object v0, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    .line 147
    iput v1, p0, Lcom/xiaomi/push/service/n;->size:I

    .line 149
    iput v1, p0, Lcom/xiaomi/push/service/n;->bfb:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/push/service/j;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/xiaomi/push/service/n;-><init>()V

    return-void
.end method

.method private Jp()V
    .locals 7

    .prologue
    .line 215
    iget v0, p0, Lcom/xiaomi/push/service/n;->size:I

    add-int/lit8 v1, v0, -0x1

    .line 216
    add-int/lit8 v0, v1, -0x1

    div-int/lit8 v0, v0, 0x2

    .line 218
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    aget-object v2, v2, v1

    iget-wide v2, v2, Lcom/xiaomi/push/service/o;->when:J

    iget-object v4, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    aget-object v4, v4, v0

    iget-wide v4, v4, Lcom/xiaomi/push/service/o;->when:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    aget-object v2, v2, v1

    .line 221
    iget-object v3, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    iget-object v4, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    .line 222
    iget-object v1, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    aput-object v2, v1, v0

    .line 226
    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v1, v1, 0x2

    move v6, v1

    move v1, v0

    move v0, v6

    .line 227
    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/n;Lcom/xiaomi/push/service/o;)I
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/n;->c(Lcom/xiaomi/push/service/o;)I

    move-result v0

    return v0
.end method

.method private c(Lcom/xiaomi/push/service/o;)I
    .locals 2

    .prologue
    .line 278
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 283
    :goto_1
    return v0

    .line 278
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private fh(I)V
    .locals 6

    .prologue
    .line 231
    .line 232
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 234
    :goto_0
    iget v1, p0, Lcom/xiaomi/push/service/n;->size:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/xiaomi/push/service/n;->size:I

    if-lez v1, :cond_0

    .line 236
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/xiaomi/push/service/n;->size:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iget-wide v2, v1, Lcom/xiaomi/push/service/o;->when:J

    iget-object v1, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/xiaomi/push/service/o;->when:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 238
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 242
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    aget-object v0, v0, p1

    iget-wide v2, v0, Lcom/xiaomi/push/service/o;->when:J

    iget-object v0, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    aget-object v0, v0, v1

    iget-wide v4, v0, Lcom/xiaomi/push/service/o;->when:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 255
    :cond_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    aget-object v0, v0, p1

    .line 248
    iget-object v2, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    iget-object v3, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    aget-object v3, v3, v1

    aput-object v3, v2, p1

    .line 249
    iget-object v2, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    aput-object v0, v2, v1

    .line 253
    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    .line 254
    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public Jo()Lcom/xiaomi/push/service/o;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a(ILcom/xiaomi/push/service/l;)V
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/xiaomi/push/service/n;->size:I

    if-ge v0, v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/xiaomi/push/service/o;->bfc:Lcom/xiaomi/push/service/l;

    if-ne v1, p2, :cond_0

    .line 199
    iget-object v1, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/xiaomi/push/service/o;->cancel()Z

    .line 197
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/service/n;->deleteIfCancelled()V

    .line 203
    return-void
.end method

.method public b(Lcom/xiaomi/push/service/o;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    array-length v0, v0

    iget v1, p0, Lcom/xiaomi/push/service/n;->size:I

    if-ne v0, v1, :cond_0

    .line 161
    iget v0, p0, Lcom/xiaomi/push/service/n;->size:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/push/service/o;

    .line 162
    iget-object v1, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    iget v2, p0, Lcom/xiaomi/push/service/n;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iput-object v0, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    iget v1, p0, Lcom/xiaomi/push/service/n;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/xiaomi/push/service/n;->size:I

    aput-object p1, v0, v1

    .line 166
    invoke-direct {p0}, Lcom/xiaomi/push/service/n;->Jp()V

    .line 167
    return-void
.end method

.method public delete(I)V
    .locals 3

    .prologue
    .line 207
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/xiaomi/push/service/n;->size:I

    if-ge p1, v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    iget-object v1, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    iget v2, p0, Lcom/xiaomi/push/service/n;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/xiaomi/push/service/n;->size:I

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    .line 209
    iget-object v0, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    iget v1, p0, Lcom/xiaomi/push/service/n;->size:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 210
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/n;->fh(I)V

    .line 212
    :cond_0
    return-void
.end method

.method public deleteIfCancelled()V
    .locals 2

    .prologue
    .line 267
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/xiaomi/push/service/n;->size:I

    if-ge v0, v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/xiaomi/push/service/o;->cancelled:Z

    if-eqz v1, :cond_0

    .line 269
    iget v1, p0, Lcom/xiaomi/push/service/n;->bfb:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/push/service/n;->bfb:I

    .line 270
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/n;->delete(I)V

    .line 272
    add-int/lit8 v0, v0, -0x1

    .line 267
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_1
    return-void
.end method

.method public ff(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 170
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/xiaomi/push/service/n;->size:I

    if-ge v0, v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/xiaomi/push/service/o;->type:I

    if-ne v2, p1, :cond_1

    .line 172
    const/4 v1, 0x1

    .line 175
    :cond_0
    return v1

    .line 170
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public fg(I)V
    .locals 2

    .prologue
    .line 179
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/xiaomi/push/service/n;->size:I

    if-ge v0, v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/xiaomi/push/service/o;->type:I

    if-ne v1, p1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/xiaomi/push/service/o;->cancel()Z

    .line 179
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/service/n;->deleteIfCancelled()V

    .line 185
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/xiaomi/push/service/n;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/xiaomi/push/service/n;->beZ:I

    new-array v0, v0, [Lcom/xiaomi/push/service/o;

    iput-object v0, p0, Lcom/xiaomi/push/service/n;->bfa:[Lcom/xiaomi/push/service/o;

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/n;->size:I

    .line 260
    return-void
.end method
