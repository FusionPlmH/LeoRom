.class Landroid/sec/clipboard/data/file/WrapFileClipData$1;
.super Ljava/lang/Object;
.source "WrapFileClipData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/sec/clipboard/data/file/WrapFileClipData;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/clipboard/data/file/WrapFileClipData;


# direct methods
.method constructor <init>(Landroid/sec/clipboard/data/file/WrapFileClipData;)V
    .locals 0

    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData$1;->this$0:Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData$1;->this$0:Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-static {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->access$000(Landroid/sec/clipboard/data/file/WrapFileClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData$1;->this$0:Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-static {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->access$000(Landroid/sec/clipboard/data/file/WrapFileClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData$1;->this$0:Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-static {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->access$000(Landroid/sec/clipboard/data/file/WrapFileClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->toSave()V

    :cond_0
    sget-boolean v1, Lcom/sec/android/clipboardprotection/Clipboardprotection;->SEP_LITE:Z

    if-nez v1, :cond_1

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/data/file/WrapFileClipData$1;->this$0:Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-static {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->access$100(Landroid/sec/clipboard/data/file/WrapFileClipData;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/sec/clipboard/util/FileHelper;->setClpUid(I)V

    :cond_1
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/data/file/WrapFileClipData$1;->this$0:Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-static {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->access$200(Landroid/sec/clipboard/data/file/WrapFileClipData;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/data/file/WrapFileClipData$1;->this$0:Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-static {v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->access$000(Landroid/sec/clipboard/data/file/WrapFileClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/sec/clipboard/util/FileHelper;->saveObjectFile(Ljava/lang/String;Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
