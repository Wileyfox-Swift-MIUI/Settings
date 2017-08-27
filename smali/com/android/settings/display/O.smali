.class Lcom/android/settings/display/O;
.super Ljava/lang/Object;
.source "ScreenPaperModeUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic abV:Lcom/android/settings/display/ScreenPaperModeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ScreenPaperModeUpdateService;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/display/O;->abV:Lcom/android/settings/display/ScreenPaperModeUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/display/O;->abV:Lcom/android/settings/display/ScreenPaperModeUpdateService;

    invoke-static {v0}, Lcom/android/settings/display/ScreenPaperModeUpdateService;->a(Lcom/android/settings/display/ScreenPaperModeUpdateService;)V

    .line 69
    return-void
.end method
