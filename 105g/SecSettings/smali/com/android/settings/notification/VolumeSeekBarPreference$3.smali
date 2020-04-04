.class Lcom/android/settings/notification/VolumeSeekBarPreference$3;
.super Ljava/lang/Object;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/SeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/VolumeSeekBarPreference;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/VolumeSeekBarPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuted(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$400(Lcom/android/settings/notification/VolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$500(Lcom/android/settings/notification/VolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$402(Lcom/android/settings/notification/VolumeSeekBarPreference;Z)Z

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$502(Lcom/android/settings/notification/VolumeSeekBarPreference;Z)Z

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$100(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$100(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$300(Lcom/android/settings/notification/VolumeSeekBarPreference;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$300(Lcom/android/settings/notification/VolumeSeekBarPreference;)I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0xfa6

    if-ne v0, v1, :cond_1

    const/16 v0, 0xfa7

    invoke-static {v2, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$300(Lcom/android/settings/notification/VolumeSeekBarPreference;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    const/16 v0, 0xfa9

    invoke-static {v2, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$300(Lcom/android/settings/notification/VolumeSeekBarPreference;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const/16 v0, 0xfa8

    invoke-static {v2, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$300(Lcom/android/settings/notification/VolumeSeekBarPreference;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/16 v0, 0xfaa

    invoke-static {v2, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x1c56

    invoke-static {v2, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :goto_0
    return-void
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$100(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$200(Lcom/android/settings/notification/VolumeSeekBarPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$100(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    :cond_0
    return-void
.end method
