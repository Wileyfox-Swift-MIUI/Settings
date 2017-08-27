.class Lcom/miui/a/a/a/c;
.super Ljava/lang/Object;
.source "DiracUtils.java"


# static fields
.field public static IS_HONGMI_TWO:Z

.field public static IS_HONGMI_TWOS_LTE_MTK:Z

.field public static IS_HONGMI_TWO_A:Z

.field public static IS_HONGMI_TWO_S:Z

.field public static IS_MI2A:Z

.field public static aYw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 278
    sput-boolean v0, Lcom/miui/a/a/a/c;->IS_MI2A:Z

    .line 279
    sput-boolean v0, Lcom/miui/a/a/a/c;->IS_HONGMI_TWO:Z

    .line 280
    sput-boolean v0, Lcom/miui/a/a/a/c;->IS_HONGMI_TWO_A:Z

    .line 281
    sput-boolean v0, Lcom/miui/a/a/a/c;->IS_HONGMI_TWO_S:Z

    .line 282
    sput-boolean v0, Lcom/miui/a/a/a/c;->IS_HONGMI_TWOS_LTE_MTK:Z

    .line 283
    sput-boolean v0, Lcom/miui/a/a/a/c;->aYw:Z

    .line 286
    const/4 v1, 0x0

    .line 288
    :try_start_0
    const-string v0, "miui.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 293
    :goto_0
    if-eqz v0, :cond_0

    .line 294
    const-string v1, "IS_MI2A"

    sget-boolean v2, Lcom/miui/a/a/a/c;->IS_MI2A:Z

    invoke-static {v0, v1, v2}, Lcom/miui/a/a/a/c;->a(Ljava/lang/Class;Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/miui/a/a/a/c;->IS_MI2A:Z

    .line 295
    const-string v1, "IS_HONGMI_TWO"

    sget-boolean v2, Lcom/miui/a/a/a/c;->IS_HONGMI_TWO:Z

    invoke-static {v0, v1, v2}, Lcom/miui/a/a/a/c;->a(Ljava/lang/Class;Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/miui/a/a/a/c;->IS_HONGMI_TWO:Z

    .line 296
    const-string v1, "IS_HONGMI_TWO_A"

    sget-boolean v2, Lcom/miui/a/a/a/c;->IS_HONGMI_TWO_A:Z

    invoke-static {v0, v1, v2}, Lcom/miui/a/a/a/c;->a(Ljava/lang/Class;Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/miui/a/a/a/c;->IS_HONGMI_TWO_A:Z

    .line 297
    const-string v1, "IS_HONGMI_TWO_S"

    sget-boolean v2, Lcom/miui/a/a/a/c;->IS_HONGMI_TWO_S:Z

    invoke-static {v0, v1, v2}, Lcom/miui/a/a/a/c;->a(Ljava/lang/Class;Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/miui/a/a/a/c;->IS_HONGMI_TWO_S:Z

    .line 298
    const-string v1, "IS_HONGMI_TWOS_LTE_MTK"

    sget-boolean v2, Lcom/miui/a/a/a/c;->IS_HONGMI_TWOS_LTE_MTK:Z

    invoke-static {v0, v1, v2}, Lcom/miui/a/a/a/c;->a(Ljava/lang/Class;Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/miui/a/a/a/c;->IS_HONGMI_TWOS_LTE_MTK:Z

    .line 299
    const-string v1, "IS_SONG"

    sget-boolean v2, Lcom/miui/a/a/a/c;->aYw:Z

    invoke-static {v0, v1, v2}, Lcom/miui/a/a/a/c;->a(Ljava/lang/Class;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/a/a/a/c;->aYw:Z

    .line 301
    :cond_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    .line 305
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 306
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 307
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 311
    :goto_0
    return p2

    .line 308
    :catch_0
    move-exception v0

    .line 309
    const-string v1, "DiracUtils"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
