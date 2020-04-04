.class Landroid/mtp/VStorage$1;
.super Ljava/lang/Object;
.source "VStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/mtp/VStorage;->sendVObjAdd(ILandroid/mtp/VObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/VStorage;

.field final synthetic val$obj:Landroid/mtp/VObject;

.field final synthetic val$storeId:I


# direct methods
.method constructor <init>(Landroid/mtp/VStorage;Landroid/mtp/VObject;I)V
    .locals 0

    iput-object p1, p0, Landroid/mtp/VStorage$1;->this$0:Landroid/mtp/VStorage;

    iput-object p2, p0, Landroid/mtp/VStorage$1;->val$obj:Landroid/mtp/VObject;

    iput p3, p0, Landroid/mtp/VStorage$1;->val$storeId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v6

    iget-object v0, p0, Landroid/mtp/VStorage$1;->this$0:Landroid/mtp/VStorage;

    invoke-virtual {v0}, Landroid/mtp/VStorage;->getID()I

    move-result v1

    iget-object v0, p0, Landroid/mtp/VStorage$1;->val$obj:Landroid/mtp/VObject;

    iget v2, v0, Landroid/mtp/VObject;->mPid:I

    iget-object v0, p0, Landroid/mtp/VStorage$1;->val$obj:Landroid/mtp/VObject;

    iget v3, v0, Landroid/mtp/VObject;->mId:I

    iget-object v0, p0, Landroid/mtp/VStorage$1;->val$obj:Landroid/mtp/VObject;

    iget-object v4, v0, Landroid/mtp/VObject;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Landroid/mtp/VStorage$1;->val$obj:Landroid/mtp/VObject;

    iget-object v5, v0, Landroid/mtp/VObject;->mPath:Ljava/lang/String;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MTPJNIInterface;->sentVirtualObjectAdd(IIILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "VStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "storageid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/mtp/VStorage$1;->val$storeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " obj "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/mtp/VStorage$1;->val$obj:Landroid/mtp/VObject;

    iget-object v2, v2, Landroid/mtp/VObject;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " add"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VStorage"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
