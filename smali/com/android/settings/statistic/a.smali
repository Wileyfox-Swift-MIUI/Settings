.class Lcom/android/settings/statistic/a;
.super Landroid/os/AsyncTask;
.source "SettingsCollectorService.java"


# instance fields
.field final synthetic atP:Lcom/android/settings/statistic/SettingsCollectorService;


# direct methods
.method constructor <init>(Lcom/android/settings/statistic/SettingsCollectorService;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/statistic/a;->atP:Lcom/android/settings/statistic/SettingsCollectorService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/statistic/a;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/statistic/a;->atP:Lcom/android/settings/statistic/SettingsCollectorService;

    invoke-static {v0}, Lcom/android/settings/statistic/SettingsCollectorService;->b(Lcom/android/settings/statistic/SettingsCollectorService;)V

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/statistic/a;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/statistic/a;->atP:Lcom/android/settings/statistic/SettingsCollectorService;

    iget-object v1, p0, Lcom/android/settings/statistic/a;->atP:Lcom/android/settings/statistic/SettingsCollectorService;

    invoke-static {v1}, Lcom/android/settings/statistic/SettingsCollectorService;->c(Lcom/android/settings/statistic/SettingsCollectorService;)Landroid/app/job/JobParameters;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/statistic/SettingsCollectorService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 86
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/statistic/a;->atP:Lcom/android/settings/statistic/SettingsCollectorService;

    invoke-static {v0}, Lcom/android/settings/statistic/SettingsCollectorService;->a(Lcom/android/settings/statistic/SettingsCollectorService;)V

    .line 75
    return-void
.end method
