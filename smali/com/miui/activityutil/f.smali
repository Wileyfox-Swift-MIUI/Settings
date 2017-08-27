.class public Lcom/miui/activityutil/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/miui/activityutil/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/activityutil/f;->a:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/miui/activityutil/i;)V
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {p1, v0}, Lcom/miui/activityutil/i;->a(Lcom/miui/activityutil/i;Ljava/lang/String;)V

    .line 166
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 167
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/activityutil/i;->b(Lcom/miui/activityutil/i;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;[Ljava/lang/String;Ljava/io/File;Lcom/miui/activityutil/g;)V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/miui/activityutil/i;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/miui/activityutil/i;-><init>(Lcom/miui/activityutil/f;[Ljava/lang/String;Ljava/io/File;Lcom/miui/activityutil/g;)V

    .line 158
    invoke-static {p1, v0}, Lcom/miui/activityutil/f;->a(Landroid/content/Context;Lcom/miui/activityutil/i;)V

    .line 159
    invoke-virtual {v0}, Lcom/miui/activityutil/i;->a()V

    .line 160
    return-void
.end method

.method public final a(Landroid/content/Context;[Ljava/lang/String;[BLcom/miui/activityutil/g;)V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/miui/activityutil/i;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/miui/activityutil/i;-><init>(Lcom/miui/activityutil/f;[Ljava/lang/String;[BLcom/miui/activityutil/g;)V

    .line 152
    invoke-static {p1, v0}, Lcom/miui/activityutil/f;->a(Landroid/content/Context;Lcom/miui/activityutil/i;)V

    .line 153
    invoke-virtual {v0}, Lcom/miui/activityutil/i;->a()V

    .line 154
    return-void
.end method
