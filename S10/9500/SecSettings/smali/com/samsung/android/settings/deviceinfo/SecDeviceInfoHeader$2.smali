.class Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$2;
.super Ljava/lang/Object;
.source "SecDeviceInfoHeader.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->initInfoChart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->access$000(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->access$000(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/CopyablePreference;->showCopyCompleteToast(Landroid/content/Context;)V

    const/4 v1, 0x1

    return v1
.end method
