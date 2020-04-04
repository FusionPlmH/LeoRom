.class Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings$1;
.super Landroid/os/Handler;
.source "SecDualSoundRingtoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->access$100(Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings/DefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->access$000(Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings/DefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
