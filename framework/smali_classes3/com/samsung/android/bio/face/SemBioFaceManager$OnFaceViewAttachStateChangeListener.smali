.class Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnFaceViewAttachStateChangeListener"
.end annotation


# static fields
.field static final VIEW_TYPE_AUTH:I = 0x1

.field static final VIEW_TYPE_ENROLL:I = 0x2


# instance fields
.field mAttr:Landroid/os/Bundle;

.field mData:[B

.field mFaceView:Landroid/view/View;

.field mFlag:I

.field mSessionId:J

.field mType:I

.field mUserId:I

.field final synthetic this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;ILandroid/view/View;IIJ[BLandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mType:I

    iput-object p3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFaceView:Landroid/view/View;

    iput p4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFlag:I

    iput p5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mUserId:I

    iput-wide p6, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mSessionId:J

    iput-object p8, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mData:[B

    iput-object p9, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mAttr:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    const-string v0, "SemBioFaceManager"

    const-string v1, "OnFaceViewAttachStateChangeListener : onViewAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener$1;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    const-string v0, "SemBioFaceManager"

    const-string v1, "OnFaceViewAttachStateChangeListener : onViewDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public runCommand()V
    .locals 23

    move-object/from16 v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x2

    :try_start_0
    new-array v0, v3, [I

    iget-object v4, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFaceView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v4, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFaceView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFaceView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    move v15, v5

    invoke-static {}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$700()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const-string v5, "SemBioFaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OnFaceViewAttachStateChangeListener : runCommand : ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v0, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "], ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v5, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mType:I

    if-ne v5, v3, :cond_1

    iget-object v5, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v5

    iget-object v7, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1700(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFaceView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    aget v9, v0, v6

    aget v10, v0, v2

    iget-object v12, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mData:[B

    iget v13, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mUserId:I

    iget-object v6, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v6}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1800(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v14

    iget v11, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFlag:I

    iget-object v6, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v6}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1900(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v16

    iget-object v6, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mAttr:Landroid/os/Bundle;

    move-object/from16 v17, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move v10, v4

    move/from16 v18, v11

    move v11, v15

    move/from16 v21, v15

    move/from16 v15, v18

    invoke-interface/range {v5 .. v17}, Lcom/samsung/android/bio/face/IFaceService;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    move/from16 v21, v15

    iget v5, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mType:I

    if-ne v5, v2, :cond_2

    iget-object v5, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v5

    iget-object v7, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1700(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFaceView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    aget v9, v0, v6

    aget v10, v0, v2

    iget-wide v12, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mSessionId:J

    iget v14, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mUserId:I

    iget-object v6, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v6}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1800(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v15

    iget v11, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFlag:I

    iget-object v6, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v6}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1900(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v17

    iget-object v6, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mAttr:Landroid/os/Bundle;

    const/16 v19, 0x0

    iget-object v2, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mData:[B

    move-object/from16 v18, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move v10, v4

    move/from16 v16, v11

    move/from16 v11, v21

    move-object/from16 v20, v2

    invoke-interface/range {v5 .. v20}, Lcom/samsung/android/bio/face/IFaceService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;[B)V

    :cond_2
    :goto_0
    iget-object v2, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1500(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->link()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "SemBioFaceManager"

    const-string v4, "Remote exception to call enroll"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mType:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    iget-object v2, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1600(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1600(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget v2, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mType:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    iget-object v2, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$200(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$200(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method
