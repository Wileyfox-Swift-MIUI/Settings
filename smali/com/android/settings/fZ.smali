.class Lcom/android/settings/fZ;
.super Ljava/lang/Object;
.source "NotificationAppListSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic wh:Lcom/android/settings/fX;


# direct methods
.method constructor <init>(Lcom/android/settings/fX;)V
    .locals 1

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/settings/fZ;->wh:Lcom/android/settings/fX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fZ;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/gd;Lcom/android/settings/gd;)I
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/fZ;->sCollator:Ljava/text/Collator;

    invoke-static {p1}, Lcom/android/settings/gd;->b(Lcom/android/settings/gd;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/android/settings/gd;->b(Lcom/android/settings/gd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 159
    check-cast p1, Lcom/android/settings/gd;

    check-cast p2, Lcom/android/settings/gd;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fZ;->a(Lcom/android/settings/gd;Lcom/android/settings/gd;)I

    move-result v0

    return v0
.end method
