.class Lcom/samsung/android/settings/notification/SecSoundGPSNotiSoundController$1;
.super Lcom/android/settings/notification/SettingPref;
.source "SecSoundGPSNotiSoundController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecSoundGPSNotiSoundController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecSoundGPSNotiSoundController;


# direct methods
.method varargs constructor <init>(Lcom/samsung/android/settings/notification/SecSoundGPSNotiSoundController;ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 6

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecSoundGPSNotiSoundController$1;->this$0:Lcom/samsung/android/settings/notification/SecSoundGPSNotiSoundController;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method public isApplicable(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "DCM"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
