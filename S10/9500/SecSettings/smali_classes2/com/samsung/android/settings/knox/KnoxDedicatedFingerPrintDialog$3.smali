.class Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$3;
.super Ljava/lang/Object;
.source "KnoxDedicatedFingerPrintDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->getDialogBuilder()Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$3;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    const-string v0, "KnoxDedicatedFingerPrintDialog"

    const-string v1, "onKey: Home key pressed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$3;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$1000(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$3;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$1100(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$3;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$1000(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)V

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
