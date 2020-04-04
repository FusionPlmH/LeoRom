.class Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;
.super Landroid/database/ContentObserver;
.source "UsefulFeatureHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->access$000(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->access$100(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "swipe_to_call_or_send_messages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->access$000(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->access$200(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->access$300(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->access$100(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "multi_window_setting"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->access$000(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->access$400(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->access$300(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_3
    :goto_2
    return-void
.end method
