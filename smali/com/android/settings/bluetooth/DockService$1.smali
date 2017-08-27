.class Lcom/android/settings/bluetooth/DockService$1;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic SI:Landroid/bluetooth/BluetoothDevice;

.field final synthetic SJ:I

.field final synthetic SK:Lcom/android/settings/bluetooth/DockService;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService$1;->SK:Lcom/android/settings/bluetooth/DockService;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DockService$1;->SI:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Lcom/android/settings/bluetooth/DockService$1;->val$state:I

    iput p4, p0, Lcom/android/settings/bluetooth/DockService$1;->SJ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService$1;->SK:Lcom/android/settings/bluetooth/DockService;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService$1;->SI:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Lcom/android/settings/bluetooth/DockService$1;->val$state:I

    iget v3, p0, Lcom/android/settings/bluetooth/DockService$1;->SJ:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/DockService;->a(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 407
    return-void
.end method
