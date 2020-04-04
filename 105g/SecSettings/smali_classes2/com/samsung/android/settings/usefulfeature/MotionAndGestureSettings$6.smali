.class Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;
.super Landroid/database/ContentObserver;
.source "MotionAndGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$1200(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$700(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    const v3, 0x7f121a13

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    const v1, 0x7f1210bf

    const v5, 0x7f1210c0

    if-ne v0, v4, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$700(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$700(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$700(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$900()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSamsungMessageAppEnable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$700(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_2

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$700(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$700(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$1300(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "motion_pick_up"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v2

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$700(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$700(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$700(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v7

    if-eqz v6, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$900()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isSamsungMessageAppEnable(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_4

    move v1, v5

    nop

    :cond_4
    :goto_1
    invoke-virtual {v7, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$400(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_9

    if-ne v0, v4, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$400(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$400(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$400(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$400(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$600()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$400(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$1400(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "motion_merged_mute_pause"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v4

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$400(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$400(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$400(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v5

    if-eqz v1, :cond_8

    move v6, v3

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$600()I

    move-result v6

    :goto_4
    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    :cond_9
    :goto_5
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$200(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_d

    const v1, 0x7f1210c4

    if-ne v0, v4, :cond_a

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$200(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$200(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$200(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$200(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_8

    :cond_a
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$200(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$1500(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_pick_up_to_call_out"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_b

    move v5, v4

    goto :goto_6

    :cond_b
    move v5, v2

    :goto_6
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$200(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$200(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$200(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v6

    if-eqz v5, :cond_c

    move v1, v3

    goto :goto_7

    :cond_c
    nop

    :goto_7
    invoke-virtual {v6, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    :cond_d
    :goto_8
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$1000(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_11

    const v1, 0x7f121a08

    if-ne v0, v4, :cond_e

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$1000(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$1000(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$1000(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$1000(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_a

    :cond_e
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$1000(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$1600(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "surface_palm_swipe"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_f

    move v2, v4

    nop

    :cond_f
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$1000(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$1000(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$1000(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v4

    if-eqz v2, :cond_10

    move v1, v3

    goto :goto_9

    :cond_10
    nop

    :goto_9
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    :cond_11
    :goto_a
    return-void
.end method
