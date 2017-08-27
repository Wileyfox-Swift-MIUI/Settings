.class public Lcom/android/settings/statistic/l;
.super Ljava/lang/Object;
.source "SettingsCollectorService.java"


# instance fields
.field final synthetic atP:Lcom/android/settings/statistic/SettingsCollectorService;

.field private final mCategory:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;

.field private final mType:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/statistic/SettingsCollectorService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/settings/statistic/l;->atP:Lcom/android/settings/statistic/SettingsCollectorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-object p2, p0, Lcom/android/settings/statistic/l;->mType:Ljava/lang/String;

    .line 396
    iput-object p3, p0, Lcom/android/settings/statistic/l;->mCategory:Ljava/lang/String;

    .line 397
    iput-object p4, p0, Lcom/android/settings/statistic/l;->mKey:Ljava/lang/String;

    .line 398
    iput-object p5, p0, Lcom/android/settings/statistic/l;->mValue:Ljava/lang/String;

    .line 399
    return-void
.end method


# virtual methods
.method public vC()V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/settings/statistic/l;->mCategory:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/statistic/l;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/statistic/l;->mValue:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void
.end method
