.class Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$1;
.super Ljava/lang/Object;
.source "SoundModeDropDownPreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$1;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$1;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->access$000(Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$1;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->access$100(Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$1;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->access$100(Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$1;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->access$302(Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$1;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->access$000(Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$1;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->access$000(Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    return v1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onClick(): spinner is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
