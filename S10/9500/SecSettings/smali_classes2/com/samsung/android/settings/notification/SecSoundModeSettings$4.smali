.class Lcom/samsung/android/settings/notification/SecSoundModeSettings$4;
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

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$4;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$4;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$300(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$4;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$600(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mode_ringer_time_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v1, v3

    nop

    :cond_1
    if-ne v0, v1, :cond_2

    return v3

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$4;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$700(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "mode_ringer_time_on"

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$200()Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRemainingMuteIntervalMs()I

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$200()Landroid/media/AudioManager;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$200()Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setMuteInterval(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$200()Landroid/media/AudioManager;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$200()Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRemainingMuteIntervalMs()I

    move-result v4

    const v5, 0xea60

    div-int/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setMuteInterval(I)V

    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$4;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$000(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$4;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getMetricsCategory()I

    move-result v2

    const/16 v4, 0x1c24

    if-eqz v0, :cond_5

    const-wide/16 v5, 0x1

    goto :goto_1

    :cond_5
    const-wide/16 v5, 0x0

    :goto_1
    invoke-static {v2, v4, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return v3
.end method
