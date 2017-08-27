.class public Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;
.super Lcom/android/settings/BaseEditFragment;
.source "NewFingerprintInternalActivity.java"


# instance fields
.field private dU:Z

.field private es:Lcom/android/settings/dc;

.field private gR:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mProgress:I

.field private sA:Landroid/widget/TextView;

.field private un:Landroid/widget/ImageView;

.field private vJ:I

.field private vK:Landroid/os/Vibrator;

.field private vL:Landroid/widget/TextView;

.field private vM:Landroid/widget/EditText;

.field private vN:Landroid/widget/TextView;

.field private vO:Landroid/widget/TextView;

.field private vP:Landroid/widget/VideoView;

.field private vQ:Landroid/widget/VideoView;

.field private vR:Landroid/widget/Button;

.field private vS:Landroid/view/View;

.field private vT:Landroid/app/AlertDialog;

.field private vU:Z

.field private vV:I

.field private vW:Landroid/net/Uri;

.field private vX:I

.field private vY:Z

.field private vZ:Ljava/lang/String;

.field private wa:Lcom/android/settings/db;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->es:Lcom/android/settings/dc;

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vJ:I

    .line 60
    iput v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mProgress:I

    .line 61
    iput-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vK:Landroid/os/Vibrator;

    .line 73
    iput-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vT:Landroid/app/AlertDialog;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mHandler:Landroid/os/Handler;

    .line 75
    iput-boolean v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vU:Z

    .line 76
    iput v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vV:I

    .line 77
    iput-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vW:Landroid/net/Uri;

    .line 300
    new-instance v0, Lcom/android/settings/fU;

    invoke-direct {v0, p0}, Lcom/android/settings/fU;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->wa:Lcom/android/settings/db;

    return-void
.end method

