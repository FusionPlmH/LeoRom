.class Lcom/android/server/display/WFDUibcManager$1;
.super Landroid/database/ContentObserver;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WFDUibcManager;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WFDUibcManager;


# direct methods
.method constructor <init>(Lcom/android/server/display/WFDUibcManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v1}, Lcom/android/server/display/WFDUibcManager;->access$100(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "dexonpc_connection_state"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/WFDUibcManager;->access$002(Lcom/android/server/display/WFDUibcManager;I)I

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v0}, Lcom/android/server/display/WFDUibcManager;->access$000(Lcom/android/server/display/WFDUibcManager;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$1;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v0}, Lcom/android/server/display/WFDUibcManager;->access$200(Lcom/android/server/display/WFDUibcManager;)V

    :cond_0
    return-void
.end method
