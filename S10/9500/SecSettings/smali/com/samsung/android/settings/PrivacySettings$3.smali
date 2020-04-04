.class Lcom/samsung/android/settings/PrivacySettings$3;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/PrivacySettings$3;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const-string v0, "PrivacySettings"

    const-string v1, "onPreferenceCha"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/PrivacySettings$3;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/PrivacySettings;->access$1300(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v3

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/PrivacySettings$3;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/PrivacySettings;->getMetricsCategory()I

    move-result v3

    const/16 v4, 0x122e

    invoke-static {v3, v4, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/PrivacySettings$3;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/PrivacySettings;->access$1400(Lcom/samsung/android/settings/PrivacySettings;)V

    return v1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/PrivacySettings$3;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v3, v1}, Lcom/samsung/android/settings/PrivacySettings;->access$1500(Lcom/samsung/android/settings/PrivacySettings;Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/PrivacySettings$3;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/PrivacySettings;->access$1300(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    return v1

    :cond_2
    return v2
.end method
