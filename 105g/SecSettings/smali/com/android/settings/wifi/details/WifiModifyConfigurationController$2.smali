.class Lcom/android/settings/wifi/details/WifiModifyConfigurationController$2;
.super Ljava/lang/Object;
.source "WifiModifyConfigurationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/details/WifiModifyConfigurationController;->showSoftKeyboardOnResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiModifyConfigurationController;

.field final synthetic val$focusedView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiModifyConfigurationController;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiModifyConfigurationController$2;->this$0:Lcom/android/settings/wifi/details/WifiModifyConfigurationController;

    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiModifyConfigurationController$2;->val$focusedView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiModifyConfigurationController$2;->val$focusedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiModifyConfigurationController$2;->val$focusedView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WifiModifyConfigurationController"

    const-string v2, "Caught showInputMethod Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
