.class final Lcom/android/settings/ei;
.super Ljava/lang/Object;
.source "MiuiAppPicker.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final bx:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ei;->bx:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings/ek;Lcom/android/settings/ek;)I
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/ei;->bx:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings/ek;->label:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/android/settings/ek;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 144
    check-cast p1, Lcom/android/settings/ek;

    check-cast p2, Lcom/android/settings/ek;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ei;->a(Lcom/android/settings/ek;Lcom/android/settings/ek;)I

    move-result v0

    return v0
.end method
