.class Lcom/android/settings/X;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsAppListSettings.java"


# instance fields
.field final synthetic bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

.field private bX:Landroid/content/pm/ApplicationInfo;

.field private bY:Ljava/lang/String;

.field private bZ:I

.field private mLabel:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;Landroid/content/pm/ApplicationInfo;I)V
    .locals 3

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/settings/X;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/X;->mType:I

    .line 293
    iput-object p2, p0, Lcom/android/settings/X;->bX:Landroid/content/pm/ApplicationInfo;

    .line 294
    invoke-static {p1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->g(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\u00A0"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/X;->mLabel:Ljava/lang/String;

    .line 295
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/X;->mType:I

    .line 296
    invoke-virtual {p0, p3}, Lcom/android/settings/X;->setFlag(I)V

    .line 297
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/settings/X;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/X;->mType:I

    .line 300
    iput-object p2, p0, Lcom/android/settings/X;->mLabel:Ljava/lang/String;

    .line 301
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/X;->mType:I

    .line 302
    return-void
.end method

.method static synthetic b(Lcom/android/settings/X;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/settings/X;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/X;)I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/android/settings/X;->mType:I

    return v0
.end method

.method static synthetic d(Lcom/android/settings/X;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/settings/X;->bY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/X;)I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/android/settings/X;->bZ:I

    return v0
.end method


# virtual methods
.method public ad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/settings/X;->bX:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/X;->bX:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setFlag(I)V
    .locals 2

    .prologue
    .line 309
    iput p1, p0, Lcom/android/settings/X;->bZ:I

    .line 310
    iget-object v0, p0, Lcom/android/settings/X;->bS:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->a(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/X;->ad()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->b(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/X;->bY:Ljava/lang/String;

    .line 311
    return-void
.end method
