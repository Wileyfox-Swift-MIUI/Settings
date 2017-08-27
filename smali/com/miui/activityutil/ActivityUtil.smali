.class public Lcom/miui/activityutil/ActivityUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delayedUpload(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 13
    invoke-static {p0}, Lcom/miui/activityutil/j;->a(Landroid/content/Context;)Lcom/miui/activityutil/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/activityutil/j;->a(J)V

    .line 14
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 9
    invoke-static {p0}, Lcom/miui/activityutil/j;->a(Landroid/content/Context;)Lcom/miui/activityutil/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/activityutil/j;->a(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public static setAllowNetworking(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 17
    invoke-static {p0}, Lcom/miui/activityutil/j;->a(Landroid/content/Context;)Lcom/miui/activityutil/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/activityutil/j;->a(Z)V

    .line 18
    return-void
.end method
