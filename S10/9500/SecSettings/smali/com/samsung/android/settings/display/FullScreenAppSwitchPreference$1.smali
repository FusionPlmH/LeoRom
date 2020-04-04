.class Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference$1;
.super Ljava/lang/Object;
.source "FullScreenAppSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;

.field final synthetic val$switchView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference$1;->this$0:Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference$1;->val$switchView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference$1;->this$0:Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->access$000(Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;)Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference$1;->this$0:Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->access$000(Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;)Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference$1;->val$switchView:Landroid/view/View;

    check-cast v2, Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
