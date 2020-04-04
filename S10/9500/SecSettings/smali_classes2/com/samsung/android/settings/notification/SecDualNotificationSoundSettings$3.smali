.class Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "SecDualNotificationSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;->finish()V

    return-void
.end method
