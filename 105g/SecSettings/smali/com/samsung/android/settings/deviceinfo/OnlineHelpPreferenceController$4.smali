.class Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController$4;
.super Ljava/lang/Object;
.source "OnlineHelpPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController$4;->this$0:Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController$4;->this$0:Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->showOnlineHelpDialog()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
