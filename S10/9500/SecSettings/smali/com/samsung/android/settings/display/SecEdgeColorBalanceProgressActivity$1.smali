.class Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$1;
.super Landroid/database/ContentObserver;
.source "SecEdgeColorBalanceProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$1;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$1;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$1;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sec_display_poc_application_complete"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$002(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;I)I

    const-string v0, "SecEdgeColorBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stpoc] ECB event Result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$1;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$000(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$1;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$000(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$1;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$100(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SecEdgeColorBalanceProgressActivity"

    const-string v1, "[stpoc] Force wait for shortPOC Model, So ignore complete message"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$1;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mPgBarHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$1;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    iget-object v2, v2, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mPgBarHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$1;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$200(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$1;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->finishReadEdgeColor()V

    :goto_0
    return-void
.end method
