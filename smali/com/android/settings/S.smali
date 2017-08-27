.class Lcom/android/settings/S;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsAppListSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic bT:Lcom/android/settings/Q;

.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/android/settings/Q;)V
    .locals 1

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/settings/S;->bT:Lcom/android/settings/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/S;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/X;Lcom/android/settings/X;)I
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/S;->sCollator:Ljava/text/Collator;

    invoke-static {p1}, Lcom/android/settings/X;->b(Lcom/android/settings/X;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/android/settings/X;->b(Lcom/android/settings/X;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 216
    check-cast p1, Lcom/android/settings/X;

    check-cast p2, Lcom/android/settings/X;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/S;->a(Lcom/android/settings/X;Lcom/android/settings/X;)I

    move-result v0

    return v0
.end method
