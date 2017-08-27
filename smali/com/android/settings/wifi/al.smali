.class Lcom/android/settings/wifi/al;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aEO:Lcom/android/settings/wifi/ak;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/ak;)V
    .locals 0

    .prologue
    .line 1510
    iput-object p1, p0, Lcom/android/settings/wifi/al;->aEO:Lcom/android/settings/wifi/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/android/settings/wifi/al;->aEO:Lcom/android/settings/wifi/ak;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ak;->yb()V

    .line 1513
    return-void
.end method
