.class Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$2;
.super Ljava/lang/Object;
.source "KnoxDedicatedFingerPrintDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->startRunnable()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$2;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$2;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$300(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$2;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$900(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$2;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$900(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$2;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$2;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$200(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120a36

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$500(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$2;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$900(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$2;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$900(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$2;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$900(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0803ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$2;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$2;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$200(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121a82

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$500(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
