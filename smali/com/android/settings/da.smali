.class Lcom/android/settings/da;
.super Ljava/lang/Object;
.source "EncryptionSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic na:Lcom/android/settings/cY;


# direct methods
.method constructor <init>(Lcom/android/settings/cY;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/settings/da;->na:Lcom/android/settings/cY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/settings/da;->na:Lcom/android/settings/cY;

    invoke-virtual {v0}, Lcom/android/settings/cY;->ee()V

    .line 319
    return-void
.end method
