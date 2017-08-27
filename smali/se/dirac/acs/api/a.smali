.class Lse/dirac/acs/api/a;
.super Ljava/lang/Object;
.source "AsyncHelper.java"


# instance fields
.field private bxo:Ljava/lang/Integer;

.field private final bxp:Lse/dirac/acs/api/b;


# direct methods
.method constructor <init>(Lse/dirac/acs/api/b;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lse/dirac/acs/api/a;->bxo:Ljava/lang/Integer;

    .line 13
    iput-object p1, p0, Lse/dirac/acs/api/a;->bxp:Lse/dirac/acs/api/b;

    .line 14
    return-void
.end method
