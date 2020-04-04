.class Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "ShowKeyboardButtonPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController$1;->this$0:Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const-string v0, "ShowKeyboardButtonPreferenceController"

    const-string v1, "onChange called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController$1;->this$0:Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController;->access$000(Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_keyboard_button"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController$1;->this$0:Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController;->setChecked(Z)Z

    return-void
.end method
