.class Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$2;
.super Ljava/lang/Object;
.source "EthernetConfigDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->buildDialogContent(Landroid/content/Context;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->access$000(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->access$200(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/RadioButton;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setNextFocusDownId(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->access$200(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusUpId(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->access$200(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusUpId(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->access$100(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    return-void
.end method
