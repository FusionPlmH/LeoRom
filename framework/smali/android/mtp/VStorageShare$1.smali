.class Landroid/mtp/VStorageShare$1;
.super Ljava/lang/Object;
.source "VStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/mtp/VStorageShare;->dbChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/VStorageShare;


# direct methods
.method constructor <init>(Landroid/mtp/VStorageShare;)V
    .locals 0

    iput-object p1, p0, Landroid/mtp/VStorageShare$1;->this$0:Landroid/mtp/VStorageShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Landroid/mtp/VStorageShare$1;->this$0:Landroid/mtp/VStorageShare;

    iget-object v0, v0, Landroid/mtp/VStorageShare;->mDbChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Landroid/mtp/VStorageShare$1;->this$0:Landroid/mtp/VStorageShare;

    iget-object v0, v0, Landroid/mtp/VStorageShare;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/VObject;

    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Landroid/mtp/VObject;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "VStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "share file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/mtp/VObject;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is removed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/mtp/VStorageShare$1;->this$0:Landroid/mtp/VStorageShare;

    iget-object v4, p0, Landroid/mtp/VStorageShare$1;->this$0:Landroid/mtp/VStorageShare;

    invoke-virtual {v4}, Landroid/mtp/VStorageShare;->getID()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/mtp/VStorageShare;->sendVObjRemove(ILandroid/mtp/VObject;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method
