.class public abstract Lcom/android/systemui/fingerprint/SemBaseView;
.super Ljava/lang/Object;
.source "SemBaseView.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field final TAG:Ljava/lang/String;

.field private mBinderToken:Landroid/os/IBinder;

.field mClassName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mH:Landroid/os/Handler;

.field private mHasPendingRemove:Z

.field final mHashCode:I

.field private mIsAlreadyAdded:Z

.field mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field mView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/fingerprint/SemBaseView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Landroid/view/WindowManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mHashCode:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemFingerprintMaskView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mHashCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mClassName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mWindowManager:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mBinderToken:Landroid/os/IBinder;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mH:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fingerprint/SemBaseView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mHasPendingRemove:Z

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "dismiss: Pending"

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/SemBaseView;->logi(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mHasPendingRemove:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mIsAlreadyAdded:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemBaseView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".dismiss: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public logd(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logi(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public show()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/fingerprint/SemBaseView;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mIsAlreadyAdded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/SemBaseView;->logd(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mIsAlreadyAdded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/fingerprint/SemBaseView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/SemBaseView$1;-><init>(Lcom/android/systemui/fingerprint/SemBaseView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mIsAlreadyAdded:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemBaseView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public updateViewLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemBaseView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
