.class Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings$2;
.super Ljava/lang/Object;
.source "SecDualNotificationSoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;->access$000(Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;->access$000(Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;->access$200(Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;ILandroid/support/v7/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;->access$100(Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;

    const/16 v2, 0x100

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;->access$100(Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;->access$200(Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;ILandroid/support/v7/preference/Preference;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_1
    :goto_1
    return-void
.end method
