.class public Lcom/samsung/android/settings/qstile/NightThemeTiles;
.super Landroid/service/quicksettings/TileService;
.source "NightThemeTiles.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsNeedToBlockOnClick:Z

.field private final mNightModeObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mIsNeedToBlockOnClick:Z

    new-instance v0, Lcom/samsung/android/settings/qstile/NightThemeTiles$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/qstile/NightThemeTiles$1;-><init>(Lcom/samsung/android/settings/qstile/NightThemeTiles;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mNightModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/qstile/NightThemeTiles;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->updateState(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/qstile/NightThemeTiles;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mIsNeedToBlockOnClick:Z

    return p1
.end method

.method private getNightThemeTurnOnType()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_night_theme_scheduled"

    invoke-static {v3, v4, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    const/4 v1, 0x0

    return-object v1

    :cond_2
    const v4, 0x7f1215c1

    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    const v7, 0x7f1215c2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {v5, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_night_theme_scheduled_type"

    const/4 v7, 0x2

    invoke-static {v5, v6, v7, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v1, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    const v8, 0x7f1213a5

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    invoke-virtual {v6, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "display_night_theme_on_time"

    const-wide/16 v8, 0x474

    invoke-static {v4, v6, v8, v9, v2}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "display_night_theme_off_time"

    const-wide/16 v10, 0x1a4

    invoke-static {v4, v6, v10, v11, v2}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-ltz v4, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f1213ac

    new-array v12, v1, [Ljava/lang/Object;

    iget-object v13, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    invoke-static {v13, v10, v11}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v2

    invoke-virtual {v4, v6, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    invoke-static {v4, v10, v11}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    const v12, 0x7f1215c3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v13, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    invoke-static {v13, v8, v9}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v2

    aput-object v4, v7, v1

    invoke-virtual {v6, v12, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isBlockedEdmSettingsChange()Z
    .locals 6

    const-string v0, "false"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v3, "isSettingsChangesAllowed"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "NightThemeTiles"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBlockedEdmSettingsChange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private setNightMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/qstile/NightThemeTiles$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/qstile/NightThemeTiles$3;-><init>(Lcom/samsung/android/settings/qstile/NightThemeTiles;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showItPolicyToast()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    const v4, 0x7f1215c4

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

.method private updateState(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    if-eqz v1, :cond_3

    const v2, 0x7f08066d

    invoke-static {p0, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    const v2, 0x7f1215bc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNightThemeEnabled(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/service/quicksettings/Tile;->setState(I)V

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mIsNeedToBlockOnClick:Z

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 v3, 0x2

    nop

    :cond_2
    :goto_0
    invoke-virtual {v1, v3}, Landroid/service/quicksettings/Tile;->setState(I)V

    :goto_1
    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->updateTile()V

    iget-boolean v2, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mIsNeedToBlockOnClick:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/settings/qstile/NightThemeTiles$2;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/qstile/NightThemeTiles$2;-><init>(Lcom/samsung/android/settings/qstile/NightThemeTiles;Z)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    const-string v0, "NightThemeTiles"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mIsNeedToBlockOnClick:Z

    if-eqz v0, :cond_0

    const-string v0, "NightThemeTiles"

    const-string v1, "onClick is blocked when night mode is updating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->isBlockedEdmSettingsChange()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->showItPolicyToast()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNightThemeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->showNightThemeDisabledReasonToast(Landroid/content/Context;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->semIsToggleButtonChecked()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->setNightMode(I)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mIsNeedToBlockOnClick:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->updateState(Z)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->setNightMode(I)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mIsNeedToBlockOnClick:Z

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->updateState(Z)V

    :goto_1
    return-void
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mNightModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mNightModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onStartListening()V
    .locals 3

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->updateState(Z)V

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
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNightThemeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d0246

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    const v2, 0x7f1215c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->getNightThemeTurnOnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const v3, 0x7f0a055d

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "qs_detail_content_secondary_text_color"

    const/high16 v6, -0x1000000

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-object v0
.end method

.method public semGetDetailViewTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    const v1, 0x7f1215c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNightThemeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->showNightThemeDisabledReasonToast(Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.NIGHT_THEME_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public semIsToggleButtonChecked()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    const-string v1, "NightThemeTiles"

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

    const-string v0, "NightThemeTiles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "semSetToggleButtonChecked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->isBlockedEdmSettingsChange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->showItPolicyToast()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNightThemeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->showNightThemeDisabledReasonToast(Landroid/content/Context;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->setNightMode(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->semUpdateDetailView()V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->updateState(Z)V

    return-void
.end method
