.class Lcom/android/settings/display/h;
.super Ljava/lang/Object;
.source "FluencyModeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aai:Lcom/android/settings/display/FluencyModeListPreference;

.field final synthetic aaj:I


# direct methods
.method constructor <init>(Lcom/android/settings/display/FluencyModeListPreference;I)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings/display/h;->aai:Lcom/android/settings/display/FluencyModeListPreference;

    iput p2, p0, Lcom/android/settings/display/h;->aaj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/display/h;->aai:Lcom/android/settings/display/FluencyModeListPreference;

    iget v1, p0, Lcom/android/settings/display/h;->aaj:I

    invoke-static {v0, v1}, Lcom/android/settings/display/FluencyModeListPreference;->c(Lcom/android/settings/display/FluencyModeListPreference;I)V

    .line 139
    return-void
.end method
