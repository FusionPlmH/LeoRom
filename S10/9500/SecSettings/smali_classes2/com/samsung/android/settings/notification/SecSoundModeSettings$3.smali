.class Lcom/samsung/android/settings/notification/SecSoundModeSettings$3;
.super Ljava/lang/Object;
.source "SecSoundModeSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecMultiButtonPreference$OnButtonSelectedListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonSelected(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;I)Z
    .locals 5

    const/16 v0, 0x1c21

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$200()Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v4

    if-eq v1, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$300(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$200()Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$400(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mode_ringer_time_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$000(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getMetricsCategory()I

    move-result v1

    const-wide/16 v3, 0x0

    invoke-static {v1, v0, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_3

    :cond_1
    :goto_0
    return v3

    :cond_2
    if-ne p2, v2, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$200()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    if-eq v2, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$300(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$200()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$500(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mode_ringer_time_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$000(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getMetricsCategory()I

    move-result v1

    const-wide/16 v3, 0x1

    invoke-static {v1, v0, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_3

    :cond_4
    :goto_1
    return v3

    :cond_5
    if-ne p2, v1, :cond_8

    invoke-static {}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$200()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$300(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$200()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$000(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getMetricsCategory()I

    move-result v1

    const-wide/16 v3, 0x2

    invoke-static {v1, v0, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_3

    :cond_7
    :goto_2
    return v3

    :cond_8
    :goto_3
    return v2
.end method
