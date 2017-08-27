.class Lcom/android/settings/search/h;
.super Ljava/lang/Object;
.source "Index.java"


# instance fields
.field public arm:Ljava/util/List;

.field public arn:Ljava/util/List;

.field public aro:Ljava/util/Map;

.field public arp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/search/h;->arp:Z

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/h;->arm:Ljava/util/List;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/h;->arn:Ljava/util/List;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/h;->aro:Ljava/util/Map;

    .line 183
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/search/h;)V
    .locals 2

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/search/h;->arp:Z

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/search/h;->arm:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/search/h;->arm:Ljava/util/List;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/search/h;->arn:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/search/h;->arn:Ljava/util/List;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/settings/search/h;->aro:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/settings/search/h;->aro:Ljava/util/Map;

    .line 189
    iget-boolean v0, p1, Lcom/android/settings/search/h;->arp:Z

    iput-boolean v0, p0, Lcom/android/settings/search/h;->arp:Z

    .line 190
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/search/h;->arm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    iget-object v0, p0, Lcom/android/settings/search/h;->arn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    iget-object v0, p0, Lcom/android/settings/search/h;->aro:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/search/h;->arp:Z

    .line 201
    return-void
.end method

.method public uF()Lcom/android/settings/search/h;
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/android/settings/search/h;

    invoke-direct {v0, p0}, Lcom/android/settings/search/h;-><init>(Lcom/android/settings/search/h;)V

    return-object v0
.end method
