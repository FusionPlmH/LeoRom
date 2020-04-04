.class public abstract Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;
.super Ljava/lang/Object;
.source "AppDockItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo$ItemCallback;
    }
.end annotation


# static fields
.field public static MULTI_INSTANCE_META_DATA:Ljava/lang/String;


# instance fields
.field mCallback:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo$ItemCallback;

.field protected mDisabled:Z

.field protected mIsSupportMultiInstance:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    sput-object v0, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->MULTI_INSTANCE_META_DATA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->mIsSupportMultiInstance:Z

    return-void
.end method

.method public static synthetic lambda$startActivity$0(Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 5

    const-string/jumbo v0, "packageName=%s, activityName=%s, toWindowingMode=%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lcom/android/systemui/sidescreen/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.google.android.youtube"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    move v1, p3

    invoke-virtual {p0, p4}, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->getActivityOptions(Landroid/content/Context;)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    if-eqz v1, :cond_1

    invoke-virtual {v3, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    goto :goto_2

    :cond_1
    invoke-static {p4}, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->isSidescreenPrimaryVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v1, 0x65

    goto :goto_1

    :cond_2
    const/16 v1, 0x64

    :goto_1
    invoke-virtual {v3, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    :goto_2
    invoke-virtual {v3, v2}, Landroid/app/ActivityOptions;->setStartedFromWindowTypeLauncher(Z)V

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p4, v0, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static makeKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getActivityOptions(Landroid/content/Context;)Landroid/app/ActivityOptions;
    .locals 4

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f0100bf

    const v2, 0x7f0100c0

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v0, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public getCallback()Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo$ItemCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->mCallback:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo$ItemCallback;

    return-object v0
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public isDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->mDisabled:Z

    return v0
.end method

.method public isSupportMultiInstance()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->mIsSupportMultiInstance:Z

    return v0
.end method

.method protected final isSupportMultiInstance(Landroid/content/pm/ResolveInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->MULTI_INSTANCE_META_DATA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method public abstract loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public notifyAppDataLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->mCallback:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo$ItemCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->mCallback:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo$ItemCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo$ItemCallback;->onAppDataLoaded(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo$ItemCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->mCallback:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo$ItemCallback;

    return-void
.end method

.method public setDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->mDisabled:Z

    return-void
.end method

.method public final startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockItemInfo$WJPmmsHsSdj39kj9uyNEejsSqrc;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockItemInfo$WJPmmsHsSdj39kj9uyNEejsSqrc;-><init>(Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract startApp(Landroid/content/Context;I)V
.end method
