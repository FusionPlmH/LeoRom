.class Lcom/android/server/fingerprint/SemVisualEffectView$1;
.super Ljava/lang/Object;
.source "SemVisualEffectView.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/SemVisualEffectView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/SemVisualEffectView;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/SemVisualEffectView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/SemVisualEffectView$1;->this$0:Lcom/android/server/fingerprint/SemVisualEffectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView$1;->this$0:Lcom/android/server/fingerprint/SemVisualEffectView;

    invoke-static {v0}, Lcom/android/server/fingerprint/SemVisualEffectView;->access$000(Lcom/android/server/fingerprint/SemVisualEffectView;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView$1;->this$0:Lcom/android/server/fingerprint/SemVisualEffectView;

    invoke-static {v0}, Lcom/android/server/fingerprint/SemVisualEffectView;->access$000(Lcom/android/server/fingerprint/SemVisualEffectView;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView$1;->this$0:Lcom/android/server/fingerprint/SemVisualEffectView;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/SemVisualEffectView;->restoreRotationLock()V

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
