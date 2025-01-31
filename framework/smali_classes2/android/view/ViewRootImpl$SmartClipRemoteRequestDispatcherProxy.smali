.class final Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SmartClipRemoteRequestDispatcherProxy"
.end annotation


# instance fields
.field private DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDispatcher:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;

.field private mGateway:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SmartClipRemoteRequestDispatcher_ViewRootImpl"

    iput-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->DEBUG:Z

    new-instance v0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;-><init>(Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mGateway:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    iput-object p2, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;

    iget-object v1, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mGateway:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;-><init>(Landroid/content/Context;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mDispatcher:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;

    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mDispatcher:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->isDebugMode()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->DEBUG:Z

    return-void
.end method

.method static synthetic access$5100(Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->dispatchSmartClipMetaDataExtraction(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    return-void
.end method

.method private dispatchSmartClipMetaDataExtraction(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 4

    iget-object v0, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    check-cast v0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestId:I

    iput v1, v0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    iget v1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mTargetWindowLayer:I

    iput v1, v0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mTargetWindowLayer:I

    iget-object v1, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iget-object v3, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;)V

    move-object v1, v2

    iget-object v2, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->doExtractSmartClipData(Landroid/view/View;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iget-object v2, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->sendExtractionResultToSmartClipService(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 4

    iget-boolean v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "SmartClipRemoteRequestDispatcher_ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSmartClipRemoteRequest : req id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mDispatcher:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;

    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mDispatcher:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;

    const-string v1, "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerPid:I

    iget v3, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerUid:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->checkPermission(Ljava/lang/String;II)V

    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$2;

    invoke-direct {v1, p0, p1}, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$2;-><init>(Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    nop

    :goto_0
    return-void
.end method
