.class Lcom/samsung/android/settings/deviceinfo/legal/Eula$1;
.super Landroid/os/Handler;
.source "Eula.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/legal/Eula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/legal/Eula;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula$1;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/Eula;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula$1;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/Eula;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->access$000(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula$1;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/Eula;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->access$000(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula$1;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/Eula;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->access$000(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula$1;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/Eula;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->access$002(Lcom/samsung/android/settings/deviceinfo/legal/Eula;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula$1;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/Eula;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->access$200(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula$1;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/Eula;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->access$100(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "[a-z]+:\\/\\/[^ \\n]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula$1;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/Eula;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->access$200(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v0, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    return-void
.end method