.method private Q(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 279
    const-string v0, "scorpio"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vY:Z

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_dark"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "raw"

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 285
    if-nez v1, :cond_1

    .line 286
    const/4 v0, 0x0

    .line 288
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mProgress:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vT:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vW:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vW:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->Q(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/app/AlertDialog;)V
    .locals 1

    .prologue
    .line 436
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 439
    :cond_0
    return-void
.end method

.method private a(Landroid/net/Uri;Landroid/widget/VideoView;)V
    .locals 1

    .prologue
    .line 293
    if-eqz p1, :cond_0

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vW:Landroid/net/Uri;

    .line 295
    invoke-virtual {p2, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 296
    invoke-virtual {p2}, Landroid/widget/VideoView;->start()V

    .line 298
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/net/Uri;Landroid/widget/VideoView;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->a(Landroid/net/Uri;Landroid/widget/VideoView;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vV:I

    return p1
.end method

.method static synthetic b(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vQ:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vZ:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->a(Landroid/app/AlertDialog;)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vP:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vJ:I

    return v0
.end method

.method static synthetic e(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vX:I

    return v0
.end method

.method static synthetic f(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vT:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private fh()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->es:Lcom/android/settings/dc;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->es:Lcom/android/settings/dc;

    invoke-virtual {v0}, Lcom/android/settings/dc;->ej()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->es:Lcom/android/settings/dc;

    .line 192
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vK:Landroid/os/Vibrator;

    return-object v0
.end method

.method private gG()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vM:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vZ:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/settings/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vO:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vL:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Lcom/android/settings/dc;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->es:Lcom/android/settings/dc;

    return-object v0
.end method

.method static synthetic k(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vM:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic l(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vN:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->sA:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vR:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic o(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vS:Landroid/view/View;

    return-object v0
.end method

.method static synthetic p(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mProgress:I

    return v0
.end method

.method static synthetic q(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vJ:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vJ:I

    return v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 196
    const v0, 0x7f0400cb

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->gR:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->gR:Landroid/view/View;

    const v1, 0x7f130192

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vL:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->gR:Landroid/view/View;

    const v1, 0x7f130193

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vM:Landroid/widget/EditText;

    .line 200
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->gR:Landroid/view/View;

    const v1, 0x7f130197

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vN:Landroid/widget/TextView;

    .line 201
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->gR:Landroid/view/View;

    const v1, 0x7f130198

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vO:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->gR:Landroid/view/View;

    const v1, 0x7f130199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->sA:Landroid/widget/TextView;

    .line 203
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->gR:Landroid/view/View;

    const v1, 0x7f130194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->un:Landroid/widget/ImageView;

    .line 204
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->gR:Landroid/view/View;

    const v1, 0x7f130195

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vP:Landroid/widget/VideoView;

    .line 205
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->gR:Landroid/view/View;

    const v1, 0x7f130196

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vQ:Landroid/widget/VideoView;

    .line 207
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->gR:Landroid/view/View;

    const v1, 0x7f13019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vR:Landroid/widget/Button;

    .line 208
    new-instance v0, Lcom/android/settings/fQ;

    invoke-direct {v0, p0}, Lcom/android/settings/fQ;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    .line 215
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vP:Landroid/widget/VideoView;

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    .line 216
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vP:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 217
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vQ:Landroid/widget/VideoView;

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    .line 218
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vQ:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vQ:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/settings/fR;

    invoke-direct {v1, p0}, Lcom/android/settings/fR;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->un:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vO:Landroid/widget/TextView;

    const v1, 0x7f0a1119

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->sA:Landroid/widget/TextView;

    const v1, 0x7f0a111a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 232
    const-string v0, "core_scan_gesture"

    invoke-direct {p0, v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->Q(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vP:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 236
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "core_scan_output_%02d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->Q(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 238
    iget-boolean v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->dU:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vP:Landroid/widget/VideoView;

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vP:Landroid/widget/VideoView;

    new-instance v2, Lcom/android/settings/fS;

    invoke-direct {v2, p0}, Lcom/android/settings/fS;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 247
    :cond_1
    if-eqz v0, :cond_2

    .line 248
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vQ:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vR:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/fT;

    invoke-direct {v1, p0}, Lcom/android/settings/fT;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->gR:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 163
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/BaseEditFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 165
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 166
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vU:Z

    .line 168
    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->es:Lcom/android/settings/dc;

    iget-object v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->wa:Lcom/android/settings/db;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/dc;->a(Lcom/android/settings/db;[B)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vK:Landroid/os/Vibrator;

    .line 171
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vP:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/BaseEditFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10000a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vX:I

    .line 109
    new-instance v0, Lcom/android/settings/dc;

    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/dc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->es:Lcom/android/settings/dc;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 112
    if-eqz v3, :cond_0

    .line 113
    const-string v0, "add_keyguard_password_then_add_fingerprint"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->dU:Z

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "device_provisioned"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vY:Z

    .line 121
    iget-boolean v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->dU:Z

    if-eqz v0, :cond_2

    .line 122
    iput-boolean v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vU:Z

    .line 123
    const-string v0, "hw_auth_token"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->es:Lcom/android/settings/dc;

    iget-object v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->wa:Lcom/android/settings/db;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/dc;->a(Lcom/android/settings/db;[B)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vK:Landroid/os/Vibrator;

    .line 158
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 159
    return-void

    .line 115
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->dU:Z

    goto :goto_0

    :cond_1
    move v0, v2

    .line 118
    goto :goto_1

    .line 127
    :cond_2
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 128
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/settings/dH;->b(Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v3

    .line 130
    const-class v0, Lcom/android/settings/MiuiSecurityChooseUnlock$InternalActivity;

    .line 131
    if-eqz v3, :cond_3

    .line 132
    const/high16 v0, 0x10000

    if-ne v3, v0, :cond_4

    .line 133
    const-class v0, Lcom/android/settings/ConfirmLockPattern$InternalActivity;

    .line 139
    :cond_3
    :goto_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_5

    .line 140
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, v2

    .line 153
    :goto_4
    const-string v2, "has_challenge"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    const-string v1, "challenge"

    iget-object v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->es:Lcom/android/settings/dc;

    invoke-virtual {v2}, Lcom/android/settings/dc;->preEnroll()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 155
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 135
    :cond_4
    const-class v0, Lcom/android/settings/ConfirmLockPassword$InternalActivity;

    goto :goto_3

    .line 142
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 143
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    const-string v0, "com.android.settings.ConfirmLockPattern.header"

    const-string v5, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 145
    const-string v0, "com.android.settings.titleColor"

    const-string v5, "com.android.settings.titleColor"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    const-string v0, "com.android.settings.bgColor"

    const-string v5, "com.android.settings.bgColor"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    const-string v0, "com.android.settings.lockBtnWhite"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    const-string v0, "com.android.settings.forgetPatternColor"

    const-string v5, "com.android.settings.forgetPatternColor"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    const-string v0, "com.android.settings.footerTextColor"

    const-string v5, "com.android.settings.footerTextColor"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    const-string v0, "com.android.settings.forgetPassword"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v0, v3

    goto :goto_4
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vU:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->fh()V

    .line 87
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vT:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->a(Landroid/app/AlertDialog;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->finish()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->gG()V

    .line 94
    :cond_1
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onPause()V

    .line 95
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onStart()V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vS:Landroid/view/View;

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    return-void
.end method
