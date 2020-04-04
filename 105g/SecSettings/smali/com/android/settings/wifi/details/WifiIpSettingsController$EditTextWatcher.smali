.class Lcom/android/settings/wifi/details/WifiIpSettingsController$EditTextWatcher;
.super Ljava/lang/Object;
.source "WifiIpSettingsController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiIpSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/details/WifiIpSettingsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController$EditTextWatcher;->this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/details/WifiIpSettingsController;Lcom/android/settings/wifi/details/WifiIpSettingsController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/WifiIpSettingsController$EditTextWatcher;-><init>(Lcom/android/settings/wifi/details/WifiIpSettingsController;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController$EditTextWatcher;->this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->access$200(Lcom/android/settings/wifi/details/WifiIpSettingsController;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
