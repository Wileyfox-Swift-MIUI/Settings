.class Lcom/android/settings/wifi/D;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic aCz:Lcom/android/settings/wifi/MiuiWifiDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/settings/wifi/D;->aCz:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/settings/wifi/D;->aCz:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {v0, p2}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->b(Lcom/android/settings/wifi/MiuiWifiDetailFragment;Z)Z

    .line 300
    return-void
.end method
