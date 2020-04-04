.class Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "SecVibrationSeekBarPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController$1;->this$0:Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController$1;->this$0:Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController$1;->this$0:Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->setCurrentProgress()V

    :cond_0
    return-void
.end method
