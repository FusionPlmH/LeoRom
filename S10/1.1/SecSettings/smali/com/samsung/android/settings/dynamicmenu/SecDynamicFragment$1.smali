.class Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;
.super Landroid/database/ContentObserver;
.source "SecDynamicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;->this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 7

    const-string v0, "SecDynamicFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;->this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/settings/widget/SecDynamicMenuInterface;

    invoke-interface {v2}, Lcom/samsung/android/settings/widget/SecDynamicMenuInterface;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;->this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->access$000(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;)Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;->getBundleFromKey(Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicMenuData;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/settings/external/DynamicMenuData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/samsung/android/settings/external/DynamicMenuData;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/samsung/android/settings/external/DynamicMenuData;->getEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v3}, Lcom/samsung/android/settings/external/DynamicMenuData;->getVisible()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    instance-of v4, v1, Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v4}, Landroid/support/v7/preference/SwitchPreferenceCompat;->isChecked()Z

    move-result v5

    invoke-virtual {v3}, Lcom/samsung/android/settings/external/DynamicMenuData;->getChecked()Z

    move-result v6

    if-eq v5, v6, :cond_0

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :cond_0
    instance-of v4, v1, Lcom/samsung/android/settings/widget/SecDynamicMenuInterface;

    if-eqz v4, :cond_1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/settings/widget/SecDynamicMenuInterface;

    invoke-virtual {v3}, Lcom/samsung/android/settings/external/DynamicMenuData;->getColorPrimaryDark()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/samsung/android/settings/widget/SecDynamicMenuInterface;->setSummaryColorPrimaryDark(Z)V

    :cond_1
    return-void
.end method
