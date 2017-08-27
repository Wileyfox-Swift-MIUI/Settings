.class public Lcom/android/settings/privacypassword/BussinessPackageInfoCache;
.super Ljava/lang/Object;
.source "BussinessPackageInfoCache.java"


# static fields
.field private static aoL:Ljava/util/Map;

.field private static aoM:Ljava/util/Map;

.field private static aoN:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const v11, 0x7f0a11f4

    const v10, 0x7f0a11f3

    const v9, 0x7f0a11f2

    const v1, 0x7f0a11f1

    const/4 v5, 0x0

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->aoL:Ljava/util/Map;

    .line 23
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->aoL:Ljava/util/Map;

    const-string v2, "com.android.mms"

    new-instance v3, Lcom/android/settings/privacypassword/BussinessPackageInfo;

    const-string v4, "privacy_mms"

    invoke-direct {v3, v1, v4}, Lcom/android/settings/privacypassword/BussinessPackageInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->aoL:Ljava/util/Map;

    const-string v2, "com.miui.gallery"

    new-instance v3, Lcom/android/settings/privacypassword/BussinessPackageInfo;

    const-string v4, "privacy_gallery"

    invoke-direct {v3, v9, v4}, Lcom/android/settings/privacypassword/BussinessPackageInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->aoL:Ljava/util/Map;

    const-string v2, "com.android.fileexplorer"

    new-instance v3, Lcom/android/settings/privacypassword/BussinessPackageInfo;

    const-string v4, "privacy_file"

    invoke-direct {v3, v10, v4}, Lcom/android/settings/privacypassword/BussinessPackageInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->aoL:Ljava/util/Map;

    const-string v2, "com.miui.notes"

    new-instance v3, Lcom/android/settings/privacypassword/BussinessPackageInfo;

    const-string v4, "privacy_notes"

    invoke-direct {v3, v11, v4}, Lcom/android/settings/privacypassword/BussinessPackageInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->aoM:Ljava/util/Map;

    .line 35
    sget-object v7, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->aoM:Ljava/util/Map;

    const-string v8, "privacy_mms"

    new-instance v0, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;

    const v2, 0x7f0a11f8

    const v3, 0x7f020261

    const-string v4, "com.android.mms"

    const-string v6, "android.intent.action.MAIN"

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;-><init>(IIILjava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v7, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->aoM:Ljava/util/Map;

    const-string v8, "privacy_gallery"

    new-instance v0, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;

    const v2, 0x7f0a11f9

    const v3, 0x7f020260

    const-string v4, "com.miui.gallery"

    const-string v6, "android.intent.action.MAIN"

    move v1, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;-><init>(IIILjava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v7, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->aoM:Ljava/util/Map;

    const-string v8, "privacy_file"

    new-instance v0, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;

    const v2, 0x7f0a11fa

    const v3, 0x7f02025f

    const-string v4, "com.android.fileexplorer"

    const-string v6, "android.intent.action.MAIN"

    move v1, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;-><init>(IIILjava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v7, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->aoM:Ljava/util/Map;

    const-string v8, "privacy_notes"

    new-instance v0, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;

    const v2, 0x7f0a11fb

    const v3, 0x7f020262

    const-string v4, "com.miui.notes"

    const-string v6, "android.intent.action.MAIN"

    move v1, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;-><init>(IIILjava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v7, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->aoM:Ljava/util/Map;

    const-string v8, "child_mode"

    new-instance v0, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;

    const v1, 0x7f0a11f6

    const v2, 0x7f0a11fc

    const v3, 0x7f02025d

    const-string v4, "com.android.settings"

    const/4 v5, 0x1

    const-string v6, "android.intent.action.CHILDREN_CONTROL_SETTING"

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;-><init>(IIILjava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->aoN:Ljava/util/Map;

    .line 54
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->aoN:Ljava/util/Map;

    const-string v1, "privacy_mms"

    const-string v2, "privacy_mms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->aoN:Ljava/util/Map;

    const-string v1, "privacy_gallery"

    const-string v2, "privacy_gallery"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->aoN:Ljava/util/Map;

    const-string v1, "privacy_file"

    const-string v2, "privacy_file"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->aoN:Ljava/util/Map;

    const-string v1, "privacy_notes"

    const-string v2, "privacy_notes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->aoN:Ljava/util/Map;

    const-string v1, "child_mode"

    const-string v2, "child_mode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tS()Ljava/util/Map;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->aoL:Ljava/util/Map;

    return-object v0
.end method

.method public static tT()Ljava/util/Map;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->aoM:Ljava/util/Map;

    return-object v0
.end method

.method public static tU()Ljava/util/Map;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->aoN:Ljava/util/Map;

    return-object v0
.end method
