.class Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$9;
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

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$9;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$9;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$2300(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$9;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$2400(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "swipe_to_call_message"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$9;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$2300(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$9;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$2300(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$9;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$2300(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    const v2, 0x7f1219b4

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$9;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$2300(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$9;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$900()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$2500(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
