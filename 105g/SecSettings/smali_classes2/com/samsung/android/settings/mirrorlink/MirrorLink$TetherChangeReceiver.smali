.class Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MirrorLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/mirrorlink/MirrorLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Lcom/samsung/android/settings/mirrorlink/MirrorLink$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    const-string v3, "connected"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->access$302(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    const-string v3, "configured"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->access$402(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    const-string v3, "ncm"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->access$502(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->access$602(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->access$700(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->access$602(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->access$700(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->access$300(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->access$800(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "usb_tethering_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->access$700(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->access$400(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->access$500(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->access$900(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "usb_tethering_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->access$500(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->access$000(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->access$500(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->access$000(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->access$700(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    :cond_7
    :goto_1
    return-void
.end method
