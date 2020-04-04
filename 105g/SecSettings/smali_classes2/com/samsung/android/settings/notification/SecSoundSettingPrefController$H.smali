.class final Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$H;
.super Landroid/os/Handler;
.source "SecSoundSettingPrefController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$H;->this$0:Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$H;-><init>(Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$H;->this$0:Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->access$100(Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController$H;->this$0:Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
