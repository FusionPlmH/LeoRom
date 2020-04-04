.class Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$1;
.super Landroid/os/Handler;
.source "MirrorLinkAppDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$1;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$1;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->access$000(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f121585

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$1;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->access$000(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f121584

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
