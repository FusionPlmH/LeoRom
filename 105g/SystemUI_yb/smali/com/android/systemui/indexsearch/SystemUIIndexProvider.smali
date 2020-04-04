.class public Lcom/android/systemui/indexsearch/SystemUIIndexProvider;
.super Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;
.source "SystemUIIndexProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field mAsycTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

.field mIndexMediator:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;-><init>()V

    const-string v0, "SystemUIIndexProvider"

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSearchResult(Ljava/lang/String;ILandroid/os/CancellationSignal;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mAsycTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mAsycTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    invoke-virtual {v0, v2}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->cancel(Z)Z

    return-object v1

    :cond_0
    new-instance v0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    invoke-direct {v0, p0}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;)V

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mAsycTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mAsycTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v2

    invoke-virtual {v0, v3}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    nop

    :goto_0
    return-object v1
.end method

.method public makeAppLaunchIntent()Landroid/content/Intent;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.indexsearch.detailview"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/indexsearch/DetailPanelLaunchActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method

.method public makeInAppSearchIntent()Landroid/content/Intent;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    const-class v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mIndexMediator:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    new-instance v0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    invoke-direct {v0, p0}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;)V

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mAsycTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    const/4 v0, 0x1

    return v0
.end method
