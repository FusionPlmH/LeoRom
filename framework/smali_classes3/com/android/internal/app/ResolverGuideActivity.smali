.class public Lcom/android/internal/app/ResolverGuideActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ResolverGuideActivity.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ResolverGuideActivity"


# instance fields
.field private mSafeForwardingMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverGuideActivity;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverGuideActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    const-string v3, "extra_safe_forward"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/app/ResolverGuideActivity;->mSafeForwardingMode:Z

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const v4, -0x800001

    and-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v2
.end method


# virtual methods
.method protected handlePendingIntent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->handlePendingIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/ResolverGuideActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverGuideActivity;->safelyStartActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v0, 0x10302d2

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverGuideActivity;->setTheme(I)V

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverGuideActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const-string v2, "Default app selected"

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10401bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10401bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/internal/app/ResolverGuideActivity$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ResolverGuideActivity$1;-><init>(Lcom/android/internal/app/ResolverGuideActivity;)V

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverGuideActivity;->setFinishOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->setupAlert()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->finish()V

    :cond_0
    return-void
.end method

.method public safelyStartActivity(Landroid/content/Intent;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverGuideActivity;->mSafeForwardingMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/app/ResolverGuideActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v2, -0x2710

    :try_start_0
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/internal/app/ResolverGuideActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "??"

    :goto_0
    const-string v2, "ResolverGuideActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch  package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", while running in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
