.class Lcom/android/settings/fuelgauge/PowerUsageDetail$2;
.super Ljava/lang/Object;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic ahD:Lcom/android/settings/fuelgauge/PowerUsageDetail;

.field final synthetic ahE:I


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageDetail;I)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail$2;->ahD:Lcom/android/settings/fuelgauge/PowerUsageDetail;

    iput p2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail$2;->ahE:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail$2;->ahD:Lcom/android/settings/fuelgauge/PowerUsageDetail;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail$2;->ahE:I

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->a(Lcom/android/settings/fuelgauge/PowerUsageDetail;I)V

    .line 662
    const/4 v0, 0x1

    return v0
.end method
