.class public Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;
.super Ljava/lang/Object;
.source "SemRemoteAppDataExtractionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemRemoteAppDataExtractionManager"


# instance fields
.field private mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-eqz p1, :cond_1

    const-string/jumbo v0, "spengestureservice"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SemRemoteAppDataExtractionManager"

    const-string v1, "SemRemoteAppDataExtractionManager : Failed to connect to the service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect to the service. Feature is not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "SemRemoteAppDataExtractionManager"

    const-string v1, "SemRemoteAppDataExtractionManager : Context is null! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "SemRemoteAppDataExtractionManager"

    const-string v1, "getScrollableAreaInfo : rect is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "SemRemoteAppDataExtractionManager"

    const-string v1, "getScrollableViewInfo : rect is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object v0

    return-object v0
.end method

.method public getSmartClipDataFromCurrentScreen()Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v0, v1}, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object v0

    return-object v0
.end method

.method public injectInputEvent(IILjava/util/ArrayList;ZLandroid/os/IBinder;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Landroid/view/InputEvent;",
            ">;Z",
            "Landroid/os/IBinder;",
            ")Z"
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->injectInputEvent(IILjava/util/ArrayList;ZLandroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const-string v0, "SemRemoteAppDataExtractionManager"

    const-string v1, "injectInputEvent : Empty input event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
