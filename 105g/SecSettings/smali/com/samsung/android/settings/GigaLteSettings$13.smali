.class Lcom/samsung/android/settings/GigaLteSettings$13;
.super Ljava/lang/Object;
.source "GigaLteSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/GigaLteSettings;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GigaLteSettings;

.field final synthetic val$urspManager:Landroid/net/UrspManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GigaLteSettings;Landroid/net/UrspManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/GigaLteSettings$13;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/GigaLteSettings$13;->val$urspManager:Landroid/net/UrspManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$13;->val$urspManager:Landroid/net/UrspManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/net/UrspManager;->setUrspMode(IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$13;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings$13;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/GigaLteSettings;->access$300(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/GigaLteSettings;->access$700(Lcom/samsung/android/settings/GigaLteSettings;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$13;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaLteSettings;->access$300(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$13;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/GigaLteSettings;->showProgressDialog()V

    return-void
.end method