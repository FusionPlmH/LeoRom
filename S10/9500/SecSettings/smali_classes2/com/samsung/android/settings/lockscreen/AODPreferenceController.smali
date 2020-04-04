.class public Lcom/samsung/android/settings/lockscreen/AODPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AODPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final AOD_MODE_DEFAULT_END_TIME:I = 0x21c

.field public static final AOD_MODE_DEFAULT_START_TIME:I = 0x21c

.field public static final AOD_MODE_END_TIME:Ljava/lang/String; = "aod_mode_end_time"

.field public static final AOD_MODE_START_TIME:Ljava/lang/String; = "aod_mode_start_time"

.field private static final KEY_ALWAYS_ON_SCREEN:Ljava/lang/String; = "always_on_screen"

.field private static final SETTING_KEY_AOD_HOW_TO_SHOW_TAP_TO_SHOW_DISABLED:I = 0x0

.field private static final SETTING_KEY_AOD_HOW_TO_SHOW_TAP_TO_SHOW_ENABLED:I = 0x1

.field private static final SETTING_KEY_AOD_TAP_TO_SHOW:Ljava/lang/String; = "aod_tap_to_show_mode"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

.field private final mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

.field private mAodAlertDialog:Landroid/app/AlertDialog;

.field private mHost:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/lockscreen/LockScreenSettings;)V
    .locals 2

    const-string v0, "always_on_screen"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController$1;-><init>(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mHost:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)Lcom/samsung/android/settings/lockscreen/LockScreenSettings;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mHost:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->resetAccessibilityFeature()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getAODclocksummary()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_mode_start_time"

    const/16 v2, 0x21c

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "aod_mode_end_time"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "aod_tap_to_show_mode"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move v2, v5

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120125

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120124

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eq v0, v1, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v5, v0, 0x3c

    rem-int/lit8 v6, v0, 0x3c

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->useCalendar(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ~ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v5, v1, 0x3c

    rem-int/lit8 v6, v1, 0x3c

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->useCalendar(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    :goto_1
    return-object v3
.end method

.method private makeAccessibilityDisablePopup()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string v2, "\u2011"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_display_magnification_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v6

    :goto_1
    iget-object v8, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "finger_magnifier"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    move v8, v7

    :goto_2
    iget-object v9, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "FmMagnifier"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_3

    move v9, v6

    goto :goto_3

    :cond_3
    move v9, v7

    :goto_3
    iget-object v10, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "high_contrast"

    invoke-static {v10, v11, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_4

    move v10, v6

    goto :goto_4

    :cond_4
    move v10, v7

    :goto_4
    const-string v11, ""

    const-string v12, ""

    iget-object v13, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    const v14, 0x7f12011f

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_5

    add-int/lit8 v1, v1, 0x1

    iget-object v13, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz v5, :cond_6

    add-int/lit8 v1, v1, 0x1

    iget-object v13, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    const v14, 0x7f120056

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-nez v8, :cond_7

    if-eqz v9, :cond_8

    :cond_7
    add-int/lit8 v1, v1, 0x1

    iget-object v13, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    const v14, 0x7f120041

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz v10, :cond_9

    add-int/lit8 v1, v1, 0x1

    iget-object v13, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    const v14, 0x7f120ee1

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    if-ne v1, v6, :cond_a

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    const v15, 0x7f12011d

    new-array v13, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v7

    invoke-virtual {v14, v15, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget-object v13, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v6, 0x7f1200ff

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v15, v7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v15, v7

    const v6, 0x7f12011c

    invoke-virtual {v13, v6, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_5
    goto :goto_6

    :cond_a
    const/4 v15, 0x2

    if-lt v1, v15, :cond_b

    iget-object v6, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x7f120120

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :goto_6
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v12, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v7, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v12, 0x7f12011e

    new-instance v13, Lcom/samsung/android/settings/lockscreen/AODPreferenceController$3;

    invoke-direct {v13, v0}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController$3;-><init>(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)V

    invoke-virtual {v7, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v12, 0x1040000

    new-instance v13, Lcom/samsung/android/settings/lockscreen/AODPreferenceController$2;

    invoke-direct {v13, v0}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController$2;-><init>(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)V

    invoke-virtual {v7, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mAodAlertDialog:Landroid/app/AlertDialog;

    iget-object v7, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mAodAlertDialog:Landroid/app/AlertDialog;

    new-instance v12, Lcom/samsung/android/settings/lockscreen/AODPreferenceController$4;

    invoke-direct {v12, v0}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController$4;-><init>(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)V

    invoke-virtual {v7, v12}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v7, v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mAodAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_b
    return-void
.end method

.method private resetAccessibilityFeature()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_magnifier"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "FmMagnifier"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "high_contrast"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    move v5, v1

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_4
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->turnOffTalkBack(Landroid/content/Context;)V

    :cond_5
    if-eqz v0, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accessibility_display_magnification_enabled"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    if-eqz v3, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "finger_magnifier"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    if-eqz v4, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "FmMagnifier"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    if-eqz v5, :cond_9

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    const-string v7, "accessibility"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "high_contrast"

    invoke-static {v1, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    return-void
.end method

.method private updatePreference()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mAodAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_display_magnification_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "finger_magnifier"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "FmMagnifier"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "high_contrast"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mAodAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "aod_mode"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mHost:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->sPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isDesktopDockConnected(Landroid/content/Context;)Z

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v2, :cond_3

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isAODDisabledInPSM(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mHost:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    iget-object v8, v8, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v8}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v8

    if-ne v8, v7, :cond_6

    :cond_4
    sget-object v8, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Disable : PowerSaving="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", WifiDisplayConnected="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mHost:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    iget-object v10, v10, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v10}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v10

    if-ne v10, v7, :cond_5

    goto :goto_1

    :cond_5
    move v4, v1

    :goto_1
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_2

    :cond_6
    if-nez v3, :cond_7

    if-eqz v5, :cond_8

    :cond_7
    if-nez v6, :cond_8

    sget-object v4, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Disable : isSamsungDexMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isDesktopDockConnected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isDesktopDualMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->isDisabledByAdmin()Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->TAG:Ljava/lang/String;

    const-string v7, "enable"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_9
    :goto_2
    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->getParent()Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    const-string v1, "always_on_screen"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->removePreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V

    :cond_b
    :goto_3
    return-void
.end method

.method private useCalendar(II)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    :goto_0
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "always_on_screen"

    return-object v0
.end method

.method public getSliceType()I
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/BasePreferenceController;->getSliceType()I

    move-result v0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 6

    const-string v0, ""

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aod_mode"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v1, v4

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mHost:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->sPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->getAODclocksummary()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f120122

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isAODDisabledInPSM(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mHost:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    :cond_3
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f12011a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f12011b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mHost:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mHost:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120d18

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.app.aodservice.settings.AODSettingsMain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->TAG:Ljava/lang/String;

    const-string v3, "ActivityNotFoundException in AlwaysOnDisplay"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mHost:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1077

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return v2

    :cond_1
    return v1
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "always_on_screen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "accessibility_display_magnification_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "finger_magnifier"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "FmMagnifier"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v4

    :goto_3
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "high_contrast"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v6, v4

    goto :goto_4

    :cond_4
    move v6, v3

    :goto_4
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->needNotCheckAccFeature()Z

    move-result v7

    if-nez v7, :cond_6

    if-eqz v1, :cond_6

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    if-nez v2, :cond_5

    if-nez v5, :cond_5

    if-eqz v6, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->makeAccessibilityDisablePopup()V

    goto :goto_5

    :cond_6
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "aod_mode"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-static {v7, v8, v1, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eqz v1, :cond_7

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isNotAODSettingTime(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    const v9, 0x7f120121

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_5
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mHost:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getMetricsCategory()I

    move-result v3

    const/16 v7, 0x1090

    invoke-static {v3, v7}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return v4

    :cond_8
    return v3
.end method

.method public registerContentObserver()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregisterContentObserver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->updatePreference()V

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    return-void
.end method
