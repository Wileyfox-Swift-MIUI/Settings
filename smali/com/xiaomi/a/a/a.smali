.class public Lcom/xiaomi/a/a/a;
.super Ljava/lang/Object;
.source "AndroidDebugger.java"

# interfaces
.implements Lcom/xiaomi/smack/a/a;


# static fields
.field public static aZP:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private aZQ:Ljava/text/SimpleDateFormat;

.field private aZR:Lcom/xiaomi/smack/a;

.field private aZS:Lcom/xiaomi/a/a/c;

.field private aZT:Lcom/xiaomi/a/a/c;

.field private aZU:Lcom/xiaomi/smack/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 31
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/c;->Gc()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/xiaomi/a/a/a;->aZP:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/xiaomi/smack/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/a;->aZQ:Ljava/text/SimpleDateFormat;

    .line 36
    iput-object v2, p0, Lcom/xiaomi/a/a/a;->aZR:Lcom/xiaomi/smack/a;

    .line 38
    iput-object v2, p0, Lcom/xiaomi/a/a/a;->aZS:Lcom/xiaomi/a/a/c;

    .line 39
    iput-object v2, p0, Lcom/xiaomi/a/a/a;->aZT:Lcom/xiaomi/a/a/c;

    .line 41
    iput-object v2, p0, Lcom/xiaomi/a/a/a;->aZU:Lcom/xiaomi/smack/e;

    .line 43
    const-string v0, "[Slim] "

    iput-object v0, p0, Lcom/xiaomi/a/a/a;->TAG:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/xiaomi/a/a/a;->aZR:Lcom/xiaomi/smack/a;

    .line 47
    invoke-direct {p0}, Lcom/xiaomi/a/a/a;->Gy()V

    .line 48
    return-void
.end method

.method private Gy()V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Lcom/xiaomi/a/a/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/a/a/c;-><init>(Lcom/xiaomi/a/a/a;Z)V

    iput-object v0, p0, Lcom/xiaomi/a/a/a;->aZS:Lcom/xiaomi/a/a/c;

    .line 91
    new-instance v0, Lcom/xiaomi/a/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/a/a/c;-><init>(Lcom/xiaomi/a/a/a;Z)V

    iput-object v0, p0, Lcom/xiaomi/a/a/a;->aZT:Lcom/xiaomi/a/a/c;

    .line 93
    iget-object v0, p0, Lcom/xiaomi/a/a/a;->aZR:Lcom/xiaomi/smack/a;

    iget-object v1, p0, Lcom/xiaomi/a/a/a;->aZS:Lcom/xiaomi/a/a/c;

    iget-object v2, p0, Lcom/xiaomi/a/a/a;->aZS:Lcom/xiaomi/a/a/c;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smack/a;->a(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V

    .line 94
    iget-object v0, p0, Lcom/xiaomi/a/a/a;->aZR:Lcom/xiaomi/smack/a;

    iget-object v1, p0, Lcom/xiaomi/a/a/a;->aZT:Lcom/xiaomi/a/a/c;

    iget-object v2, p0, Lcom/xiaomi/a/a/a;->aZT:Lcom/xiaomi/a/a/c;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smack/a;->b(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V

    .line 96
    new-instance v0, Lcom/xiaomi/a/a/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/a/b;-><init>(Lcom/xiaomi/a/a/a;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/a;->aZU:Lcom/xiaomi/smack/e;

    .line 131
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/a/a/a;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xiaomi/a/a/a;->aZQ:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/a/a/a;)Lcom/xiaomi/smack/a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xiaomi/a/a/a;->aZR:Lcom/xiaomi/smack/a;

    return-object v0
.end method
