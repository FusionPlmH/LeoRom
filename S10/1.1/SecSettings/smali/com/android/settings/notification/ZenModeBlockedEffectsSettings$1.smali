.class Lcom/android/settings/notification/ZenModeBlockedEffectsSettings$1;
.super Ljava/lang/Object;
.source "ZenModeBlockedEffectsSettings.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings$1;->this$0:Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 3

    const-string v0, "MWK_setting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBeforeCheckedChanged Blocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings$1;->this$0:Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1, p2}, Lcom/android/settings/notification/ZenModeBackend;->saveVisualEffectsPolicy(IZ)V

    const/16 v0, 0x102c

    const/16 v1, 0x102d

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/4 v0, 0x1

    return v0
.end method
