.class Landroid/mtp/VStorageCategory$1;
.super Ljava/lang/Object;
.source "VStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/mtp/VStorageCategory;->dbChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/VStorageCategory;


# direct methods
.method constructor <init>(Landroid/mtp/VStorageCategory;)V
    .locals 0

    iput-object p1, p0, Landroid/mtp/VStorageCategory$1;->this$0:Landroid/mtp/VStorageCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/mtp/VStorageCategory$1;->this$0:Landroid/mtp/VStorageCategory;

    iget-object v0, v0, Landroid/mtp/VStorageCategory;->mDbChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Landroid/mtp/VStorageCategory$1;->this$0:Landroid/mtp/VStorageCategory;

    invoke-static {v0}, Landroid/mtp/VStorageCategory;->access$000(Landroid/mtp/VStorageCategory;)V

    iget-object v0, p0, Landroid/mtp/VStorageCategory$1;->this$0:Landroid/mtp/VStorageCategory;

    invoke-static {v0}, Landroid/mtp/VStorageCategory;->access$100(Landroid/mtp/VStorageCategory;)V

    return-void
.end method
