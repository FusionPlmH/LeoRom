.class Lcom/samsung/android/emojiutil/EmojiUpdaterReceiver$1;
.super Ljava/lang/Thread;
.source "EmojiUpdaterReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/emojiutil/EmojiUpdaterReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/emojiutil/EmojiUpdaterReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/emojiutil/EmojiUpdaterReceiver;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/emojiutil/EmojiUpdaterReceiver$1;->this$0:Lcom/samsung/android/emojiutil/EmojiUpdaterReceiver;

    iput-object p2, p0, Lcom/samsung/android/emojiutil/EmojiUpdaterReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/emojiutil/EmojiUpdaterReceiver$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/emojiutil/EmojiUpdaterReceiver$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/emojiutil/EmojiUpdaterReceiver$1;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/emojiutil/EmojiUpdaterReceiver;->checkSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/emojiutil/EmojiUpdaterReceiver$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/emojiutil/EmojiUpdaterReceiver$1;->val$packageName:Ljava/lang/String;

    const-string v2, "SamsungColorEmoji.ttf"

    const-string v3, "/data/system/emojioverlay"

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/emojiutil/EmojiUpdaterReceiver;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/emojiutil/EmojiUpdaterReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emojiutil/EmojiUpdaterReceiver;->access$100(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/emojiutil/EmojiUpdaterReceiver;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive IOException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/samsung/android/emojiutil/EmojiUpdaterReceiver;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive PackageManager.NameNotFoundException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    nop

    :cond_1
    :goto_1
    return-void
.end method
