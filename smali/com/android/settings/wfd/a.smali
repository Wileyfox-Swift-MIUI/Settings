.class Lcom/android/settings/wfd/a;
.super Ljava/lang/Object;
.source "MiuiWifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ayJ:Lcom/android/settings/wfd/MiuiWifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/MiuiWifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/wfd/a;->ayJ:Lcom/android/settings/wfd/MiuiWifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/wfd/a;->ayJ:Lcom/android/settings/wfd/MiuiWifiDisplaySettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wfd/MiuiWifiDisplaySettings;->a(Lcom/android/settings/wfd/MiuiWifiDisplaySettings;Z)V

    .line 74
    return-void
.end method
