.class Lcom/android/settings/notification/ManagedServiceSettings$1;
.super Ljava/lang/Object;
.source "ManagedServiceSettings.java"

# interfaces
.implements Lcom/android/settings/notification/ServiceListing$Callback;


# instance fields
.field final synthetic akN:Lcom/android/settings/notification/ManagedServiceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ManagedServiceSettings;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/notification/ManagedServiceSettings$1;->akN:Lcom/android/settings/notification/ManagedServiceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings$1;->akN:Lcom/android/settings/notification/ManagedServiceSettings;

    invoke-static {v0, p1}, Lcom/android/settings/notification/ManagedServiceSettings;->a(Lcom/android/settings/notification/ManagedServiceSettings;Ljava/util/List;)V

    .line 75
    return-void
.end method
