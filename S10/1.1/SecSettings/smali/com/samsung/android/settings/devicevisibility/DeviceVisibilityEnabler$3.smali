.class Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$3;
.super Landroid/os/Handler;
.source "DeviceVisibilityEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->access$300(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v2, "DeviceVisibilityEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHandler - EVENT_DEVICE_VISIBILITY_VALUE_CHANGED : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->access$300(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->access$300(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v2

    if-ne v0, v1, :cond_2

    const v4, 0x7f1219df

    goto :goto_1

    :cond_2
    const v4, 0x7f1206f1

    :goto_1
    invoke-virtual {v2, v4}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->access$300(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    nop

    :cond_4
    :goto_3
    return-void
.end method
