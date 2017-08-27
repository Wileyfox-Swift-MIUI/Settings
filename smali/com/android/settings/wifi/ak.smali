.class public Lcom/android/settings/wifi/ak;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private aBH:Landroid/widget/ImageView;

.field private aBI:Z

.field private final aBo:Lcom/android/b/e/a;

.field protected final aDS:Lcom/android/settings/wifi/an;

.field private final aDT:Landroid/widget/ArrayAdapter;

.field private final aDU:Landroid/widget/ArrayAdapter;

.field private final aDV:Landroid/os/Handler;

.field protected aDW:I

.field protected aDX:Landroid/widget/TextView;

.field private aDY:Ljava/lang/String;

.field protected aDZ:Landroid/widget/Spinner;

.field protected aEA:Landroid/widget/Spinner;

.field protected aEB:Landroid/widget/Spinner;

.field protected aEC:Ljava/util/ArrayList;

.field protected aED:Ljava/lang/String;

.field protected aEE:Ljava/lang/String;

.field protected aEF:Ljava/lang/String;

.field protected aEG:Ljava/lang/String;

.field protected aEH:Landroid/widget/TextView;

.field private aEI:Z

.field private aEJ:I

.field private aEK:[Ljava/lang/String;

.field private aEL:Z

.field private aEM:Z

.field protected aEN:Landroid/widget/TextView;

.field private aEa:Landroid/widget/Spinner;

.field private aEb:Landroid/widget/Spinner;

.field private aEc:Landroid/widget/Spinner;

.field private aEd:Landroid/widget/Spinner;

.field private aEe:Landroid/widget/ArrayAdapter;

.field private aEf:Landroid/widget/Spinner;

.field private aEg:Landroid/widget/TextView;

.field private aEh:Landroid/widget/TextView;

.field protected aEi:Landroid/widget/Spinner;

.field private aEj:Landroid/widget/TextView;

.field private aEk:Landroid/widget/TextView;

.field private aEl:Landroid/widget/TextView;

.field private aEm:Landroid/widget/TextView;

.field private aEn:Landroid/widget/TextView;

.field protected aEo:Landroid/widget/Spinner;

.field protected aEp:Landroid/widget/TextView;

.field protected aEq:Landroid/widget/TextView;

.field protected aEr:Landroid/widget/TextView;

.field protected aEs:Landroid/widget/TextView;

.field protected aEt:Landroid/net/IpConfiguration$IpAssignment;

.field protected aEu:Landroid/net/IpConfiguration$ProxySettings;

.field protected aEv:Landroid/net/ProxyInfo;

.field protected aEw:Landroid/net/StaticIpConfiguration;

.field aEx:Lcom/android/settings/wifi/Q;

.field protected aEy:Landroid/widget/Spinner;

.field protected aEz:Landroid/widget/Spinner;

.field private mContext:Landroid/content/Context;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/b/e/a;)V
    .locals 5

    .prologue
    const v4, 0x1090008

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const-string v0, "unspecified"

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aDY:Ljava/lang/String;

    .line 188
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEt:Landroid/net/IpConfiguration$IpAssignment;

    .line 191
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEu:Landroid/net/IpConfiguration$ProxySettings;

    .line 195
    iput-object v1, p0, Lcom/android/settings/wifi/ak;->aEv:Landroid/net/ProxyInfo;

    .line 197
    iput-object v1, p0, Lcom/android/settings/wifi/ak;->aEw:Landroid/net/StaticIpConfiguration;

    .line 228
    iput-boolean v2, p0, Lcom/android/settings/wifi/ak;->aEI:Z

    .line 229
    iput v2, p0, Lcom/android/settings/wifi/ak;->aEJ:I

    .line 242
    iput-object p1, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    .line 243
    iput-object p2, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    .line 244
    iput-object v1, p0, Lcom/android/settings/wifi/ak;->aDS:Lcom/android/settings/wifi/an;

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/ak;->aEL:Z

    .line 246
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aDV:Landroid/os/Handler;

    .line 248
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->mContext:Landroid/content/Context;

    .line 249
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mContext:Landroid/content/Context;

    const v1, 0x7f0a02f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aDY:Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f13023d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEa:Landroid/widget/Spinner;

    .line 251
    const-string v0, "support_wapi"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f13023e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEa:Landroid/widget/Spinner;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEa:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEa:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEa:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEa:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEa:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 258
    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130268

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEi:Landroid/widget/Spinner;

    .line 260
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEi:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 261
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEi:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEi:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEi:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 263
    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130261

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEo:Landroid/widget/Spinner;

    .line 265
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEo:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 266
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEo:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEo:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEo:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 268
    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130254

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 270
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f13025b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEy:Landroid/widget/Spinner;

    .line 271
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEy:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEy:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130244

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEd:Landroid/widget/Spinner;

    .line 273
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEd:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEd:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130246

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEc:Landroid/widget/Spinner;

    .line 275
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEc:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEc:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130248

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEf:Landroid/widget/Spinner;

    .line 277
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEf:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEf:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f13024a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEg:Landroid/widget/TextView;

    .line 279
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f13024c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEh:Landroid/widget/TextView;

    .line 281
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/ak;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aDT:Landroid/widget/ArrayAdapter;

    .line 284
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDT:Landroid/widget/ArrayAdapter;

    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 286
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/ak;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aDU:Landroid/widget/ArrayAdapter;

    .line 289
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDU:Landroid/widget/ArrayAdapter;

    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 290
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/an;Landroid/view/View;Lcom/android/b/e/a;ZZ)V
    .locals 8

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const-string v0, "unspecified"

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aDY:Ljava/lang/String;

    .line 188
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEt:Landroid/net/IpConfiguration$IpAssignment;

    .line 191
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEu:Landroid/net/IpConfiguration$ProxySettings;

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEv:Landroid/net/ProxyInfo;

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEw:Landroid/net/StaticIpConfiguration;

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/ak;->aEI:Z

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/ak;->aEJ:I

    .line 297
    iput-object p1, p0, Lcom/android/settings/wifi/ak;->aDS:Lcom/android/settings/wifi/an;

    .line 299
    iput-object p2, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    .line 300
    iput-object p3, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    .line 301
    if-nez p3, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/ak;->aDW:I

    .line 303
    iput-boolean p4, p0, Lcom/android/settings/wifi/ak;->aEL:Z

    .line 304
    iput-boolean p5, p0, Lcom/android/settings/wifi/ak;->aEM:Z

    .line 306
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aDV:Landroid/os/Handler;

    .line 307
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDS:Lcom/android/settings/wifi/an;

    invoke-interface {v0}, Lcom/android/settings/wifi/an;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 309
    iput-object v0, p0, Lcom/android/settings/wifi/ak;->mContext:Landroid/content/Context;

    .line 310
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 312
    const v0, 0x7f0e001d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEK:[Ljava/lang/String;

    .line 313
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->mContext:Landroid/content/Context;

    const v3, 0x1090008

    const v4, 0x7f0e0026

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aDT:Landroid/widget/ArrayAdapter;

    .line 318
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDT:Landroid/widget/ArrayAdapter;

    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 320
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->mContext:Landroid/content/Context;

    const v3, 0x1090008

    const v4, 0x7f0e0027

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aDU:Landroid/widget/ArrayAdapter;

    .line 325
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDU:Landroid/widget/ArrayAdapter;

    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 327
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mContext:Landroid/content/Context;

    const v1, 0x7f0a02f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aDY:Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130268

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEi:Landroid/widget/Spinner;

    .line 329
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEi:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 330
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130261

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEo:Landroid/widget/Spinner;

    .line 331
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEo:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 332
    const v0, 0x7f130379

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aBH:Landroid/widget/ImageView;

    .line 333
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBH:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f13025b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEy:Landroid/widget/Spinner;

    .line 335
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEy:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEy:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    if-nez v0, :cond_4

    .line 338
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDS:Lcom/android/settings/wifi/an;

    const v1, 0x7f0a02c1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/an;->setTitle(I)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f13025b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130255

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f13025a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f13023c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEN:Landroid/widget/TextView;

    .line 345
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEN:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f13023d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEa:Landroid/widget/Spinner;

    .line 348
    const-string v0, "support_wapi"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f13023e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEa:Landroid/widget/Spinner;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEa:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEa:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 353
    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 355
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEa:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/wifi/ak;->yU()V

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/wifi/ak;->yV()V

    .line 360
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f13025c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f13025d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 365
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDS:Lcom/android/settings/wifi/an;

    const v1, 0x7f0a030a

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/an;->j(Ljava/lang/CharSequence;)V

    .line 477
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f13025d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 478
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEi:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEi:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEo:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEo:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDS:Lcom/android/settings/wifi/an;

    const v1, 0x7f0a030c

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/an;->l(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDS:Lcom/android/settings/wifi/an;

    invoke-interface {v0}, Lcom/android/settings/wifi/an;->za()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/wifi/ak;->yb()V

    .line 485
    :cond_2
    return-void

    .line 301
    :cond_3
    invoke-virtual {p3}, Lcom/android/b/e/a;->Bs()I

    move-result v0

    goto/16 :goto_0

    .line 367
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDS:Lcom/android/settings/wifi/an;

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->Bu()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/an;->setTitle(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130238

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 372
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->Bz()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 373
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->xP()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 374
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v3

    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v3, v4, :cond_a

    .line 375
    iget-object v3, p0, Lcom/android/settings/wifi/ak;->aEi:Landroid/widget/Spinner;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 378
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v3

    .line 379
    if-eqz v3, :cond_5

    iget-object v4, v3, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v4, :cond_5

    .line 380
    const v4, 0x7f0a02e8

    iget-object v3, v3, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v4, v3}, Lcom/android/settings/wifi/ak;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 388
    :cond_5
    :goto_2
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v3

    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v3, v4, :cond_b

    .line 389
    iget-object v3, p0, Lcom/android/settings/wifi/ak;->aEo:Landroid/widget/Spinner;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 397
    :goto_3
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 398
    const v3, 0x7f0a02ea

    iget-object v4, p0, Lcom/android/settings/wifi/ak;->mContext:Landroid/content/Context;

    const v5, 0x7f0a02eb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/wifi/ak;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 403
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->Bz()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->isActive()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    iget-boolean v1, p0, Lcom/android/settings/wifi/ak;->aEL:Z

    if-eqz v1, :cond_9

    .line 405
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/wifi/ak;->xQ()V

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/wifi/ak;->yU()V

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/wifi/ak;->yV()V

    .line 408
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f13025c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f13025d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 418
    :cond_9
    iget-boolean v1, p0, Lcom/android/settings/wifi/ak;->aEM:Z

    if-eqz v1, :cond_d

    .line 419
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDS:Lcom/android/settings/wifi/an;

    const v1, 0x7f0a030a

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/an;->j(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 384
    :cond_a
    iget-object v3, p0, Lcom/android/settings/wifi/ak;->aEi:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    .line 391
    :cond_b
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v3

    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v3, v4, :cond_c

    .line 392
    iget-object v3, p0, Lcom/android/settings/wifi/ak;->aEo:Landroid/widget/Spinner;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    .line 395
    :cond_c
    iget-object v3, p0, Lcom/android/settings/wifi/ak;->aEo:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    .line 421
    :cond_d
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 422
    invoke-direct {p0}, Lcom/android/settings/wifi/ak;->yH()Ljava/lang/String;

    move-result-object v4

    .line 424
    if-nez v3, :cond_f

    if-eqz v4, :cond_f

    .line 425
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDS:Lcom/android/settings/wifi/an;

    const v1, 0x7f0a0306

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/an;->j(Ljava/lang/CharSequence;)V

    .line 470
    :goto_4
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->Bz()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    :cond_e
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDS:Lcom/android/settings/wifi/an;

    const v1, 0x7f0a0308

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/an;->k(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 427
    :cond_f
    if-eqz v3, :cond_11

    .line 428
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->isEphemeral()Z

    move-result v5

    .line 429
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->xP()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 430
    const/4 v1, 0x0

    .line 431
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 432
    iget-object v1, v6, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 434
    :cond_10
    iget-object v6, p0, Lcom/android/settings/wifi/ak;->aDS:Lcom/android/settings/wifi/an;

    invoke-interface {v6}, Lcom/android/settings/wifi/an;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3, v5, v1}, Lcom/android/b/e/a;->a(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 436
    const v3, 0x7f0a02e5

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/wifi/ak;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 439
    :cond_11
    if-eqz v4, :cond_12

    .line 440
    const v1, 0x7f0a02e4

    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/wifi/ak;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 443
    :cond_12
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->Bp()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 444
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_13

    .line 445
    const v3, 0x7f0a02e6

    const v4, 0x7f0a0295

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/android/settings/wifi/ak;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 449
    :cond_13
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_14

    .line 450
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    .line 451
    const/4 v1, 0x0

    .line 453
    const/16 v4, 0x960

    if-lt v3, v4, :cond_15

    const/16 v4, 0x9c4

    if-ge v3, v4, :cond_15

    .line 455
    const v1, 0x7f0a0293

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 462
    :goto_5
    if-eqz v1, :cond_14

    .line 463
    const v3, 0x7f0a02e7

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/wifi/ak;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 467
    :cond_14
    const v1, 0x7f0a02e3

    iget-object v3, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/b/e/a;->bY(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/wifi/ak;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 456
    :cond_15
    const/16 v4, 0x1324

    if-lt v3, v4, :cond_16

    const/16 v4, 0x170c

    if-ge v3, v4, :cond_16

    .line 458
    const v1, 0x7f0a0294

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 460
    :cond_16
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected frequency "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private a(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDS:Lcom/android/settings/wifi/an;

    invoke-interface {v0}, Lcom/android/settings/wifi/an;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401ab

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 491
    const v0, 0x1020016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 492
    if-nez v0, :cond_0

    .line 499
    :goto_0
    return-void

    .line 495
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 497
    const v0, 0x1020010

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1421
    invoke-virtual {p1}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1423
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const/16 v2, 0x3f2

    invoke-virtual {v0, p2, v2}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1424
    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_1

    .line 1425
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/ak;->aDY:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 1433
    :goto_0
    invoke-virtual {p1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 1434
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, v1, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1436
    sget v0, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1437
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1438
    return-void

    .line 1427
    :cond_1
    array-length v0, v2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1428
    iget-object v3, p0, Lcom/android/settings/wifi/ak;->aDY:Ljava/lang/String;

    aput-object v3, v0, v4

    .line 1429
    array-length v3, v2

    invoke-static {v2, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private b(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1441
    if-eqz p2, :cond_0

    .line 1443
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1444
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 1445
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1446
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1451
    :cond_0
    return-void

    .line 1444
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private cx(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 1

    .prologue
    .line 804
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    :goto_0
    return-object v0

    .line 805
    :catch_0
    move-exception v0

    .line 806
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 805
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private dI(I)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 566
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    if-eqz v0, :cond_1

    const-string v0, "CMCC"

    iget-object v2, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    iget-object v2, v2, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 567
    :goto_0
    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 568
    const/4 p1, 0x4

    .line 570
    :cond_0
    return p1

    .line 566
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dJ(I)V
    .locals 6

    .prologue
    const v5, 0x7f13024b

    const v4, 0x7f130243

    const/4 v3, 0x0

    .line 1150
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/ak;->dI(I)I

    move-result v0

    .line 1152
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v2, 0x7f130241

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1153
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v2, 0x7f130249

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1157
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v2, 0x7f130245

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    invoke-direct {p0}, Lcom/android/settings/wifi/ak;->yQ()V

    .line 1161
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v2, 0x7f130253

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1164
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1165
    invoke-direct {p0}, Lcom/android/settings/wifi/ak;->yT()V

    .line 1170
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1171
    packed-switch v0, :pswitch_data_0

    .line 1221
    :cond_1
    :goto_0
    return-void

    .line 1173
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/ak;->yL()V

    .line 1174
    invoke-direct {p0}, Lcom/android/settings/wifi/ak;->yM()V

    .line 1175
    invoke-direct {p0}, Lcom/android/settings/wifi/ak;->yO()V

    .line 1176
    invoke-direct {p0}, Lcom/android/settings/wifi/ak;->yN()V

    goto :goto_0

    .line 1179
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1180
    invoke-direct {p0}, Lcom/android/settings/wifi/ak;->yL()V

    .line 1181
    invoke-direct {p0}, Lcom/android/settings/wifi/ak;->yO()V

    .line 1184
    invoke-direct {p0}, Lcom/android/settings/wifi/ak;->yP()V

    goto :goto_0

    .line 1188
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEe:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aDT:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_2

    .line 1189
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDT:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEe:Landroid/widget/ArrayAdapter;

    .line 1190
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEd:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEe:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1192
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1193
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1194
    invoke-direct {p0}, Lcom/android/settings/wifi/ak;->yN()V

    goto :goto_0

    .line 1198
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEe:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aDU:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_3

    .line 1199
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDU:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEe:Landroid/widget/ArrayAdapter;

    .line 1200
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEd:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEe:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1202
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1203
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1204
    invoke-direct {p0}, Lcom/android/settings/wifi/ak;->yN()V

    goto :goto_0

    .line 1209
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/wifi/ak;->yL()V

    .line 1210
    invoke-direct {p0}, Lcom/android/settings/wifi/ak;->yO()V

    .line 1211
    invoke-direct {p0}, Lcom/android/settings/wifi/ak;->yM()V

    .line 1212
    invoke-direct {p0}, Lcom/android/settings/wifi/ak;->yN()V

    .line 1213
    invoke-direct {p0}, Lcom/android/settings/wifi/ak;->yR()V

    .line 1214
    invoke-direct {p0}, Lcom/android/settings/wifi/ak;->yK()V

    .line 1216
    invoke-direct {p0}, Lcom/android/settings/wifi/ak;->yP()V

    .line 1217
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEx:Lcom/android/settings/wifi/Q;

    invoke-virtual {v0}, Lcom/android/settings/wifi/Q;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 1218
    invoke-direct {p0}, Lcom/android/settings/wifi/ak;->yS()V

    goto/16 :goto_0

    .line 1171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private dK(I)V
    .locals 3

    .prologue
    .line 1592
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEC:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 1593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/user.cer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/ak;->aED:Ljava/lang/String;

    .line 1594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/user.cer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/ak;->aEF:Ljava/lang/String;

    .line 1595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/as.cer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/ak;->aEE:Ljava/lang/String;

    .line 1596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/as.cer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEG:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1601
    :goto_0
    return-void

    .line 1597
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private f(Lcom/android/b/e/a;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 1230
    if-eqz p1, :cond_2

    const-string v0, "SG"

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    const-string v2, "Singtel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v4, :cond_0

    iget-object v0, p1, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    const-string v2, "Wireless@SGx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_2

    :cond_0
    move v0, v1

    .line 1232
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/ak;->aEb:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1233
    const-string v2, "SIM"

    iget-object v3, p0, Lcom/android/settings/wifi/ak;->aEb:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1234
    iget-object v2, p0, Lcom/android/settings/wifi/ak;->aEb:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1238
    :cond_1
    iget-object v0, p1, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    const-string v2, "Singtel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_2

    .line 1239
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEb:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1242
    :cond_2
    return-void

    .line 1232
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private x(II)V
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1413
    if-eqz v0, :cond_0

    .line 1414
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1416
    :cond_0
    return-void
.end method

.method private yH()Ljava/lang/String;
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->getLevel()I

    move-result v0

    .line 505
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEK:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEK:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 509
    :cond_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEK:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEK:[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private yK()V
    .locals 2

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130249

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1225
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEd:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1226
    return-void
.end method

.method private yL()V
    .locals 2

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130243

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1246
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEd:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1247
    return-void
.end method

.method private yM()V
    .locals 2

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130245

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1251
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEc:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1252
    return-void
.end method

.method private yN()V
    .locals 2

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1256
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEf:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1257
    return-void
.end method

.method private yO()V
    .locals 2

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f13024b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1261
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEh:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1262
    return-void
.end method

.method private yP()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1265
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1266
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f13024d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1267
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130253

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    return-void
.end method

.method private yQ()V
    .locals 2

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1272
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f13024d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1273
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130253

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1274
    return-void
.end method

.method private yR()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1277
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1278
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130250

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1279
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130253

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1280
    return-void
.end method

.method private yS()V
    .locals 2

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130377

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1285
    return-void
.end method

.method private yT()V
    .locals 2

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130377

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1289
    return-void
.end method

.method private yW()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1461
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->mContext:Landroid/content/Context;

    .line 1463
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1464
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/wifi/ak;->aEC:Ljava/util/ArrayList;

    .line 1466
    iput-boolean v0, p0, Lcom/android/settings/wifi/ak;->aEI:Z

    .line 1467
    iput v0, p0, Lcom/android/settings/wifi/ak;->aEJ:I

    .line 1470
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/wapi_certificate"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1472
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1497
    :goto_0
    return-void

    .line 1476
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1477
    array-length v4, v3

    iput v4, p0, Lcom/android/settings/wifi/ak;->aEJ:I

    .line 1478
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1479
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1480
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/as.cer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1481
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v3, v0

    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/user.cer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1482
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1483
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1484
    iget-object v4, p0, Lcom/android/settings/wifi/ak;->aEC:Ljava/util/ArrayList;

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1478
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1488
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/ak;->aEI:Z

    .line 1489
    new-instance v3, Landroid/widget/ArrayAdapter;

    sget v4, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v3, v1, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1492
    const v0, 0x1090009

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1493
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEz:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1495
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method protected a(Landroid/net/StaticIpConfiguration;)I
    .locals 7

    .prologue
    const v2, 0x7f0a031f

    const v0, 0x7f0a031d

    const/4 v1, 0x0

    .line 813
    iget-object v3, p0, Lcom/android/settings/wifi/ak;->aEj:Landroid/widget/TextView;

    if-nez v3, :cond_1

    move v0, v1

    .line 881
    :cond_0
    :goto_0
    return v0

    .line 815
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/ak;->aEj:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 816
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 818
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ak;->cx(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v3

    .line 819
    if-eqz v3, :cond_0

    .line 823
    const/4 v0, -0x1

    .line 825
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/wifi/ak;->aEl:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 826
    if-ltz v0, :cond_2

    const/16 v4, 0x20

    if-le v0, v4, :cond_3

    .line 827
    :cond_2
    const v0, 0x7f0a0320

    goto :goto_0

    .line 829
    :cond_3
    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v3, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/ak;->aEk:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 839
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 842
    :try_start_1
    invoke-static {v3, v0}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 843
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 844
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    aput-byte v4, v0, v3

    .line 845
    iget-object v3, p0, Lcom/android/settings/wifi/ak;->aEk:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 857
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEm:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 860
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 864
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEm:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/ak;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0322

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 874
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 875
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/ak;->cx(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 876
    if-nez v0, :cond_8

    move v0, v2

    .line 877
    goto/16 :goto_0

    .line 830
    :catch_0
    move-exception v4

    .line 834
    iget-object v4, p0, Lcom/android/settings/wifi/ak;->aEl:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wifi/ak;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0328

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 850
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/ak;->cx(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 851
    if-nez v0, :cond_5

    .line 852
    const v0, 0x7f0a031e

    goto/16 :goto_0

    .line 854
    :cond_5
    iput-object v0, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_2

    .line 866
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/ak;->cx(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 867
    if-nez v0, :cond_7

    move v0, v2

    .line 868
    goto/16 :goto_0

    .line 870
    :cond_7
    iget-object v3, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 879
    :cond_8
    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    move v0, v1

    .line 881
    goto/16 :goto_0

    .line 847
    :catch_1
    move-exception v0

    goto :goto_2

    .line 846
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDV:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/al;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/al;-><init>(Lcom/android/settings/wifi/ak;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1515
    return-void
.end method

.method protected bN(Z)Landroid/net/wifi/WifiConfiguration;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/16 v4, 0x22

    .line 575
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 577
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    if-nez v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEN:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/e/a;->cC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 581
    iput-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 590
    :goto_0
    if-eqz p1, :cond_2

    .line 591
    iget v0, p0, Lcom/android/settings/wifi/ak;->aDW:I

    packed-switch v0, :pswitch_data_0

    .line 739
    const/4 v0, 0x0

    .line 748
    :goto_1
    return-object v0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->Bz()Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->Bt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/e/a;->cC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->xP()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_0

    .line 593
    :pswitch_0
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 744
    :cond_2
    :goto_2
    new-instance v0, Landroid/net/IpConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/ak;->aEt:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v3, p0, Lcom/android/settings/wifi/ak;->aEu:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v4, p0, Lcom/android/settings/wifi/ak;->aEw:Landroid/net/StaticIpConfiguration;

    iget-object v5, p0, Lcom/android/settings/wifi/ak;->aEv:Landroid/net/ProxyInfo;

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    move-object v0, v1

    .line 748
    goto :goto_1

    .line 597
    :pswitch_1
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 598
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 599
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 600
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    .line 602
    iget-object v2, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 604
    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_3

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_4

    :cond_3
    const-string v0, "[0-9A-Fa-f]*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 606
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v0, v5

    goto :goto_2

    .line 608
    :cond_4
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    goto :goto_2

    .line 614
    :pswitch_2
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 615
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 616
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 617
    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 618
    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 620
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 627
    :pswitch_3
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 628
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 629
    const-string v0, "mediatek"

    const-string v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 630
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 631
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 633
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 634
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 635
    const-string v2, "support_broadcom_wapi"

    invoke-static {v2, v5}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 636
    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 637
    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    .line 648
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEy:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_2

    .line 639
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    goto :goto_3

    .line 642
    :cond_8
    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 643
    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_3

    .line 645
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_3

    .line 654
    :pswitch_4
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 655
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 656
    const-string v0, "mediatek"

    const-string v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 657
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 658
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 660
    :cond_a
    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/ak;->aEE:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/ak;->aED:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/fE;->a(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEE:Ljava/lang/String;

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aED:Ljava/lang/String;

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_2

    .line 669
    :pswitch_5
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 670
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 671
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 672
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEb:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 674
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/ak;->dI(I)I

    move-result v0

    .line 676
    const/4 v2, -0x1

    if-ne v0, v2, :cond_b

    .line 677
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown EAP method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 681
    :cond_b
    iget-object v2, p0, Lcom/android/settings/wifi/ak;->aEd:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 682
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 683
    sparse-switch v0, :sswitch_data_0

    .line 714
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 717
    :goto_4
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEc:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 718
    iget-object v2, p0, Lcom/android/settings/wifi/ak;->aDY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v0, ""

    .line 719
    :cond_c
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEf:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 721
    iget-object v2, p0, Lcom/android/settings/wifi/ak;->aDY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v0, ""

    .line 722
    :cond_d
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 723
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/ak;->aEg:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 724
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/ak;->aEh:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 730
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 731
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 688
    :sswitch_0
    packed-switch v2, :pswitch_data_1

    .line 699
    const-string v0, "WifiConfigController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown phase2 method"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 690
    :pswitch_6
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 693
    :pswitch_7
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 696
    :pswitch_8
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 705
    :sswitch_1
    const-string v0, "mediatek"

    const-string v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 706
    invoke-static {}, Lcom/android/settings/fE;->gu()Lcom/android/settings/fE;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/ak;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/ak;->aEx:Lcom/android/settings/wifi/Q;

    iget-object v4, p0, Lcom/android/settings/wifi/ak;->aDZ:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/Q;->getItemId(I)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/settings/fE;->a(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V

    goto/16 :goto_4

    .line 708
    :cond_e
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "sim_num"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/ak;->aEx:Lcom/android/settings/wifi/Q;

    iget-object v5, p0, Lcom/android/settings/wifi/ak;->aDZ:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/Q;->getItemId(I)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 735
    :cond_f
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 591
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 683
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch

    .line 688
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 1520
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    const v2, 0x7f13025e

    .line 1529
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f130254

    if-ne v0, v1, :cond_2

    .line 1530
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1531
    iget-object v2, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 1535
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1536
    if-ltz v1, :cond_0

    .line 1537
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1546
    :cond_0
    :goto_1
    return-void

    .line 1531
    :cond_1
    const/16 v0, 0x80

    goto :goto_0

    .line 1539
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f13025d

    if-ne v0, v1, :cond_0

    .line 1540
    if-eqz p2, :cond_3

    .line 1541
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1543
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1634
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f130379

    if-ne v0, v1, :cond_0

    .line 1635
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1636
    iget-boolean v0, p0, Lcom/android/settings/wifi/ak;->aBI:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/ak;->aBI:Z

    .line 1637
    iget-object v2, p0, Lcom/android/settings/wifi/ak;->aBH:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/settings/wifi/ak;->aBI:Z

    if-eqz v0, :cond_2

    const v0, 0x7f020328

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1638
    iget-object v2, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/settings/wifi/ak;->aBI:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x90

    :goto_2
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 1642
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1643
    if-ltz v1, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1647
    :cond_0
    return-void

    .line 1636
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1637
    :cond_2
    const v0, 0x7f020325

    goto :goto_1

    .line 1638
    :cond_3
    const/16 v0, 0x80

    goto :goto_2
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEa:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 1551
    iput p3, p0, Lcom/android/settings/wifi/ak;->aDW:I

    .line 1555
    const-string v0, "mediatek"

    const-string v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/ak;->aDW:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 1556
    iget v0, p0, Lcom/android/settings/wifi/ak;->aDW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/ak;->aDW:I

    .line 1559
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/ak;->xQ()V

    .line 1588
    :cond_1
    :goto_0
    return-void

    .line 1560
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEb:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_3

    .line 1561
    invoke-virtual {p0}, Lcom/android/settings/wifi/ak;->xQ()V

    goto :goto_0

    .line 1562
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEo:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_4

    .line 1563
    invoke-virtual {p0}, Lcom/android/settings/wifi/ak;->yV()V

    .line 1565
    invoke-virtual {p0}, Lcom/android/settings/wifi/ak;->yc()Z

    goto :goto_0

    .line 1567
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEz:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_5

    .line 1568
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEz:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1569
    if-ltz v0, :cond_1

    iget v1, p0, Lcom/android/settings/wifi/ak;->aEJ:I

    if-ge v0, v1, :cond_1

    const-string v1, "mediatek"

    const-string v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1571
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/ak;->dK(I)V

    goto :goto_0

    .line 1573
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEA:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_6

    .line 1574
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEA:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEE:Ljava/lang/String;

    goto :goto_0

    .line 1575
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEB:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_7

    .line 1576
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEB:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aED:Ljava/lang/String;

    goto :goto_0

    .line 1577
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEi:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_8

    .line 1578
    invoke-virtual {p0}, Lcom/android/settings/wifi/ak;->yU()V

    .line 1580
    invoke-virtual {p0}, Lcom/android/settings/wifi/ak;->yc()Z

    goto :goto_0

    .line 1583
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDZ:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 1584
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEx:Lcom/android/settings/wifi/Q;

    if-eqz v0, :cond_1

    .line 1585
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEx:Lcom/android/settings/wifi/Q;

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aDZ:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/Q;->dF(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 1607
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 1525
    return-void
.end method

.method xP()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    iget v0, v0, Lcom/android/b/e/a;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/ak;->aEL:Z

    if-nez v0, :cond_0

    .line 558
    const/4 v0, 0x0

    .line 561
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ak;->bN(Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0
.end method

.method protected xQ()V
    .locals 10

    .prologue
    const v6, 0x7f13025a

    const v5, 0x7f130255

    const v4, 0x7f130252

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 888
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130256

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 889
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130258

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 890
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130257

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 891
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130259

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 893
    iget v0, p0, Lcom/android/settings/wifi/ak;->aDW:I

    if-nez v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f13023f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f13025b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 897
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 898
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1125
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f13023f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 905
    iget v0, p0, Lcom/android/settings/wifi/ak;->aDW:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    .line 907
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 908
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    .line 909
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 910
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130254

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 913
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->Bz()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 914
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    const v3, 0x7f0a02f8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHint(I)V

    .line 917
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f13025b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEy:Landroid/widget/Spinner;

    .line 923
    :cond_3
    iget v0, p0, Lcom/android/settings/wifi/ak;->aDW:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_6

    .line 924
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 925
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130251

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130254

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 927
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f13025b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 928
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f13025e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 929
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130267

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 932
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130253

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 976
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    iget-object v0, v0, Lcom/android/b/e/a;->aMo:Landroid/net/wifi/ScanResult;

    invoke-static {v0}, Lcom/android/settings/wifi/aG;->a(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 977
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130254

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 978
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130251

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 990
    :cond_5
    :goto_2
    iget v0, p0, Lcom/android/settings/wifi/ak;->aDW:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_c

    .line 991
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130240

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 993
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    .line 994
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 995
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v2, 0x7f130250

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 933
    :cond_6
    iget v0, p0, Lcom/android/settings/wifi/ak;->aDW:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_8

    .line 934
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 935
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130251

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 936
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130254

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 937
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f13025b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f13025e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 939
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130267

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 942
    const-string v0, "mediatek"

    const-string v3, "vendor"

    invoke-static {v3}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 943
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130257

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEA:Landroid/widget/Spinner;

    .line 944
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130259

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEB:Landroid/widget/Spinner;

    .line 945
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEA:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 946
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEB:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 947
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEA:Landroid/widget/Spinner;

    const-string v3, "WAPISERVERCERT_"

    invoke-direct {p0, v0, v3}, Lcom/android/settings/wifi/ak;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEB:Landroid/widget/Spinner;

    const-string v3, "WAPIUSERCERT_"

    invoke-direct {p0, v0, v3}, Lcom/android/settings/wifi/ak;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 949
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130256

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 950
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130258

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 951
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130257

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130259

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 953
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 954
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 956
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEH:Landroid/widget/TextView;

    .line 957
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEz:Landroid/widget/Spinner;

    .line 958
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEz:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 959
    invoke-direct {p0}, Lcom/android/settings/wifi/ak;->yW()V

    .line 960
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 961
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 964
    :cond_8
    iget v0, p0, Lcom/android/settings/wifi/ak;->aDW:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/android/settings/wifi/ak;->aDW:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    .line 966
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 967
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130251

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 968
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130254

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 969
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f13025b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 970
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 971
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 972
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130267

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 980
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130374

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 981
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130374

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 984
    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 985
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_b
    move v0, v2

    .line 981
    goto :goto_3

    .line 999
    :cond_c
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130240

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1001
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f13024f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    .line 1002
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1003
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1004
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v3, 0x7f130250

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1008
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    if-eqz v0, :cond_e

    const-string v0, "CMCC"

    iget-object v3, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    iget-object v3, v3, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    move v3, v0

    .line 1010
    :goto_4
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEb:Landroid/widget/Spinner;

    if-nez v0, :cond_18

    .line 1011
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v4, 0x7f130242

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEb:Landroid/widget/Spinner;

    .line 1012
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEb:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1014
    const-string v0, "support_eap_sim"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1015
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/settings/wifi/ak;->mContext:Landroid/content/Context;

    sget v6, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v3, :cond_f

    const v0, 0x7f0e0089

    :goto_5
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1018
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEb:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1021
    :cond_d
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEb:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings/wifi/ak;->aEb:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 1022
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v4, 0x7f130244

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEd:Landroid/widget/Spinner;

    .line 1023
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEd:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings/wifi/ak;->aEd:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 1024
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v4, 0x7f130246

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEc:Landroid/widget/Spinner;

    .line 1025
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v4, 0x7f130248

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEf:Landroid/widget/Spinner;

    .line 1026
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v4, 0x7f13024a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEg:Landroid/widget/TextView;

    .line 1027
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v4, 0x7f13024c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEh:Landroid/widget/TextView;

    .line 1029
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v4, 0x7f130378

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aDZ:Landroid/widget/Spinner;

    .line 1030
    new-instance v0, Lcom/android/settings/wifi/Q;

    iget-object v4, p0, Lcom/android/settings/wifi/ak;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/settings/wifi/Q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEx:Lcom/android/settings/wifi/Q;

    .line 1031
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1032
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 1034
    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_10

    .line 1035
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v1

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1036
    iget-object v6, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    if-eqz v6, :cond_1c

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    iget-object v7, v7, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1037
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v6, "sim_num"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1038
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1c

    .line 1039
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    move v0, v4

    :goto_7
    move v4, v0

    .line 1041
    goto :goto_6

    :cond_e
    move v3, v1

    .line 1008
    goto/16 :goto_4

    .line 1015
    :cond_f
    const v0, 0x7f0e0088

    goto/16 :goto_5

    :cond_10
    move v4, v1

    .line 1042
    :cond_11
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDZ:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1043
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDZ:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/wifi/ak;->aEx:Lcom/android/settings/wifi/Q;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1044
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEx:Lcom/android/settings/wifi/Q;

    invoke-virtual {v0}, Lcom/android/settings/wifi/Q;->getCount()I

    move-result v0

    const/4 v5, 0x1

    if-gt v0, v5, :cond_15

    .line 1045
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDZ:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1056
    :cond_12
    :goto_8
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEc:Landroid/widget/Spinner;

    const-string v4, "CACERT_"

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/ak;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEf:Landroid/widget/Spinner;

    const-string v4, "USRPKEY_"

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/ak;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1060
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->Bz()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1061
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->xP()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1062
    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    .line 1063
    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v6

    .line 1067
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEb:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    .line 1068
    if-lt v4, v0, :cond_1b

    .line 1069
    add-int/lit8 v0, v0, -0x1

    .line 1071
    :goto_9
    iget-object v7, p0, Lcom/android/settings/wifi/ak;->aEb:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1074
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/ak;->dJ(I)V

    .line 1075
    packed-switch v4, :pswitch_data_0

    .line 1093
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEd:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1096
    :goto_a
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEc:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/ak;->b(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1097
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEf:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/ak;->b(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1098
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEg:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEh:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1104
    :goto_b
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/ak;->f(Lcom/android/b/e/a;)V

    .line 1111
    :goto_c
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    iget-object v0, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    iget-object v0, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    const-string v4, "MIOffice"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-le v0, v4, :cond_19

    const/4 v0, 0x1

    .line 1113
    :goto_d
    if-eqz v0, :cond_13

    iget-object v4, p0, Lcom/android/settings/wifi/ak;->aEd:Landroid/widget/Spinner;

    if-eqz v4, :cond_13

    .line 1114
    iget-object v4, p0, Lcom/android/settings/wifi/ak;->aEd:Landroid/widget/Spinner;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1116
    :cond_13
    if-nez v0, :cond_14

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_0

    const-string v0, "CMCC-AUTO"

    iget-object v4, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    iget-object v4, v4, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    if-eqz v3, :cond_0

    .line 1117
    :cond_14
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v4, 0x7f130241

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v3, :cond_1a

    :goto_e
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130243

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1119
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130245

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1120
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1121
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f13024b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_15
    move v0, v1

    .line 1047
    :goto_f
    iget-object v5, p0, Lcom/android/settings/wifi/ak;->aEx:Lcom/android/settings/wifi/Q;

    invoke-virtual {v5}, Lcom/android/settings/wifi/Q;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_12

    .line 1048
    iget-object v5, p0, Lcom/android/settings/wifi/ak;->aEx:Lcom/android/settings/wifi/Q;

    invoke-virtual {v5, v0}, Lcom/android/settings/wifi/Q;->getItemId(I)J

    move-result-wide v6

    int-to-long v8, v4

    cmp-long v5, v6, v8

    if-nez v5, :cond_16

    .line 1049
    iget-object v4, p0, Lcom/android/settings/wifi/ak;->aDZ:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_8

    .line 1047
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1077
    :pswitch_0
    packed-switch v6, :pswitch_data_1

    .line 1088
    :pswitch_1
    const-string v0, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid phase 2 method "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1079
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEd:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_a

    .line 1082
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEd:Landroid/widget/Spinner;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_a

    .line 1085
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEd:Landroid/widget/Spinner;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_a

    .line 1101
    :cond_17
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEb:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/ak;->dJ(I)V

    goto/16 :goto_b

    .line 1106
    :cond_18
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEb:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/ak;->dJ(I)V

    goto/16 :goto_c

    :cond_19
    move v0, v1

    .line 1112
    goto/16 :goto_d

    :cond_1a
    move v1, v2

    .line 1117
    goto/16 :goto_e

    :cond_1b
    move v0, v4

    goto/16 :goto_9

    :cond_1c
    move v0, v4

    goto/16 :goto_7

    .line 1075
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1077
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method yI()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDS:Lcom/android/settings/wifi/an;

    invoke-interface {v0}, Lcom/android/settings/wifi/an;->zb()Landroid/widget/Button;

    move-result-object v0

    .line 514
    if-nez v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 516
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method yJ()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDS:Lcom/android/settings/wifi/an;

    invoke-interface {v0}, Lcom/android/settings/wifi/an;->za()Landroid/widget/Button;

    move-result-object v0

    .line 521
    if-nez v0, :cond_0

    .line 524
    :goto_0
    return-void

    .line 523
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected yU()V
    .locals 5

    .prologue
    const v4, 0x7f130269

    const/4 v3, 0x0

    .line 1295
    const/4 v0, 0x0

    .line 1297
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v2, 0x7f130267

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1299
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->Bz()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1300
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->xP()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1303
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEi:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 1304
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1305
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEj:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v2, 0x7f13026a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEj:Landroid/widget/TextView;

    .line 1307
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEj:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1308
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v2, 0x7f13026b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEk:Landroid/widget/TextView;

    .line 1309
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1310
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v2, 0x7f13026c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEl:Landroid/widget/TextView;

    .line 1312
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEl:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1313
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v2, 0x7f13026d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEm:Landroid/widget/TextView;

    .line 1314
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1315
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v2, 0x7f13026e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEn:Landroid/widget/TextView;

    .line 1316
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1318
    :cond_0
    if-eqz v1, :cond_4

    .line 1319
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    .line 1320
    if-eqz v0, :cond_5

    .line 1321
    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v1, :cond_1

    .line 1322
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEj:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1324
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEl:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1328
    :cond_1
    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v1, :cond_2

    .line 1329
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEk:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1332
    :cond_2
    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1333
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1334
    iget-object v2, p0, Lcom/android/settings/wifi/ak;->aEm:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1336
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1337
    iget-object v2, p0, Lcom/android/settings/wifi/ak;->aEn:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    :cond_4
    :goto_1
    return-void

    .line 1341
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1342
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1343
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 1344
    if-eqz v0, :cond_4

    .line 1345
    iget v1, v0, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v1}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 1346
    iget v0, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v0}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 1347
    iget-object v2, p0, Lcom/android/settings/wifi/ak;->aEj:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1348
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEk:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1354
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method protected yV()V
    .locals 8

    .prologue
    const v7, 0x7f13037a

    const v6, 0x7f130263

    const v5, 0x7f130262

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1361
    const/4 v0, 0x0

    .line 1363
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v2, 0x7f13025f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1365
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->Bz()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1366
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->xP()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1369
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEo:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1370
    invoke-direct {p0, v5, v4}, Lcom/android/settings/wifi/ak;->x(II)V

    .line 1371
    invoke-direct {p0, v6, v4}, Lcom/android/settings/wifi/ak;->x(II)V

    .line 1372
    invoke-direct {p0, v7, v3}, Lcom/android/settings/wifi/ak;->x(II)V

    .line 1373
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEp:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v2, 0x7f130264

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEp:Landroid/widget/TextView;

    .line 1375
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEp:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1376
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v2, 0x7f130265

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEq:Landroid/widget/TextView;

    .line 1377
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEq:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1378
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v2, 0x7f130266

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEr:Landroid/widget/TextView;

    .line 1379
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEr:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1381
    :cond_0
    if-eqz v1, :cond_1

    .line 1382
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 1383
    if-eqz v0, :cond_1

    .line 1384
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEp:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1385
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1386
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEr:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1409
    :cond_1
    :goto_1
    return-void

    .line 1389
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEo:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 1390
    invoke-direct {p0, v5, v3}, Lcom/android/settings/wifi/ak;->x(II)V

    .line 1391
    invoke-direct {p0, v6, v3}, Lcom/android/settings/wifi/ak;->x(II)V

    .line 1392
    invoke-direct {p0, v7, v4}, Lcom/android/settings/wifi/ak;->x(II)V

    .line 1394
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEs:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 1395
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v2, 0x7f13037b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEs:Landroid/widget/TextView;

    .line 1396
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEs:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1398
    :cond_3
    if-eqz v1, :cond_1

    .line 1399
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 1400
    if-eqz v0, :cond_1

    .line 1401
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->aEs:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1405
    :cond_4
    invoke-direct {p0, v5, v3}, Lcom/android/settings/wifi/ak;->x(II)V

    .line 1406
    invoke-direct {p0, v6, v3}, Lcom/android/settings/wifi/ak;->x(II)V

    .line 1407
    invoke-direct {p0, v7, v3}, Lcom/android/settings/wifi/ak;->x(II)V

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public yX()Z
    .locals 1

    .prologue
    .line 1505
    iget-boolean v0, p0, Lcom/android/settings/wifi/ak;->aEM:Z

    return v0
.end method

.method public yY()V
    .locals 3

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v1, 0x7f130252

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1614
    iget-object v1, p0, Lcom/android/settings/wifi/ak;->mView:Landroid/view/View;

    const v2, 0x7f130254

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1619
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1620
    return-void

    .line 1614
    :cond_0
    const/16 v1, 0x80

    goto :goto_0
.end method

.method yb()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 528
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDS:Lcom/android/settings/wifi/an;

    invoke-interface {v0}, Lcom/android/settings/wifi/an;->za()Landroid/widget/Button;

    move-result-object v3

    .line 529
    if-nez v3, :cond_0

    .line 554
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/settings/wifi/ak;->aDW:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/ak;->aDW:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    const/16 v4, 0x8

    if-lt v0, v4, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/ak;->aDW:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aDX:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    const/4 v4, 0x4

    if-ge v0, v4, :cond_8

    :cond_3
    move v0, v2

    .line 542
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/ak;->aEN:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/wifi/ak;->aEN:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/wifi/ak;->aBo:Lcom/android/b/e/a;

    invoke-virtual {v4}, Lcom/android/b/e/a;->Bz()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_5
    if-eqz v0, :cond_7

    .line 553
    :cond_6
    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 547
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/ak;->yc()Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v2

    .line 548
    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method protected yc()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 754
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEi:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEi:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEt:Landroid/net/IpConfiguration$IpAssignment;

    .line 758
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEt:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v3, :cond_1

    .line 759
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEw:Landroid/net/StaticIpConfiguration;

    .line 760
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEw:Landroid/net/StaticIpConfiguration;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ak;->a(Landroid/net/StaticIpConfiguration;)I

    move-result v0

    .line 761
    if-eqz v0, :cond_1

    move v0, v1

    .line 799
    :goto_1
    return v0

    .line 754
    :cond_0
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEo:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 767
    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v3, p0, Lcom/android/settings/wifi/ak;->aEu:Landroid/net/IpConfiguration$ProxySettings;

    .line 768
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/wifi/ak;->aEv:Landroid/net/ProxyInfo;

    .line 769
    if-ne v0, v2, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/ak;->aEp:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 770
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEu:Landroid/net/IpConfiguration$ProxySettings;

    .line 771
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEp:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 772
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 773
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEr:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 777
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 778
    :try_start_1
    invoke-static {v4, v3, v5}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v6, v3

    move v3, v0

    move v0, v6

    .line 782
    :goto_2
    if-nez v0, :cond_3

    .line 783
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, v4, v3, v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEv:Landroid/net/ProxyInfo;

    :cond_2
    :goto_3
    move v0, v2

    .line 799
    goto :goto_1

    .line 779
    :catch_0
    move-exception v0

    move v0, v1

    .line 780
    :goto_4
    const v3, 0x7f0a013a

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_2

    :cond_3
    move v0, v1

    .line 785
    goto :goto_1

    .line 787
    :cond_4
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEs:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 788
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/ak;->aEu:Landroid/net/IpConfiguration$ProxySettings;

    .line 789
    iget-object v0, p0, Lcom/android/settings/wifi/ak;->aEs:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 790
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 791
    goto :goto_1

    .line 793
    :cond_5
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 794
    if-nez v0, :cond_6

    move v0, v1

    .line 795
    goto :goto_1

    .line 797
    :cond_6
    new-instance v1, Landroid/net/ProxyInfo;

    invoke-direct {v1, v0}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/android/settings/wifi/ak;->aEv:Landroid/net/ProxyInfo;

    goto :goto_3

    .line 779
    :catch_1
    move-exception v3

    goto :goto_4
.end method
