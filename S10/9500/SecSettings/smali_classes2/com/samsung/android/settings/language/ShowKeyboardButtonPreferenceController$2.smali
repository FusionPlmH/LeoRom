.class Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController$2;
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

    iput-object p1, p0, Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController$2;->this$0:Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const-string v0, "ShowKeyboardButtonPreferenceController"

    const-string v1, "onChange called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController$2;->this$0:Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController;->access$100(Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_while_hidden"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController$2;->this$0:Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController;->access$200(Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v3

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    return-void
.end method
