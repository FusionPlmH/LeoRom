.class public Lcom/android/internal/policy/PhoneFallbackEventHandler;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"

# interfaces
.implements Landroid/view/FallbackEventHandler;


# static fields
.field private static final DEBUG:Z = false

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final BATTERY_CONVERSING_MODE:I

.field private final BUTTON_GAME_ACTION:Ljava/lang/String;

.field private final CAMERA_CLASSE_NAME:Ljava/lang/String;

.field private final CAMERA_PACKAGE_NAME:Ljava/lang/String;

.field private final EMERGENCY_MODE:I

.field private final EXTRA_LAUNCHER_ACTION:Ljava/lang/String;

.field private final KNOX_MODE_CLASS_NAME:Ljava/lang/String;

.field private final LAUNCHER_ACTION_ALL_APPS:Ljava/lang/String;

.field private final LAUNCH_DOUBLE_PRESS:I

.field private final LAUNCH_LONG_PRESS:I

.field private final LAUNCH_SHORT_PRESS:I

.field private final MESSAGING_CLASS_NAME:Ljava/lang/String;

.field private final MESSAGING_PACKAGE_NAME:Ljava/lang/String;

.field private final MMS_CLASS_NAME:Ljava/lang/String;

.field private final MMS_PACKAGE_NAME:Ljava/lang/String;

.field private final NORMAL:I

.field private final NO_LAUNCH:I

.field private final POPUPUI_RECEIVER_CLASS_NAME:Ljava/lang/String;

.field private final POPUPUI_RECEIVER_PACKAGE_NAME:Ljava/lang/String;

.field private final QUICK_SEARCH_BOX_CLASS_NAME:Ljava/lang/String;

.field private final QUICK_SEARCH_BOX_PACKAGE_NAME:Ljava/lang/String;

.field private final SECURE_FOLDER_CLASS_NAME:Ljava/lang/String;

.field private final SECURE_FOLDER_PKG_NAME:Ljava/lang/String;

.field private final SEC_PTT_CLASS_NAME:Ljava/lang/String;

.field private final SEC_PTT_PACKAGE_NAME:Ljava/lang/String;

.field private final SOCIAL_CLASS_NAME:Ljava/lang/String;

.field private final SOCIAL_PACKAGE_NAME:Ljava/lang/String;

.field private final ULTRA_POWER_SAVING_MODE:I

.field private final USERKEY_TIMEOUT:I

.field mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field mDouble_launch_app:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLaunchType:I

.field mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field mSearchManager:Landroid/app/SearchManager;

.field mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserDoubleTapPending:Z

