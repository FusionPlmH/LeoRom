.class public Lcom/samsung/android/settings/qstile/SecAccountTiles;
.super Landroid/service/quicksettings/TileService;
.source "SecAccountTiles.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field mContext:Landroid/content/Context;

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

.field private mSyncOn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/qstile/SecAccountTiles$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles$1;-><init>(Lcom/samsung/android/settings/qstile/SecAccountTiles;)V

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/qstile/SecAccountTiles;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/qstile/SecAccountTiles;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->showConfirmPopup(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/qstile/SecAccountTiles;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->updateState()V

    return-void
.end method

.method private hasUserRestriction()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const-string v2, "no_modify_accounts"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "SecAccountTiles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasUserRestriction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isBlockedEdmSettingsChange()Z
    .locals 12

    const-string v0, "false"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSettingsChangesAllowed"

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RoamingPolicy"

    const-string v5, "isRoamingSyncEnabled"

    invoke-static {v3, v4, v5, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v3, v5, :cond_0

    if-nez v3, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v8

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v9

    const-string v10, "gsm.operator.isroaming"

    const-string v11, "false"

    invoke-static {v9, v10, v11}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    move v8, v4

    :cond_2
    if-eq v2, v5, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    :cond_4
    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    nop

    :goto_2
    move v4, v6

    const-string v5, "SecAccountTiles"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isBlockedEdmSettingsChange: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private showConfirmPopup(Z)V
    .locals 4

    const-string v0, "SecAccountTiles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showConfirmPopup/state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "/mSyncOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mSyncOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const v2, 0x7f1302b6

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    const v2, 0x7f1205ef

    goto :goto_0

    :cond_1
    const v2, 0x7f1205ed

    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz p1, :cond_2

    const v2, 0x7f1205ee

    goto :goto_1

    :cond_2
    const v2, 0x7f1205ec

    :goto_1
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/samsung/android/settings/qstile/SecAccountTiles$4;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/qstile/SecAccountTiles$4;-><init>(Lcom/samsung/android/settings/qstile/SecAccountTiles;Z)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/samsung/android/settings/qstile/SecAccountTiles$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles$3;-><init>(Lcom/samsung/android/settings/qstile/SecAccountTiles;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private showItPolicyToast()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const v4, 0x7f120a9f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f12112b

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mSyncOn:Z

    const-string v0, "SecAccountTiles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mSyncOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    if-eqz v1, :cond_2

    const v2, 0x7f0805ca

    invoke-static {p0, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    const v2, 0x7f120a9f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->hasUserRestriction()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mSyncOn:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    :goto_1
    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_2
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    const-string v0, "SecAccountTiles"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->hasUserRestriction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->isBlockedEdmSettingsChange()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->showItPolicyToast()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_function_val"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move v2, v1

    nop

    :cond_2
    move v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->semIsToggleButtonChecked()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v1, Lcom/samsung/android/settings/qstile/SecAccountTiles$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles$2;-><init>(Lcom/samsung/android/settings/qstile/SecAccountTiles;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->unlockAndRun(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v2}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->showConfirmPopup(Z)V

    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SecAccountTiles"

    const-string v1, "onDestroy(): dismiss the dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onStartListening()V
    .locals 0

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->updateState()V

    return-void
.end method

.method public onStopListening()V
    .locals 0

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    return-void
.end method

.method public onTileAdded()V
    .locals 0

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    return-void
.end method

.method public onTileRemoved()V
    .locals 0

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    return-void
.end method

.method public semGetDetailView()Landroid/widget/RemoteViews;
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->hasUserRestriction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d0245

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v1}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v1

    const v2, 0x7f0a0019

    if-eqz v1, :cond_1

    const v3, 0x7f1205ee

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v3, 0x7f1205ec

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "qs_detail_content_secondary_text_color"

    const/high16 v5, -0x1000000

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-object v0
.end method

.method public semGetDetailViewTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const v1, 0x7f121197

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->hasUserRestriction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public semIsToggleButtonChecked()Z
    .locals 4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    const-string v1, "SecAccountTiles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "semIsToggleButtonChecked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public semIsToggleButtonExists()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public semSetToggleButtonChecked(Z)V
    .locals 3

    const-string v0, "SecAccountTiles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "semSetToggleButtonChecked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->isBlockedEdmSettingsChange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->semIsToggleButtonChecked()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->semFireToggleStateChanged(ZZ)V

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->showItPolicyToast()V

    goto :goto_0

    :cond_0
    nop

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.AUTO_SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->semUpdateDetailView()V

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->updateState()V

    return-void
.end method
