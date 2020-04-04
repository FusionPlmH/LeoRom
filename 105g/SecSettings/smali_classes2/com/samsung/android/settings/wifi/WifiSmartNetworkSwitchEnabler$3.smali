.class Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$3;
.super Ljava/lang/Object;
.source "WifiSmartNetworkSwitchEnabler.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/support/v7/preference/SecPreferenceScreen;Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;Landroid/support/v14/preference/SwitchPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const-string v0, "WifiSmartNetworkSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange: SwitchForIndividualApps - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->access$100(Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_switch_for_individual_apps_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->access$100(Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1208d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->access$200(Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, v0

    invoke-static {v3, v2, v4, v5}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    return v1
.end method
