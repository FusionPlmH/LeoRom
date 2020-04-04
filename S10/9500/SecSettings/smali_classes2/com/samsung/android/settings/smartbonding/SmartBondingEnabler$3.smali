.class Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;
.super Landroid/database/ContentObserver;
.source "SmartBondingEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->access$000(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_bonding"

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
    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->access$200(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->access$200(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->access$300(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->access$300(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->access$000(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_bonding"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->access$300(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v4

    if-eqz v3, :cond_3

    const v5, 0x7f1219b4

    goto :goto_2

    :cond_3
    const v5, 0x7f1219b3

    :goto_2
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->access$300(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string v1, "SmartBondingEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSmartBondingObserver onChange() - mSmartBondingObserver :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v5}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->access$000(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_bonding"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method
