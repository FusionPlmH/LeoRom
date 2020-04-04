.class Lcom/samsung/android/settings/WirelessSettings$4;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/WirelessSettings$4;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings$4;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/WirelessSettings;->access$000(Lcom/samsung/android/settings/WirelessSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings$4;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/WirelessSettings;->access$400(Lcom/samsung/android/settings/WirelessSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "smart_bonding"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/WirelessSettings$4;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/WirelessSettings;->access$000(Lcom/samsung/android/settings/WirelessSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v3

    if-eqz v0, :cond_1

    const v4, 0x7f121a13

    goto :goto_1

    :cond_1
    const v4, 0x7f121a12

    :goto_1
    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/WirelessSettings$4;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/WirelessSettings;->access$000(Lcom/samsung/android/settings/WirelessSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_3
    return-void
.end method
