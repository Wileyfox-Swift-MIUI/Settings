.class public Lcom/android/settings/credentials/MiuiCredentialsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiCredentialsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private aU(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/settings/credentials/MiuiCredentialsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    const-string v1, "drawable"

    invoke-virtual {p0}, Lcom/android/settings/credentials/MiuiCredentialsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/settings/credentials/MiuiCredentialsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 23
    const v0, 0x7f040042

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 24
    const v0, 0x7f13008c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 25
    invoke-static {}, Lcom/android/settings/credentials/b;->oU()Lcom/android/settings/credentials/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/credentials/MiuiCredentialsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/credentials/b;->aY(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "credentials_image_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/credentials/b;->oU()Lcom/android/settings/credentials/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/credentials/b;->oV()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/credentials/MiuiCredentialsFragment;->aU(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 29
    :cond_0
    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    :goto_0
    return-object v2

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/credentials/MiuiCredentialsFragment;->finish()V

    goto :goto_0
.end method
