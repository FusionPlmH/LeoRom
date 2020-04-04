.class Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$3;
.super Ljava/lang/Object;
.source "ConventionalModeBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;


# direct methods
.method constructor <init>(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$3;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$3;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$3;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v0}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$1100(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$3;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v1}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$600(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$3;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v2}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$1000(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$3;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v3}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$700(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$3;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v4}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$800(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/view/SemWindowManager;->setMaxAspectPackageRestartTask(Ljava/lang/String;IZI)V

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$3;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v0}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$1200(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$3;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v0}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$1400(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$3;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v1}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$500(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$3;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v1}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$500(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10400d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-static {}, Lcom/samsung/android/view/ConventionalModeBar;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AspectRatioController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChangeGuideToast: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$3;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v2}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$600(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$3;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v2}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$700(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " restartTaskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$3;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v2}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$800(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$3;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v0}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$900(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/-$$Lambda$ConventionalModeBar$ChangeGuide$3$LBu0-6m_hG9iXwPe8EkD3iDLFwk;

    invoke-direct {v1, p0}, Lcom/samsung/android/view/-$$Lambda$ConventionalModeBar$ChangeGuide$3$LBu0-6m_hG9iXwPe8EkD3iDLFwk;-><init>(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$3;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
