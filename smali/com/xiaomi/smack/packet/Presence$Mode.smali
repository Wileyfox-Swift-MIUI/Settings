.class public final enum Lcom/xiaomi/smack/packet/Presence$Mode;
.super Ljava/lang/Enum;
.source "Presence.java"


# static fields
.field public static final enum blc:Lcom/xiaomi/smack/packet/Presence$Mode;

.field public static final enum bld:Lcom/xiaomi/smack/packet/Presence$Mode;

.field public static final enum ble:Lcom/xiaomi/smack/packet/Presence$Mode;

.field public static final enum blf:Lcom/xiaomi/smack/packet/Presence$Mode;

.field public static final enum blg:Lcom/xiaomi/smack/packet/Presence$Mode;

.field private static final synthetic blh:[Lcom/xiaomi/smack/packet/Presence$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 352
    new-instance v0, Lcom/xiaomi/smack/packet/Presence$Mode;

    const-string v1, "chat"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/smack/packet/Presence$Mode;->blc:Lcom/xiaomi/smack/packet/Presence$Mode;

    .line 357
    new-instance v0, Lcom/xiaomi/smack/packet/Presence$Mode;

    const-string v1, "available"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/smack/packet/Presence$Mode;->bld:Lcom/xiaomi/smack/packet/Presence$Mode;

    .line 362
    new-instance v0, Lcom/xiaomi/smack/packet/Presence$Mode;

    const-string v1, "away"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/smack/packet/Presence$Mode;->ble:Lcom/xiaomi/smack/packet/Presence$Mode;

    .line 367
    new-instance v0, Lcom/xiaomi/smack/packet/Presence$Mode;

    const-string v1, "xa"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/smack/packet/Presence$Mode;->blf:Lcom/xiaomi/smack/packet/Presence$Mode;

    .line 372
    new-instance v0, Lcom/xiaomi/smack/packet/Presence$Mode;

    const-string v1, "dnd"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/smack/packet/Presence$Mode;->blg:Lcom/xiaomi/smack/packet/Presence$Mode;

    .line 347
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/smack/packet/Presence$Mode;

    sget-object v1, Lcom/xiaomi/smack/packet/Presence$Mode;->blc:Lcom/xiaomi/smack/packet/Presence$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/smack/packet/Presence$Mode;->bld:Lcom/xiaomi/smack/packet/Presence$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/smack/packet/Presence$Mode;->ble:Lcom/xiaomi/smack/packet/Presence$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/smack/packet/Presence$Mode;->blf:Lcom/xiaomi/smack/packet/Presence$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/smack/packet/Presence$Mode;->blg:Lcom/xiaomi/smack/packet/Presence$Mode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/smack/packet/Presence$Mode;->blh:[Lcom/xiaomi/smack/packet/Presence$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/smack/packet/Presence$Mode;
    .locals 1

    .prologue
    .line 347
    const-class v0, Lcom/xiaomi/smack/packet/Presence$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/packet/Presence$Mode;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/smack/packet/Presence$Mode;
    .locals 1

    .prologue
    .line 347
    sget-object v0, Lcom/xiaomi/smack/packet/Presence$Mode;->blh:[Lcom/xiaomi/smack/packet/Presence$Mode;

    invoke-virtual {v0}, [Lcom/xiaomi/smack/packet/Presence$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/smack/packet/Presence$Mode;

    return-object v0
.end method
