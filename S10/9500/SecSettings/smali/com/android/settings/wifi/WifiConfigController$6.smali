.class Lcom/android/settings/wifi/WifiConfigController$6;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController$6;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const-string v0, "WifiConfigController"

    const-string v1, "OnFocusChangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$6;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$6;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->hideSoftKeyboard()V

    nop

    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a00aa -> :sswitch_1
        0x7f0a040c -> :sswitch_1
        0x7f0a04ca -> :sswitch_1
        0x7f0a05b7 -> :sswitch_0
        0x7f0a061f -> :sswitch_1
        0x7f0a0626 -> :sswitch_1
        0x7f0a06e8 -> :sswitch_1
        0x7f0a075e -> :sswitch_1
        0x7f0a090e -> :sswitch_1
        0x7f0a0910 -> :sswitch_1
        0x7f0a093f -> :sswitch_1
        0x7f0a0946 -> :sswitch_1
    .end sparse-switch
.end method
