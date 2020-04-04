.class Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerClipboardDataPasteEvent;
.super Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;
.source "SemClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/content/clipboard/SemClipboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerClipboardDataPasteEvent"
.end annotation


# instance fields
.field private mWeakOnPasteListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/content/clipboard/SemClipboardManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerClipboardDataPasteEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerClipboardDataPasteEvent;->mWeakOnPasteListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerClipboardDataPasteEvent;->mWeakOnPasteListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerClipboardDataPasteEvent;->mWeakOnPasteListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;->onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    goto :goto_0

    :cond_1
    const-string v1, "SemClipboardManager"

    const-string/jumbo v2, "mPasteListener is null"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string v0, "SemClipboardManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPaste mWeakOnPasteListener is null. mWeakOnPasteListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerClipboardDataPasteEvent;->mWeakOnPasteListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPasteListener(Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerClipboardDataPasteEvent;->mWeakOnPasteListener:Ljava/lang/ref/WeakReference;

    return-void
.end method
