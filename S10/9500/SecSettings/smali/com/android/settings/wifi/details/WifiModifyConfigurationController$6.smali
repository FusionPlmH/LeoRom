.class Lcom/android/settings/wifi/details/WifiModifyConfigurationController$6;
.super Ljava/lang/Object;
.source "WifiModifyConfigurationController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiModifyConfigurationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiModifyConfigurationController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiModifyConfigurationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiModifyConfigurationController$6;->this$0:Lcom/android/settings/wifi/details/WifiModifyConfigurationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiModifyConfigurationController$6;->this$0:Lcom/android/settings/wifi/details/WifiModifyConfigurationController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiModifyConfigurationController;->access$300(Lcom/android/settings/wifi/details/WifiModifyConfigurationController;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiModifyConfigurationController$6;->this$0:Lcom/android/settings/wifi/details/WifiModifyConfigurationController;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/details/WifiModifyConfigurationController;->access$700(Lcom/android/settings/wifi/details/WifiModifyConfigurationController;Ljava/lang/String;)V

    return-void
.end method
