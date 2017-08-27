.class Lcom/android/settings/hy;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic Ap:Lcom/android/settings/hs;


# direct methods
.method constructor <init>(Lcom/android/settings/hs;)V
    .locals 0

    .prologue
    .line 888
    iput-object p1, p0, Lcom/android/settings/hy;->Ap:Lcom/android/settings/hs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/settings/hy;->Ap:Lcom/android/settings/hs;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/hs;->b(Lcom/android/settings/hs;Z)V

    .line 892
    return-void
.end method
