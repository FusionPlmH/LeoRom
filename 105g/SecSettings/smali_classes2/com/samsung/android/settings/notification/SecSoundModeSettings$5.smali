.class Lcom/samsung/android/settings/notification/SecSoundModeSettings$5;
.super Ljava/lang/Object;
.source "SecSoundModeSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecSoundModeSettings;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$5;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const-string v0, "SecSoundModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallBack, mIsInUpdateProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$5;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$300(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$5;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$300(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$5;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$800(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "SecSoundModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallBack, Select "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "hour by DropDownPreference"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$200()Landroid/media/AudioManager;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3c

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setMuteInterval(I)V

    goto :goto_0

    :pswitch_1
    const-string v2, "SecSoundModeSettings"

    const-string v3, "CallBack, Select Custom menu by DropDownPreference"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$5;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$900(Lcom/samsung/android/settings/notification/SecSoundModeSettings;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$5;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$1000(Lcom/samsung/android/settings/notification/SecSoundModeSettings;I)V

    return v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$5;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$000(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$5;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getMetricsCategory()I

    move-result v2

    const/16 v3, 0x1c25

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return v1

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
