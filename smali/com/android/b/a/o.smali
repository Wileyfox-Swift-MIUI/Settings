.class public Lcom/android/b/a/o;
.super Lcom/android/b/a/x;
.source "ApplicationsState.java"


# instance fields
.field public final aKi:Ljava/io/File;

.field aKj:Ljava/lang/String;

.field public aKk:J

.field public aKl:J

.field public aKm:Z

.field public aKn:Z

.field public aKo:Z

.field public aKp:Ljava/lang/String;

.field public aKq:Ljava/lang/String;

.field public aKr:Ljava/lang/String;

.field public aKs:Z

.field public aKt:J

.field public aKu:Ljava/lang/String;

.field public aKv:Ljava/lang/Object;

.field public bA:Landroid/content/pm/ApplicationInfo;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public final id:J

.field public label:Ljava/lang/String;

.field public size:J


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V
    .locals 3

    .prologue
    .line 1196
    invoke-direct {p0}, Lcom/android/b/a/x;-><init>()V

    .line 1197
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/b/a/o;->aKi:Ljava/io/File;

    .line 1198
    iput-wide p3, p0, Lcom/android/b/a/o;->id:J

    .line 1199
    iput-object p2, p0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    .line 1200
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/b/a/o;->size:J

    .line 1201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/b/a/o;->aKs:Z

    .line 1203
    const-string v0, ""

    iput-object v0, p0, Lcom/android/b/a/o;->aKj:Ljava/lang/String;

    .line 1204
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/b/a/o;->aKm:Z

    .line 1205
    invoke-virtual {p0, p1}, Lcom/android/b/a/o;->cY(Landroid/content/Context;)V

    .line 1206
    return-void
.end method

.method private trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1238
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1240
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1241
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->isGraphic(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1246
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1249
    :goto_1
    return-object v0

    .line 1240
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1249
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public Ae()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/b/a/o;->aKu:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/android/b/a/o;->aKu:Ljava/lang/String;

    .line 1179
    :goto_0
    return-object v0

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/android/b/a/o;->label:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/b/a/a;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/a/o;->aKu:Ljava/lang/String;

    .line 1179
    iget-object v0, p0, Lcom/android/b/a/o;->aKu:Ljava/lang/String;

    goto :goto_0
.end method

.method public cY(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1209
    iget-object v0, p0, Lcom/android/b/a/o;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/b/a/o;->aKn:Z

    if-nez v0, :cond_1

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/android/b/a/o;->aKi:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1211
    iput-boolean v2, p0, Lcom/android/b/a/o;->aKn:Z

    .line 1212
    iget-object v0, p0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/b/a/o;->label:Ljava/lang/String;

    .line 1220
    :goto_0
    iget-object v0, p0, Lcom/android/b/a/o;->label:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1221
    iget-object v0, p0, Lcom/android/b/a/o;->label:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/b/a/o;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1222
    if-eqz v0, :cond_4

    .line 1223
    invoke-static {}, Lmiui/text/ChinesePinyinConverter;->getInstance()Lmiui/text/ChinesePinyinConverter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/text/ChinesePinyinConverter;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1224
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1225
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/text/ChinesePinyinConverter$Token;

    iget-object v0, v0, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/b/a/o;->aKj:Ljava/lang/String;

    .line 1233
    :cond_1
    :goto_1
    return-void

    .line 1214
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/b/a/o;->aKn:Z

    .line 1215
    iget-object v0, p0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1216
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/android/b/a/o;->label:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_2

    .line 1228
    :cond_4
    iget-object v0, p0, Lcom/android/b/a/o;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/b/a/o;->aKj:Ljava/lang/String;

    goto :goto_1
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-wide/32 v2, 0x927c0

    invoke-static {p1, v0, v1, v2, v3}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1288
    iget-object v1, p0, Lcom/android/b/a/o;->bA:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1289
    invoke-static {p1, v0}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1291
    :cond_0
    return-object v0
.end method
