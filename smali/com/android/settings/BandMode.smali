.class public Lcom/android/settings/BandMode;
.super Landroid/app/Activity;
.source "BandMode.java"


# static fields
.field private static final cp:[Ljava/lang/String;


# instance fields
.field private cq:Landroid/widget/ListView;

.field private cr:Landroid/widget/ArrayAdapter;

.field private cs:Lcom/android/settings/aa;

.field private ct:Landroid/content/DialogInterface;

.field private cu:Lcom/android/internal/telephony/Phone;

.field private cv:Landroid/widget/AdapterView$OnItemClickListener;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Automatic"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EURO Band"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "USA Band"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "JAPAN Band"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AUS Band"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AUS2 Band"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/BandMode;->cp:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/settings/BandMode;->cs:Lcom/android/settings/aa;

    .line 54
    iput-object v0, p0, Lcom/android/settings/BandMode;->cu:Lcom/android/internal/telephony/Phone;

    .line 79
    new-instance v0, Lcom/android/settings/Y;

    invoke-direct {v0, p0}, Lcom/android/settings/Y;-><init>(Lcom/android/settings/BandMode;)V

    iput-object v0, p0, Lcom/android/settings/BandMode;->cv:Landroid/widget/AdapterView$OnItemClickListener;

    .line 192
    new-instance v0, Lcom/android/settings/Z;

    invoke-direct {v0, p0}, Lcom/android/settings/Z;-><init>(Lcom/android/settings/BandMode;)V

    iput-object v0, p0, Lcom/android/settings/BandMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/BandMode;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/BandMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/BandMode;Lcom/android/settings/aa;)Lcom/android/settings/aa;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/settings/BandMode;->cs:Lcom/android/settings/aa;

    return-object p1
.end method

.method private a(Landroid/os/AsyncResult;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/android/settings/BandMode;->ct:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/BandMode;->ct:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/BandMode;->ah()V

    .line 141
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    .line 143
    aget v4, v0, v1

    .line 145
    if-lez v4, :cond_3

    move v3, v2

    .line 146
    :goto_0
    if-ge v3, v4, :cond_1

    .line 147
    new-instance v5, Lcom/android/settings/aa;

    aget v6, v0, v3

    invoke-direct {v5, v6}, Lcom/android/settings/aa;-><init>(I)V

    .line 148
    iget-object v6, p0, Lcom/android/settings/BandMode;->cr:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 146
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 155
    :goto_1
    if-nez v0, :cond_2

    move v0, v1

    .line 157
    :goto_2
    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    .line 158
    new-instance v1, Lcom/android/settings/aa;

    invoke-direct {v1, v0}, Lcom/android/settings/aa;-><init>(I)V

    .line 159
    iget-object v2, p0, Lcom/android/settings/BandMode;->cr:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/android/settings/BandMode;->cq:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 164
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/settings/BandMode;Landroid/os/AsyncResult;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/BandMode;->a(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/BandMode;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/BandMode;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method private ag()V
    .locals 2

    .prologue
    .line 116
    const v0, 0x7f0a0161

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BandMode;->ct:Landroid/content/DialogInterface;

    .line 126
    iget-object v0, p0, Lcom/android/settings/BandMode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/android/settings/BandMode;->cu:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 129
    return-void
.end method

.method private ah()V
    .locals 3

    .prologue
    .line 182
    :goto_0
    iget-object v0, p0, Lcom/android/settings/BandMode;->cr:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/BandMode;->cr:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/BandMode;->cr:Landroid/widget/ArrayAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method static synthetic ai()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/settings/BandMode;->cp:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/BandMode;)Lcom/android/settings/aa;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/BandMode;->cs:Lcom/android/settings/aa;

    return-object v0
.end method

.method private b(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0a0162

    invoke-virtual {p0, v1}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/BandMode;->cs:Lcom/android/settings/aa;

    invoke-virtual {v1}, Lcom/android/settings/aa;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    if-eqz p1, :cond_0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0a0163

    invoke-virtual {p0, v1}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BandMode;->ct:Landroid/content/DialogInterface;

    .line 179
    return-void

    .line 173
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0a0164

    invoke-virtual {p0, v1}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/BandMode;)Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/BandMode;->cu:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->requestWindowFeature(I)Z

    .line 62
    const v0, 0x7f040023

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->setContentView(I)V

    .line 64
    const v0, 0x7f0a0160

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/BandMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 68
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BandMode;->cu:Lcom/android/internal/telephony/Phone;

    .line 70
    const v0, 0x7f13004b

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/BandMode;->cq:Landroid/widget/ListView;

    .line 71
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/BandMode;->cr:Landroid/widget/ArrayAdapter;

    .line 73
    iget-object v0, p0, Lcom/android/settings/BandMode;->cq:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/BandMode;->cr:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/BandMode;->cq:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/BandMode;->cv:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    invoke-direct {p0}, Lcom/android/settings/BandMode;->ag()V

    .line 77
    return-void
.end method
