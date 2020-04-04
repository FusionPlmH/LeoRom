.class public Lcom/android/settings/language/PointerSpeedController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "PointerSpeedController.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/language/PointerSpeedController$PointerSpeedPreferenceSamsungCallback;
    }
.end annotation


# static fields
.field static final KEY_POINTER_SPEED:Ljava/lang/String; = "pointer_speed"


# instance fields
.field private mIm:Landroid/hardware/input/InputManager;

.field private mPointerSeekbar:Lcom/android/settings/PointerSpeedPreference;

.field private final mPointerSpeedCallback:Lcom/android/settings/language/PointerSpeedController$PointerSpeedPreferenceSamsungCallback;

.field private mSpeedObserver:Landroid/database/ContentObserver;

.field private um:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "pointer_speed"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/language/PointerSpeedController$PointerSpeedPreferenceSamsungCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/language/PointerSpeedController$PointerSpeedPreferenceSamsungCallback;-><init>(Lcom/android/settings/language/PointerSpeedController;Lcom/android/settings/language/PointerSpeedController$1;)V

    iput-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSpeedCallback:Lcom/android/settings/language/PointerSpeedController$PointerSpeedPreferenceSamsungCallback;

    new-instance v0, Lcom/android/settings/language/PointerSpeedController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/language/PointerSpeedController$1;-><init>(Lcom/android/settings/language/PointerSpeedController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->mSpeedObserver:Landroid/database/ContentObserver;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->um:Landroid/os/UserManager;

    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->mIm:Landroid/hardware/input/InputManager;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/language/PointerSpeedController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/language/PointerSpeedController;)Landroid/hardware/input/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->mIm:Landroid/hardware/input/InputManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/language/PointerSpeedController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/language/PointerSpeedController;->onSpeedChanged()V

    return-void
.end method

.method private onSpeedChanged()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings/language/PointerSpeedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreference;

    add-int/lit8 v2, v0, 0x7

    invoke-virtual {v1, v2}, Lcom/android/settings/PointerSpeedPreference;->setProgress(I)V

    int-to-long v1, v0

    const/16 v3, 0x39

    const/16 v4, 0x1261

    invoke-static {v3, v4, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "pointer_speed"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/PointerSpeedPreference;

    iput-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreference;

    iget-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreference;

    iget-object v1, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSpeedCallback:Lcom/android/settings/language/PointerSpeedController$PointerSpeedPreferenceSamsungCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/PointerSpeedPreference;->setCallback(Lcom/android/settings/PointerSpeedPreference$Callback;)V

    iget-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreference;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/settings/PointerSpeedPreference;->setMax(I)V

    iget-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreference;

    iget-object v1, p0, Lcom/android/settings/language/PointerSpeedController;->mIm:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/android/settings/language/PointerSpeedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/settings/PointerSpeedPreference;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->um:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->isKnoxContainer(Landroid/os/UserManager;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05002a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public onStart()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/language/PointerSpeedController;->mSpeedObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/language/PointerSpeedController;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
