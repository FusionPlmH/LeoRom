.class Lcom/android/settings/datausage/DataUsageSummary$9;
.super Landroid/telephony/PhoneStateListener;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$9;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary$9;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary$9;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/telephony/TelephonyManager;

    :cond_0
    const-string v1, "DataUsageSummary"

    const-string v2, "onPreciseCallStateChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary$9;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    const-string v3, "restrict_background"

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    const-string v3, "restrict_background"

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v3

    add-int/2addr v3, v4

    :goto_0
    if-le v2, v3, :cond_3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    if-eqz v5, :cond_3

    if-eqz v0, :cond_2

    const-string/jumbo v6, "volte"

    invoke-virtual {v0, v6}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setVolteCallState(Z)V

    const-string v4, "DataUsageSummary"

    const-string v6, "in volte calling:: menu of mobile data is disabled"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setVolteCallState(Z)V

    const-string v4, "DataUsageSummary"

    const-string/jumbo v6, "volte call stop :: menu of mobile data is enabled"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method