.field private final mUserDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PhoneFallbackEventHandler"

    sput-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->NO_LAUNCH:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->LAUNCH_SHORT_PRESS:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->LAUNCH_LONG_PRESS:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->LAUNCH_DOUBLE_PRESS:I

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    const/16 v3, 0xaa

    iput v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->USERKEY_TIMEOUT:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mDouble_launch_app:Ljava/lang/String;

    const-string v4, "com.sec.android.app.socialpage"

    iput-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->SOCIAL_PACKAGE_NAME:Ljava/lang/String;

    const-string v4, "com.sec.android.app.socialpage.SocialSetActivity"

    iput-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->SOCIAL_CLASS_NAME:Ljava/lang/String;

    const-string v4, "com.google.android.googlequicksearchbox"

    iput-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->QUICK_SEARCH_BOX_PACKAGE_NAME:Ljava/lang/String;

    const-string v4, "com.google.android.googlequicksearchbox.VoiceSearchActivity"

    iput-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->QUICK_SEARCH_BOX_CLASS_NAME:Ljava/lang/String;

    const-string v4, "com.samsung.android.messaging"

    iput-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->MESSAGING_PACKAGE_NAME:Ljava/lang/String;

    const-string v4, "com.samsung.android.messaging.ui.ConversationComposer"

    iput-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->MESSAGING_CLASS_NAME:Ljava/lang/String;

    const-string v4, "com.android.mms"

    iput-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->MMS_PACKAGE_NAME:Ljava/lang/String;

    const-string v4, "com.android.mms.ui.ConversationComposer"

    iput-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->MMS_CLASS_NAME:Ljava/lang/String;

    const-string v4, "com.sec.android.app.popupuireceiver"

    iput-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->POPUPUI_RECEIVER_PACKAGE_NAME:Ljava/lang/String;

    const-string v4, "com.sec.android.app.popupuireceiver.popupCustomizeKey"

    iput-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->POPUPUI_RECEIVER_CLASS_NAME:Ljava/lang/String;

    const-string v4, "com.sec.ptt"

    iput-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->SEC_PTT_PACKAGE_NAME:Ljava/lang/String;

    const-string v4, "com.sec.ptt.call.activities.callMainActivity"

    iput-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->SEC_PTT_CLASS_NAME:Ljava/lang/String;

    const-string/jumbo v4, "sec.android.intent.extra.LAUNCHER_ACTION"

    iput-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->EXTRA_LAUNCHER_ACTION:Ljava/lang/String;

    const-string v4, "com.android.launcher2.ALL_APPS"

    iput-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->LAUNCHER_ACTION_ALL_APPS:Ljava/lang/String;

    const-string v4, "com.samsung.android.input.BUTTON_GAME"

    iput-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->BUTTON_GAME_ACTION:Ljava/lang/String;

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->NORMAL:I

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->EMERGENCY_MODE:I

    iput v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->ULTRA_POWER_SAVING_MODE:I

    iput v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->BATTERY_CONVERSING_MODE:I

    iput-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    new-instance v0, Lcom/android/internal/policy/-$$Lambda$PhoneFallbackEventHandler$7ZmgDoT6jdhyHm_0rIUkiS6MtlM;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/-$$Lambda$PhoneFallbackEventHandler$7ZmgDoT6jdhyHm_0rIUkiS6MtlM;-><init>(Lcom/android/internal/policy/PhoneFallbackEventHandler;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-string v0, "com.samsung.android.knox.containeragent.usage.ActiveKeyPressShortcut"

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->KNOX_MODE_CLASS_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.knox.securefolder"

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->SECURE_FOLDER_PKG_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.knox.securefolder.foldercontainer.ActiveKeyPressShortcut"

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->SECURE_FOLDER_CLASS_NAME:Ljava/lang/String;

    const-string v0, "com.sec.android.app.camera"

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->CAMERA_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "com.sec.android.app.camera.Camera"

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->CAMERA_CLASSE_NAME:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_EMERGENCY_MODE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ULTRA_POWER_SAVING_MODE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_BATTERY_CONVERSING_MODE:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    :cond_1
    return-void
.end method

.method private checkLaunchSetting()I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "active_key_on_lockscreen"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getActivityCount(Landroid/content/Intent;)I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    return v2
.end method

.method private handleDoubleTapUserKey()V
    .locals 2

    iget v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    return-void
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventAsSystemService(Landroid/view/KeyEvent;)V

    return-void
.end method

.method private handleVolumeKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method private isKnoxOrSecureFolderAppRunning(Landroid/content/Context;Z)Z
    .locals 7

    const/4 v0, 0x0

    const-string/jumbo v1, "persona"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v1, :cond_0

    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "PERSONA_SERVICE is not running"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz p2, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    move v0, v4

    :goto_1
    sget-object v4, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isKnoxAppRunning userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isSecureFolder="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSupportActiveDouble()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "double_press_app"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mDouble_launch_app:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mDouble_launch_app:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isUserSetupComplete()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public static synthetic lambda$new$0(Lcom/android/internal/policy/PhoneFallbackEventHandler;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleDoubleTapUserKey()V

    :cond_0
    return-void
.end method

.method private launchAppActivity(Landroid/content/Intent;)V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_BATTERY_CONVERSING_MODE:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->checkLaunchSetting()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "dismissIfInsecure"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "afterKeyguardGone"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    sget-object v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "The pendingIntent sent to keyguard"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "it is blocked to launch app by setting value"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_4

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->requestWaitingForOccluding()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private launchCamera()V
    .locals 5

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "isSecure"

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->requestWaitingForOccluding()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    sget-object v3, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v4, "No activity to launch Camera."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    :cond_2
    return-void
.end method

.method private launchKnoxOrSecureFolder(IZ)Z
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "com.samsung.knox.securefolder"

    const-string v2, "com.samsung.knox.securefolder.foldercontainer.ActiveKeyPressShortcut"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "com.samsung.android.knox.containeragent"

    const-string v2, "com.samsung.android.knox.containeragent.usage.ActiveKeyPressShortcut"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string/jumbo v1, "launch_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v2, "KnoxShortcut Activity not started"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private launchUserDefinedApp(I)Z
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v4, "Not lauching User defined app because user setup is in progress."

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_BATTERY_CONVERSING_MODE:Z

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v7}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getModeType()I

    move-result v6

    sget-object v7, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "now emergencyMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v7, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "userkey launch mode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    const/4 v8, 0x1

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_0
    move-object v7, v0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mDouble_launch_app:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7, v8}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isKnoxOrSecureFolderAppRunning(Landroid/content/Context;Z)Z

    move-result v7

    const/4 v9, 0x3

    if-eqz v7, :cond_3

    invoke-direct {v1, v9, v8}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchKnoxOrSecureFolder(IZ)Z

    move-result v3

    return v3

    :cond_3
    iget-object v7, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isKnoxOrSecureFolderAppRunning(Landroid/content/Context;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {v1, v9, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchKnoxOrSecureFolder(IZ)Z

    move-result v3

    return v3

    :pswitch_1
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_BATTERY_CONVERSING_MODE:Z

    if-eqz v9, :cond_4

    if-ne v6, v7, :cond_4

    return v8

    :cond_4
    iget-object v9, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9, v8}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isKnoxOrSecureFolderAppRunning(Landroid/content/Context;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-direct {v1, v7, v8}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchKnoxOrSecureFolder(IZ)Z

    move-result v3

    return v3

    :cond_5
    iget-object v9, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isKnoxOrSecureFolderAppRunning(Landroid/content/Context;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-direct {v1, v7, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchKnoxOrSecureFolder(IZ)Z

    move-result v3

    return v3

    :cond_6
    iget-object v7, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "long_press_app"

    invoke-static {v7, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_BATTERY_CONVERSING_MODE:Z

    if-eqz v9, :cond_7

    if-ne v6, v7, :cond_7

    iget-object v7, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "short_press_app_battery_conserve"

    invoke-static {v7, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    iget-object v7, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "short_press_app"

    invoke-static {v7, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v7, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7, v8}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isKnoxOrSecureFolderAppRunning(Landroid/content/Context;Z)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-direct {v1, v8, v8}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchKnoxOrSecureFolder(IZ)Z

    move-result v3

    return v3

    :cond_8
    iget-object v7, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isKnoxOrSecureFolderAppRunning(Landroid/content/Context;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {v1, v8, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchKnoxOrSecureFolder(IZ)Z

    move-result v3

    return v3

    :pswitch_3
    return v8

    :goto_2
    const-string v0, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v8

    :cond_9
    move v9, v3

    if-eqz v7, :cond_a

    const/16 v0, 0x2f

    :try_start_0
    invoke-virtual {v7, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move v9, v0

    invoke-virtual {v7, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_3
    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_a
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "set package info for launching PTT app (Korea National Emergency Network)"

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.ptt"

    move-object v4, v0

    const-string v0, "com.sec.ptt.call.activities.callMainActivity"
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_4
    goto :goto_6

    :goto_5
    nop

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_6
    move-object v5, v0

    if-eqz v4, :cond_f

    const-string v0, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_9

    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10200000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v10, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_EMERGENCY_MODE:Z

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v10, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    if-eqz v12, :cond_c

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_e

    :cond_c
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v13, "Not start activity because app is not added in UPSM"

    invoke-static {v0, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move-object v13, v0

    :try_start_1
    invoke-virtual {v11, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v13, v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v14, v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    if-eqz v13, :cond_d

    invoke-virtual {v11, v13}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v14, Landroid/view/ContextThemeWrapper;

    iget-object v15, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const v3, 0x103012b

    invoke-direct {v14, v15, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v3, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const v15, 0x10405a8

    invoke-virtual {v3, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v15, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v15, v8

    invoke-static {v3, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_d
    const/4 v3, 0x1

    return v3

    :cond_e
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    invoke-direct {v1, v10}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchAppActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    :goto_8
    const/4 v3, 0x1

    return v3

    :cond_f
    :goto_9
    const/4 v3, 0x0

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getMediaSessionManager()Landroid/media/session/MediaSessionManager;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method getSearchManager()Landroid/app/SearchManager;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method launchSocialActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "com.sec.android.app.socialpage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.sec.android.app.socialpage"

    const-string v3, "com.sec.android.app.socialpage.SocialSetActivity"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchSocialActivity(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x2

    const/high16 v6, 0x10000000

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    const/high16 v8, 0x800000

    packed-switch v2, :pswitch_data_3

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_d

    :sswitch_0
    if-eqz v4, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_d

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, v3, v1}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.sec.android.app.socialpage"

    const-string v6, "com.sec.android.app.socialpage.SocialSetActivity"

    invoke-virtual {v1, v0, v6}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchSocialActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Not dispatching APPSELECT Key long press because user setup is in progress."

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v5

    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "Not dispatching KEYCODE_BUTTON_GAME Key press because user setup is in progress."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_28

    if-nez v4, :cond_5

    goto/16 :goto_d

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v4, v3, v1}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "no action about game button longpressed"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return v5

    :sswitch_2
    if-eqz v4, :cond_28

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_EMERGENCY_MODE:Z

    if-nez v8, :cond_8

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_ULTRA_POWER_SAVING_MODE:Z

    if-nez v8, :cond_8

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_BATTERY_CONVERSING_MODE:Z

    if-eqz v8, :cond_9

    :cond_8
    iget-object v8, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v8}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isModifying()Z

    move-result v8

    if-eqz v8, :cond_9

    goto/16 :goto_d

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v4, v3, v1}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    iget-boolean v8, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    if-eqz v8, :cond_a

    iput-boolean v7, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    iget-object v8, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mHandler:Landroid/os/Handler;

    iget-object v9, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v8, 0x3

    iput v8, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    iget v8, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {v1, v8}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    goto :goto_2

    :cond_a
    iput v5, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    goto :goto_2

    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    iget-object v8, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    iput v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    :cond_c
    :goto_2
    iget v8, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    if-ne v8, v0, :cond_f

    iget v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {v1, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    invoke-virtual {v8, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "com.sec.android.app.popupuireceiver"

    const-string v6, "com.sec.android.app.popupuireceiver.popupCustomizeKey"

    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_3
    goto :goto_4

    :cond_d
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Not dispatching Active Key long press because user setup is in progress."

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_4
    iput v7, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    :cond_f
    return v5

    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_28

    if-eqz v4, :cond_28

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_10

    goto/16 :goto_d

    :cond_10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v7, v0

    const-string v0, "com.android.mms"

    const-string v9, "com.android.mms.ui.ConversationComposer"

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {v1, v7}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getActivityCount(Landroid/content/Intent;)I

    move-result v0

    if-lez v0, :cond_11

    :try_start_1
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    sget-object v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v8, "No activity to launch mms ConversationComposer."

    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    goto :goto_6

    :cond_11
    const-string v0, "com.samsung.android.messaging"

    const-string v6, "com.samsung.android.messaging.ui.ConversationComposer"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {v1, v7}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getActivityCount(Landroid/content/Intent;)I

    move-result v0

    if-lez v0, :cond_12

    :try_start_2
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    sget-object v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v8, "No activity to launch new mms ConversationComposer."

    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_6
    return v5

    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_28

    if-eqz v4, :cond_28

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_13

    goto/16 :goto_d

    :cond_13
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "sec.android.intent.extra.LAUNCHER_ACTION"

    const-string v6, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_3
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    :goto_7
    return v5

    :sswitch_5
    invoke-direct {v1, v4}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_d

    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v4, v3, v1}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_8

    :cond_15
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.CAMERA_BUTTON"

    const/4 v8, 0x0

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v6, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v0

    invoke-virtual/range {v9 .. v17}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_8

    :cond_16
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Not dispatching CAMERA long press because user setup is in progress."

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_8
    return v5

    :sswitch_6
    invoke-direct {v1, v4}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto/16 :goto_d

    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {v4, v3, v1}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_a

    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    :goto_9
    goto :goto_a

    :cond_1a
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Not starting call activity because user setup is in progress."

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_a
    return v5

    :pswitch_0
    return v5

    :pswitch_1
    return v5

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_28

    if-eqz v4, :cond_28

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_1c

    goto/16 :goto_d

    :cond_1c
    const-string v0, "android.intent.action.MAIN"

    const-string v7, "android.intent.category.APP_EMAIL"

    invoke-static {v0, v7}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_5
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    sget-object v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v8, "No activity to launch email"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    return v5

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_28

    if-eqz v4, :cond_28

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_1d

    goto/16 :goto_d

    :cond_1d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.google.android.googlequicksearchbox"

    const-string v9, "com.google.android.googlequicksearchbox.VoiceSearchActivity"

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {v1, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getActivityCount(Landroid/content/Intent;)I

    move-result v6

    if-lez v6, :cond_1e

    iget-object v6, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1e
    return v5

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_28

    if-eqz v4, :cond_28

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_1f

    goto/16 :goto_d

    :cond_1f
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v6, "input_method"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_20

    invoke-virtual {v0, v7, v7}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_20
    return v5

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_21

    return v5

    :cond_21
    :pswitch_6
    :sswitch_7
    const/16 v0, 0x4f

    if-ne v2, v0, :cond_22

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, " KeyEvent.KEYCODE_HEADSETHOOK blocked by factoryPBAPhase"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_22
    :pswitch_7
    :sswitch_8
    invoke-direct {v1, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    return v5

    :pswitch_8
    invoke-direct {v1, v4}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v8

    if-eqz v8, :cond_23

    goto :goto_d

    :cond_23
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_24

    invoke-virtual {v4, v3, v1}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_d

    :cond_24
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v8

    if-eqz v8, :cond_28

    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_28

    iget-object v8, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v9, v8, Landroid/content/res/Configuration;->keyboard:I

    if-eq v9, v5, :cond_25

    iget v9, v8, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v9, v0, :cond_27

    :cond_25
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    invoke-virtual {v9, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_6
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    return v5

    :catch_6
    move-exception v0

    goto :goto_c

    :cond_26
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "Not dispatching SEARCH long press because user setup is in progress."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_c
    nop

    :cond_28
    :goto_d
    return v7

    :pswitch_9
    :sswitch_9
    invoke-direct {v1, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleVolumeKeyEvent(Landroid/view/KeyEvent;)V

    return v5

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x54
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7e
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3ee
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_6
        0x1b -> :sswitch_5
        0x4f -> :sswitch_7
        0x82 -> :sswitch_8
        0xa4 -> :sswitch_9
        0xde -> :sswitch_8
        0x3ea -> :sswitch_4
        0x3f5 -> :sswitch_3
        0x3f7 -> :sswitch_2
        0x41a -> :sswitch_1
        0x431 -> :sswitch_0
    .end sparse-switch
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_0
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "short_press_app"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    const/16 v7, 0x2f

    :try_start_0
    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    move v6, v7

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v7

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_2
    const-string v4, "com.sec.android.app.socialpage"

    const-string v2, "com.sec.android.app.socialpage.SocialSetActivity"

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchSocialActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v7, "Not dispatching APPSELECT Key short press because user setup is in progress."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return v1

    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.input.BUTTON_GAME"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "deviceName"

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v3, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v4, "Send BR for game button"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1

    :sswitch_2
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_EMERGENCY_MODE:Z

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_ULTRA_POWER_SAVING_MODE:Z

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_BATTERY_CONVERSING_MODE:Z

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isModifying()Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_8

    return v1

    :cond_8
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isSupportActiveDouble()Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    if-ne v3, v1, :cond_9

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    iget-object v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xaa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "user doubletap timeout runnable posted!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    iget v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    if-ne v3, v1, :cond_b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_a

    iget v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    :cond_a
    iput v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    :cond_b
    return v1

    :sswitch_3
    const/16 v2, 0x4f

    if-ne p1, v2, :cond_12

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, " KeyEvent.KEYCODE_HEADSETHOOK blocked by factoryPBAPhase"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :sswitch_4
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchCamera()V

    goto :goto_2

    :cond_d
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "Not starting Camera activity because user setup is in progress."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_2
    return v1

    :sswitch_5
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v3

    if-eqz v3, :cond_f

    nop

    :goto_3
    return v2

    :cond_f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_4

    :cond_10
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "Not starting call activity because user setup is in progress."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_4
    return v1

    :cond_12
    :pswitch_0
    :sswitch_6
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    return v1

    :pswitch_1
    :sswitch_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleVolumeKeyEvent(Landroid/view/KeyEvent;)V

    :cond_13
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7e
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_5
        0x1b -> :sswitch_4
        0x4f -> :sswitch_3
        0x82 -> :sswitch_6
        0xa4 -> :sswitch_7
        0xde -> :sswitch_6
        0x3f7 -> :sswitch_2
        0x41a -> :sswitch_1
        0x431 -> :sswitch_0
    .end sparse-switch
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method sendCloseSystemWindows()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    return-void
.end method

.method startCallActivity()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "No activity found for android.intent.action.CALL_BUTTON."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
