.class Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;
.super Ljava/lang/Object;
.source "DirectionLockSplashActivity.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 5

    const-string v0, "DirectionLockSplashActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBeforeCheckedChanged: checked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string v2, "DirectionLockSplashActivity"

    const-string/jumbo v3, "setting the switch to false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->access$000()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->access$100()Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->launchConfirmCurrentLockScreen(ZZZ)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->access$100()Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v2

    invoke-virtual {v2, v1, v1, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->launchConfirmCurrentLockScreen(ZZZ)Z

    move-result v1

    const-string v2, "DirectionLockSplashActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting the switch to :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->access$000()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->loadSettings()V

    :goto_0
    return v0
.end method
