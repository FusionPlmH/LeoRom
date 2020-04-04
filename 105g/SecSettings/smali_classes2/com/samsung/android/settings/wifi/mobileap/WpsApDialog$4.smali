.class Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;
.super Ljava/lang/Object;
.source "WpsApDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$state:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->val$state:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$5;->$SwitchMap$com$samsung$android$settings$wifi$mobileap$WpsApDialog$DialogState:[I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->val$state:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x8

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v2, 0x7f12077a

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->access$200(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->access$900(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->access$200(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->access$900(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    nop

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->access$1000(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
