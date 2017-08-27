.class Lcom/android/settings/display/F;
.super Ljava/lang/Object;
.source "PaperModeSetAppsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic abx:Lcom/android/settings/display/E;

.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/android/settings/display/E;)V
    .locals 1

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/settings/display/F;->abx:Lcom/android/settings/display/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/F;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/display/G;Lcom/android/settings/display/G;)I
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/settings/display/F;->sCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/settings/display/G;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/settings/display/G;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 223
    check-cast p1, Lcom/android/settings/display/G;

    check-cast p2, Lcom/android/settings/display/G;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/F;->a(Lcom/android/settings/display/G;Lcom/android/settings/display/G;)I

    move-result v0

    return v0
.end method
