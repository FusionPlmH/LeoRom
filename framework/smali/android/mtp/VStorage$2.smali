.class Landroid/mtp/VStorage$2;
.super Ljava/lang/Object;
.source "VStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/mtp/VStorage;->sendVObjRemove(ILandroid/mtp/VObject;)V
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

    iput-object p1, p0, Landroid/mtp/VStorage$2;->this$0:Landroid/mtp/VStorage;

    iput-object p2, p0, Landroid/mtp/VStorage$2;->val$obj:Landroid/mtp/VObject;

    iput p3, p0, Landroid/mtp/VStorage$2;->val$storeId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/VStorage$2;->this$0:Landroid/mtp/VStorage;

    invoke-virtual {v1}, Landroid/mtp/VStorage;->getID()I

    move-result v1

    iget-object v2, p0, Landroid/mtp/VStorage$2;->val$obj:Landroid/mtp/VObject;

    iget v2, v2, Landroid/mtp/VObject;->mPid:I

    iget-object v3, p0, Landroid/mtp/VStorage$2;->val$obj:Landroid/mtp/VObject;

    iget v3, v3, Landroid/mtp/VObject;->mId:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/mtp/MTPJNIInterface;->sentVirtualObjectRemove(III)V

    const-string v1, "VStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "storageid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/mtp/VStorage$2;->val$storeId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " obj "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/mtp/VStorage$2;->val$obj:Landroid/mtp/VObject;

    iget-object v3, v3, Landroid/mtp/VObject;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "VStorage"

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
