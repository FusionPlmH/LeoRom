.class Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$1;
.super Landroid/database/ContentObserver;
.source "RecentsKeySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->access$000(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_split_screen_view_shortcut"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->access$100(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->access$100(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->access$200(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->access$300(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setEnabled(Z)V

    return-void
.end method
