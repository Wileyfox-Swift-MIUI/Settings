.class Lcom/android/settings/inputmethod/SpellCheckersSettings$2;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aiP:Lcom/android/settings/inputmethod/SpellCheckersSettings;

.field final synthetic aiQ:Landroid/view/textservice/SpellCheckerInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;->aiP:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iput-object p2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;->aiQ:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;->aiP:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;->aiQ:Landroid/view/textservice/SpellCheckerInfo;

    invoke-static {v0, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->a(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    .line 242
    return-void
.end method
