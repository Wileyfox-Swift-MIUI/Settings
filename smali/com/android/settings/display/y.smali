.class Lcom/android/settings/display/y;
.super Ljava/lang/Object;
.source "PaperModeFragment.java"

# interfaces
.implements Lmiui/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field final synthetic abm:Lcom/android/settings/display/PaperModeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PaperModeFragment;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings/display/y;->abm:Lcom/android/settings/display/PaperModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lmiui/widget/TimePicker;II)V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/display/y;->abm:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {v0}, Lcom/android/settings/display/PaperModeFragment;->a(Lcom/android/settings/display/PaperModeFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    mul-int/lit8 v0, p2, 0x3c

    add-int/2addr v0, p3

    invoke-static {v0}, Lcom/android/settings/display/PaperModeFragment;->bR(I)I

    .line 112
    iget-object v0, p0, Lcom/android/settings/display/y;->abm:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {v0}, Lcom/android/settings/display/PaperModeFragment;->b(Lcom/android/settings/display/PaperModeFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/display/PaperModeFragment;->hM()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/display/H;->o(Landroid/content/Context;I)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/display/y;->abm:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {v0}, Lcom/android/settings/display/PaperModeFragment;->c(Lcom/android/settings/display/PaperModeFragment;)Lcom/android/settings/dndmode/LabelPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/y;->abm:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {}, Lcom/android/settings/display/PaperModeFragment;->hM()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/display/PaperModeFragment;->a(Lcom/android/settings/display/PaperModeFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/android/settings/display/y;->abm:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {v0}, Lcom/android/settings/display/PaperModeFragment;->b(Lcom/android/settings/display/PaperModeFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/display/PaperModeFragment;->bv(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/display/y;->abm:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {v0}, Lcom/android/settings/display/PaperModeFragment;->b(Lcom/android/settings/display/PaperModeFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/display/H;->bw(Landroid/content/Context;)V

    .line 122
    :cond_0
    return-void

    .line 115
    :cond_1
    mul-int/lit8 v0, p2, 0x3c

    add-int/2addr v0, p3

    invoke-static {v0}, Lcom/android/settings/display/PaperModeFragment;->bS(I)I

    .line 116
    iget-object v0, p0, Lcom/android/settings/display/y;->abm:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {v0}, Lcom/android/settings/display/PaperModeFragment;->b(Lcom/android/settings/display/PaperModeFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/display/PaperModeFragment;->qg()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/display/H;->p(Landroid/content/Context;I)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/display/y;->abm:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {v0}, Lcom/android/settings/display/PaperModeFragment;->d(Lcom/android/settings/display/PaperModeFragment;)Lcom/android/settings/dndmode/LabelPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/y;->abm:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {}, Lcom/android/settings/display/PaperModeFragment;->qg()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/display/PaperModeFragment;->a(Lcom/android/settings/display/PaperModeFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0
.end method
