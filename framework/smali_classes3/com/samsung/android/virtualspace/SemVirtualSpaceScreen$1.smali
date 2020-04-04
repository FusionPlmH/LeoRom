.class Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;
.super Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;
.source "SemVirtualSpaceScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;


# direct methods
.method constructor <init>(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-direct {p0}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppOrientationChanged(Lcom/samsung/android/virtualspace/IVSScreen;I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SemVirtualSpace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAppOrientationChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-static {v0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->access$300(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-static {v0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->access$300(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;->onAppOrientationChanged(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;I)V

    :cond_1
    return-void
.end method

.method public onBoundsChanged(Lcom/samsung/android/virtualspace/IVSScreen;Landroid/graphics/Rect;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SemVirtualSpace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBoundsChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-static {v0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->access$300(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-static {v0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->access$300(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;->onBoundsChanged(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public onClosed(Lcom/samsung/android/virtualspace/IVSScreen;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SemVirtualSpace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClosed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->access$202(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;Z)Z

    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-static {v0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->access$000(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$StateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-static {v0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->access$000(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$StateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-interface {v0, v1}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$StateListener;->onClosed(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)V

    :cond_1
    return-void
.end method

.method public onContentChanged(Lcom/samsung/android/virtualspace/IVSScreen;Z)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SemVirtualSpace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onContentChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-static {v0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->access$300(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-static {v0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->access$300(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;->onContentChanged(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;Z)V

    :cond_1
    return-void
.end method

.method public onIMETargetChanged(Lcom/samsung/android/virtualspace/IVSScreen;Z)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SemVirtualSpace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onIMETargetChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-static {v0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->access$300(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-static {v0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->access$300(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;->onIMETargetChanged(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;Z)V

    :cond_1
    return-void
.end method

.method public onLost(Lcom/samsung/android/virtualspace/IVSScreen;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SemVirtualSpace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-static {v0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->access$000(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$StateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-static {v0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->access$000(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$StateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-interface {v0, v1}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$StateListener;->onLost(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)V

    :cond_1
    return-void
.end method

.method public onOrientationChanged(Lcom/samsung/android/virtualspace/IVSScreen;I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SemVirtualSpace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOrientationChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-static {v0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->access$300(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-static {v0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->access$300(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;->onOrientationChanged(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;I)V

    :cond_1
    return-void
.end method

.method public onReady(Lcom/samsung/android/virtualspace/IVSScreen;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SemVirtualSpace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReady "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-static {v0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->access$000(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$StateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-static {v0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->access$100(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->access$102(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;Z)Z

    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-static {v0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->access$000(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$StateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-interface {v0, v1}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$StateListener;->onReady(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)V

    :cond_1
    return-void
.end method

.method public onTopTaskUpdated(Lcom/samsung/android/virtualspace/IVSScreen;I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SemVirtualSpace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTopTaskUpdated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-static {v0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->access$300(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-static {v0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;->access$300(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$1;->this$0:Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;->onTopTaskUpdated(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;I)V

    :cond_1
    return-void
.end method
