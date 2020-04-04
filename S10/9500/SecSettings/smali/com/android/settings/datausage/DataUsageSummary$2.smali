.class Lcom/android/settings/datausage/DataUsageSummary$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const-string v0, "DataUsageSummary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPcoSettingObserver onChange(selfChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const-string/jumbo v1, "usage"

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    if-nez v0, :cond_0

    const-string v1, "DataUsageSummary"

    const-string v2, "\'usage\' preference category not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "background_data_by_pco"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    const-string v3, "DataUsageSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPcoSettingObserver restrictBackgroundByPco: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageSummary;->access$100(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageSummary;->access$100(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/settings/datausage/DataUsageSummary;->access$102(Lcom/android/settings/datausage/DataUsageSummary;Lcom/android/settings/datausage/DataSaverPreference;)Lcom/android/settings/datausage/DataSaverPreference;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings/datausage/DataUsageSummary;->isAdmin()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v4}, Lcom/android/settings/datausage/DataUsageSummary;->access$200(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/datausage/DataUsageSummary;->access$102(Lcom/android/settings/datausage/DataUsageSummary;Lcom/android/settings/datausage/DataSaverPreference;)Lcom/android/settings/datausage/DataSaverPreference;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageSummary;->access$100(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageSummary;->access$300(Lcom/android/settings/datausage/DataUsageSummary;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const-string v3, "DataUsageSummary"

    const-string v4, "Returning due to no mobile data or not admin"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    :goto_3
    const-string v2, "DataUsageSummary"

    const-string v3, "Invalid context or content-resolver"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
