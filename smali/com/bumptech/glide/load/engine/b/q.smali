.class public Lcom/bumptech/glide/load/engine/b/q;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# instance fields
.field private final aTL:I

.field private final aTM:I

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 35
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Lcom/bumptech/glide/load/engine/b/r;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/b/r;-><init>(Landroid/util/DisplayMetrics;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/bumptech/glide/load/engine/b/q;-><init>(Landroid/content/Context;Landroid/app/ActivityManager;Lcom/bumptech/glide/load/engine/b/s;)V

    .line 38
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager;Lcom/bumptech/glide/load/engine/b/s;)V
    .locals 6

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/q;->context:Landroid/content/Context;

    .line 43
    invoke-static {p2}, Lcom/bumptech/glide/load/engine/b/q;->a(Landroid/app/ActivityManager;)I

    move-result v1

    .line 45
    invoke-interface {p3}, Lcom/bumptech/glide/load/engine/b/s;->Eb()I

    move-result v0

    invoke-interface {p3}, Lcom/bumptech/glide/load/engine/b/s;->Ec()I

    move-result v2

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x4

    .line 48
    mul-int/lit8 v2, v0, 0x4

    .line 49
    mul-int/lit8 v0, v0, 0x2

    .line 51
    add-int v3, v0, v2

    if-gt v3, v1, :cond_1

    .line 52
    iput v0, p0, Lcom/bumptech/glide/load/engine/b/q;->aTM:I

    .line 53
    iput v2, p0, Lcom/bumptech/glide/load/engine/b/q;->aTL:I

    .line 60
    :goto_0
    const-string v3, "MemorySizeCalculator"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    const-string v3, "MemorySizeCalculator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated memory cache size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/bumptech/glide/load/engine/b/q;->aTM:I

    invoke-direct {p0, v5}, Lcom/bumptech/glide/load/engine/b/q;->eu(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pool size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/bumptech/glide/load/engine/b/q;->aTL:I

    invoke-direct {p0, v5}, Lcom/bumptech/glide/load/engine/b/q;->eu(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " memory class limited? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/2addr v0, v2

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " max size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/b/q;->eu(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " memoryClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isLowMemoryDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/bumptech/glide/load/engine/b/q;->b(Landroid/app/ActivityManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    return-void

    .line 55
    :cond_1
    int-to-float v3, v1

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 56
    mul-int/lit8 v4, v3, 0x2

    iput v4, p0, Lcom/bumptech/glide/load/engine/b/q;->aTM:I

    .line 57
    mul-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/bumptech/glide/load/engine/b/q;->aTL:I

    goto :goto_0

    .line 61
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Landroid/app/ActivityManager;)I
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    .line 84
    invoke-static {p0}, Lcom/bumptech/glide/load/engine/b/q;->b(Landroid/app/ActivityManager;)Z

    move-result v1

    .line 85
    int-to-float v2, v0

    if-eqz v1, :cond_0

    const v0, 0x3ea8f5c3    # 0.33f

    :goto_0
    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method

.method private static b(Landroid/app/ActivityManager;)Z
    .locals 2

    .prologue
    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    .line 98
    :goto_0
    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private eu(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/q;->context:Landroid/content/Context;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public DZ()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/bumptech/glide/load/engine/b/q;->aTM:I

    return v0
.end method

.method public Ea()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/bumptech/glide/load/engine/b/q;->aTL:I

    return v0
.end method
