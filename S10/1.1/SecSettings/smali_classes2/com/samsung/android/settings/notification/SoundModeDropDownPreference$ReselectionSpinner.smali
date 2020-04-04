.class public Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$ReselectionSpinner;
.super Landroid/widget/Spinner;
.source "SoundModeDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReselectionSpinner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$ReselectionSpinner;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-direct {p0, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->access$302(Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;Z)Z

    return-void
.end method


# virtual methods
.method public setSelection(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$ReselectionSpinner;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$ReselectionSpinner;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$ReselectionSpinner;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->access$300(Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$ReselectionSpinner;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$ReselectionSpinner;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$ReselectionSpinner;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$ReselectionSpinner;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->access$302(Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;Z)Z

    return-void

    :cond_3
    :goto_0
    return-void
.end method
