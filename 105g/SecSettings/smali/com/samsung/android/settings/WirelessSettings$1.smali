.class Lcom/samsung/android/settings/WirelessSettings$1;
.super Lcom/android/settings/datausage/CellDataPreference$DataStateListener;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/WirelessSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/WirelessSettings$1;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings$1;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/WirelessSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$1;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/WirelessSettings;->access$000(Lcom/samsung/android/settings/WirelessSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$1;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/WirelessSettings;->access$000(Lcom/samsung/android/settings/WirelessSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_0
    return-void
.end method
