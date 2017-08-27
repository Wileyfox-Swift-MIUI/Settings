.class Lcom/android/settings/device/s;
.super Ljava/lang/Object;
.source "MiuiDeviceDetailSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/device/MiuiDeviceDetailSettings;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 146
    iget-object v0, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    iget v0, v0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lG:I

    if-lez v0, :cond_4

    .line 147
    iget-object v0, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    iget v1, v0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lG:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lG:I

    .line 148
    iget-object v0, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    iget v0, v0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lG:I

    if-nez v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    invoke-virtual {v0}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    invoke-virtual {v0, v1, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 152
    iget-object v0, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    iget-object v0, v0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lH:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    iget-object v0, v0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lH:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    iget-object v1, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    invoke-virtual {v1}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a00ae

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lH:Landroid/widget/Toast;

    .line 157
    iget-object v0, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    iget-object v0, v0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lH:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    const-string v1, "com.android.settings.action.DEV_OPEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v1, "show"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    iget-object v1, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    invoke-virtual {v1}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    iget v0, v0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lG:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    iget v0, v0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lG:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    iget-object v0, v0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lH:Landroid/widget/Toast;

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    iget-object v0, v0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lH:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    iget-object v1, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    invoke-virtual {v1}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    invoke-virtual {v2}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    iget-object v4, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    iget v4, v4, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lG:I

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    iget v6, v6, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lG:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lH:Landroid/widget/Toast;

    .line 172
    iget-object v0, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    iget-object v0, v0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lH:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 174
    :cond_4
    iget-object v0, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    iget v0, v0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lG:I

    if-gez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    iget-object v0, v0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lH:Landroid/widget/Toast;

    if-eqz v0, :cond_5

    .line 176
    iget-object v0, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    iget-object v0, v0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lH:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    iget-object v1, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    invoke-virtual {v1}, Lcom/android/settings/device/MiuiDeviceDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a00af

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lH:Landroid/widget/Toast;

    .line 180
    iget-object v0, p0, Lcom/android/settings/device/s;->WQ:Lcom/android/settings/device/MiuiDeviceDetailSettings;

    iget-object v0, v0, Lcom/android/settings/device/MiuiDeviceDetailSettings;->lH:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
