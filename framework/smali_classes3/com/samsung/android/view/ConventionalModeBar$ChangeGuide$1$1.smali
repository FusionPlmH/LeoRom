.class Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1$1;
.super Ljava/lang/Object;
.source "ConventionalModeBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1$1;->this$1:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onClick$0(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1$1;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1$1;->this$1:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;

    iget-object v0, v0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v0}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$1100(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1$1;->this$1:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;

    iget-object v1, v1, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v1}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$600(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1$1;->this$1:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;

    iget-object v2, v2, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v2}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$1000(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1$1;->this$1:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;

    iget-object v3, v3, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v3}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$700(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1$1;->this$1:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;

    iget-object v4, v4, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v4}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$800(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/view/SemWindowManager;->setMaxAspectPackageRestartTask(Ljava/lang/String;IZI)V

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1$1;->this$1:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;

    iget-object v0, v0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v0}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$1200(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/view/ConventionalModeBar;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AspectRatioController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChangeGuidePopup: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1$1;->this$1:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;

    iget-object v2, v2, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v2}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$600(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1$1;->this$1:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;

    iget-object v2, v2, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v2}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$700(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " restartTaskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1$1;->this$1:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;

    iget-object v2, v2, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v2}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$800(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1$1;->this$1:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;

    iget-object v0, v0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v0}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$900(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/-$$Lambda$ConventionalModeBar$ChangeGuide$1$1$YRdiQfAosOY_4MfdBOtHHF4T_9A;

    invoke-direct {v1, p0}, Lcom/samsung/android/view/-$$Lambda$ConventionalModeBar$ChangeGuide$1$1$YRdiQfAosOY_4MfdBOtHHF4T_9A;-><init>(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
