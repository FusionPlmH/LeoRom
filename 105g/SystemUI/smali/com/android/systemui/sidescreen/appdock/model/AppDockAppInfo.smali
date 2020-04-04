.class public Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;
.super Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;
.source "AppDockAppInfo.java"


# instance fields
.field public key:Ljava/lang/String;

.field public mResolveInfo:Landroid/content/pm/ResolveInfo;

.field public title:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->semGetUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;->userId:I

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;->userId:I

    :goto_0
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;->userId:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;->makeKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, v1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;->isSupportMultiInstance(Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;->mIsSupportMultiInstance:Z

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-static {p1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget v2, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->getBadgedActivityIcon(Landroid/content/pm/ResolveInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public startApp(Landroid/content/Context;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
