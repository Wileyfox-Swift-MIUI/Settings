.class public Lcom/android/settings/wifi/J;
.super Landroid/os/Binder;
.source "MiuiWifiService.java"


# instance fields
.field final synthetic aCO:Lcom/android/settings/wifi/MiuiWifiService;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/MiuiWifiService;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/settings/wifi/J;->aCO:Lcom/android/settings/wifi/MiuiWifiService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public ys()Lcom/android/settings/wifi/MiuiWifiService;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/J;->aCO:Lcom/android/settings/wifi/MiuiWifiService;

    return-object v0
.end method
