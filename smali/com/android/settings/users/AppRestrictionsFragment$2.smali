.class Lcom/android/settings/users/AppRestrictionsFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionsFragment.java"


# instance fields
.field final synthetic avP:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$2;->avP:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$2;->avP:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-static {v0, p2}, Lcom/android/settings/users/AppRestrictionsFragment;->a(Lcom/android/settings/users/AppRestrictionsFragment;Landroid/content/Intent;)V

    .line 135
    return-void
.end method
