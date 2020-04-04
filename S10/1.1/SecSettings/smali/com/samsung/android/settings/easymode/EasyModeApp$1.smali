.class Lcom/samsung/android/settings/easymode/EasyModeApp$1;
.super Ljava/lang/Object;
.source "EasyModeApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/easymode/EasyModeApp;->initPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-virtual {v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1210

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$000(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$100(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "EasyModeApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick mPrevModeState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$200(Lcom/samsung/android/settings/easymode/EasyModeApp;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mModeState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$300(Lcom/samsung/android/settings/easymode/EasyModeApp;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v2}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$400(Lcom/samsung/android/settings/easymode/EasyModeApp;)Z

    move-result v2

    const-string v3, "EasyModeApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEasyLauncher : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$200(Lcom/samsung/android/settings/easymode/EasyModeApp;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$300(Lcom/samsung/android/settings/easymode/EasyModeApp;)I

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$500(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/app/ActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$600(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$200(Lcom/samsung/android/settings/easymode/EasyModeApp;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$300(Lcom/samsung/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$700(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$200(Lcom/samsung/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$300(Lcom/samsung/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$800(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$200(Lcom/samsung/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$300(Lcom/samsung/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$900(Lcom/samsung/android/settings/easymode/EasyModeApp;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v2, :cond_3

    if-nez v1, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$1000(Lcom/samsung/android/settings/easymode/EasyModeApp;Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$1100(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$200(Lcom/samsung/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$300(Lcom/samsung/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$900(Lcom/samsung/android/settings/easymode/EasyModeApp;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$1000(Lcom/samsung/android/settings/easymode/EasyModeApp;Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/samsung/android/settings/easymode/EasyModeApp;->access$1100(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
